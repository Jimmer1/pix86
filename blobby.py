import subprocess, sys

oname = sys.argv[1] + ".bin"
# Compile to position independent executable
subprocess.run(["gcc", "-march=i386", "-mtune=generic", "-m32", "-O2", "-fPIE", "-ffreestanding", "-nostdlib", "-nostartfiles", sys.argv[1], "-o", oname])
# Strip it
subprocess.run(["strip", "--strip-all", oname])
# Dump to raw file
subprocess.run(["objcopy", "-O", "binary", "-j", ".text", oname, sys.argv[2]])
# Clean temporary file
subprocess.run(["rm", oname])