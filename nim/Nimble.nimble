name            = "dependency-injection-nim"
version         = "0.1.0"
author          = "epilif3sotnas <filipesantos1999@hotmail.com>"

description     = "Learn Dependency Injection in Nim."
license         = "Apache-2.0"

srcDir          = "src"
binDir          = "target"
bin             = @["main"]
backend         = "cpp"

requires "nim >= 1.6",
        "unittest2 >= 0"