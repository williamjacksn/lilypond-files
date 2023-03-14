import jinja2
import pathlib
import subprocess


def get_source_dir():
    return pathlib.Path().resolve() / 'src'


def get_source_files():
    for file in get_source_dir().iterdir():
        if file.suffix == '.ly':
            yield file


def get_output_dir():
    output_dir = pathlib.Path().resolve() / 'output'
    output_dir.mkdir(exist_ok=True)
    return output_dir


def generate_pdfs():
    output_dir = get_output_dir()

    output_files = []

    for file in get_source_files():
        print(f'Processing {file}')
        subprocess.check_call(['lilypond', f'--output={output_dir}', '--silent', file])
        output_file = output_dir / file.with_suffix('.pdf').name
        print(f'Generated {output_file}')
        output_files.append(output_file)

    return output_files


def render_index(output_files: list[pathlib.Path]):
    jinja_env = jinja2.Environment(autoescape=jinja2.select_autoescape(['html']), keep_trailing_newline=True,
                                   loader=jinja2.FileSystemLoader('templates'), trim_blocks=True)
    index_template = jinja_env.get_template('index.html')
    index_rendered = index_template.render(output_files=output_files)
    output_index = get_output_dir() / 'index.html'
    with output_index.open('w') as f:
        f.write(index_rendered)


def main():
    render_index(generate_pdfs())


if __name__ == '__main__':
    main()
