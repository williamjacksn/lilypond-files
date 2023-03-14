import pathlib
import subprocess

cwd = pathlib.Path().resolve()
print(f'Working in {cwd}')

for file in cwd.iterdir():
    if file.suffix == '.ly':
        subprocess.check_call(['lilypond', file])
