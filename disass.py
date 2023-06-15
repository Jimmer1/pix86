import subprocess, sys, os

fptr = open(sys.argv[2], "w")

# binarise file
subprocess.run([os.path.expanduser("~/binfw/binfw"), sys.argv[1], sys.argv[1] + '.bin'])
# disassemble and write to file argv[2]
subprocess.run(["objdump", "-M", "intel", "-b", "binary", "-D", "-m", "i386", sys.argv[1] + ".bin"], stdout=fptr)
# clean temporary file
subprocess.run(["rm", sys.argv[1] + ".bin"])