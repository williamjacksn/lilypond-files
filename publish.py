import pathlib
import subprocess
from collections.abc import Iterator

import htpy
import lilypond


def get_source_dir() -> pathlib.Path:
    return pathlib.Path("src").resolve()


def get_source_files() -> Iterator[pathlib.Path]:
    for file in get_source_dir().iterdir():
        if file.suffix == ".ly":
            yield file


def get_output_dir() -> pathlib.Path:
    output_dir = pathlib.Path("output").resolve()
    output_dir.mkdir(exist_ok=True)
    output_gitignore = output_dir / ".gitignore"
    output_gitignore.write_text("*\n", newline="\n")
    return output_dir


def generate_pdfs() -> list[str]:
    output_dir = get_output_dir()

    output_files = []

    for file in sorted(get_source_files()):
        print(f"Processing {file}")
        subprocess.check_call(  # noqa: S603 -- Local paths are passed without a shell.
            [lilypond.executable(), f"--output={output_dir}", "--silent", file]
        )
        output_file = output_dir / file.with_suffix(".pdf").name
        print(f"Generated {output_file}")
        output_files.append(output_file)

    return output_files


def render_index(output_files: list[pathlib.Path]) -> None:
    index_rendered = htpy.html(lang="en")[
        htpy.head[
            htpy.title["LilyPond files"],
            htpy.meta(charset="utf-8"),
            htpy.meta(name="viewport", content="width=device-width, initial-scale=1"),
        ],
        htpy.body[
            htpy.ul[(htpy.li[htpy.a(href=p.name)[p.name]] for p in output_files)]
        ],
    ]
    output_index = get_output_dir() / "index.html"
    output_index.write_text(str(index_rendered))


def main() -> None:
    render_index(generate_pdfs())


if __name__ == "__main__":
    main()
