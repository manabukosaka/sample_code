import argparse

parser = argparse.ArgumentParser()
parser.add_argument("--yyyymm", type=int)
parser.add_argument("--d", type=int)

args = parser.parse_args()
print(args.yyyymm, args.d)
