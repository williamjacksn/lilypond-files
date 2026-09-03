import argparse
import subprocess

import lilypond

parser = argparse.ArgumentParser()
parser.add_argument("file")
args = parser.parse_args()

subprocess.call(  # noqa: S603 -- The command is an argument list and never uses a shell.
    [lilypond.executable(), args.file]
)
