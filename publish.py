import htpy
import lilypond
import pathlib
import subprocess


def get_source_dir():
    return pathlib.Path("src").resolve()


def get_source_files():
    for file in get_source_dir().iterdir():
        if file.suffix == ".ly":
            yield file


def get_output_dir():
    output_dir = pathlib.Path("output").resolve()
    output_dir.mkdir(exist_ok=True)
    output_gitignore = output_dir / ".gitignore"
    output_gitignore.write_text("*\n", newline="\n")
    return output_dir


def generate_pdfs():
    output_dir = get_output_dir()

    output_files = []

    for file in get_source_files():
        print(f"Processing {file}")
        subprocess.check_call(
            [lilypond.executable(), f"--output={output_dir}", "--silent", file]
        )
        output_file = output_dir / file.with_suffix(".pdf").name
        print(f"Generated {output_file}")
        output_files.append(output_file)

    return output_files


def render_index(output_files: list[pathlib.Path]):
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


def main():
    render_index(generate_pdfs())


if __name__ == "__main__":
    main()
