import os, sys
import simplejson 

ver = sys.version_info
print("python version is", ver)
if not (ver.major == 3 and ver.minor == 7):
  exit(1)
print(os.getenv('TEST_NUMBER'))

