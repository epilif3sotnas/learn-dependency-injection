# std
from setuptools import setup, find_packages

setup(
  name = "depency_injection_python",
  version = "0.1.0",
  author = "epilif3sotnas",
  author_email = "filipesantos1999@hotmail.com",
  maintainer = "epilif3sotnas",
  maintainer_email = "filipesantos1999@hotmail.com",

  url = "https://github.com/epilif3sotnas/learn-dependency-injection.git",
  description = "Learn Dependency Injection in Nim.",
  license = "Apache-2.0",

  packages = find_packages(),

  python_requires = ">=3.7",
  install_requires = []
)