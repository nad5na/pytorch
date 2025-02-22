# Only used for PyTorch open source BUCK build
# @lint-ignore-every BUCKRESTRICTEDSYNTAX
# @lint-ignore-every FBCODEBZLADDLOADS

def fb_python_binary(**kwgs):
    if read_config("pt", "is_oss", "0") == "0":
        fail("This file is for open source pytorch build. Do not use it in fbsource!")

    python_binary(**kwgs)
