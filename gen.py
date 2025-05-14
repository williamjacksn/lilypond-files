import argparse
import lilypond
import subprocess

parser = argparse.ArgumentParser()
parser.add_argument("file")
args = parser.parse_args()

subprocess.call([lilypond.executable(), args.file])
