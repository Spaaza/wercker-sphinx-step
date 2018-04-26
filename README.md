Sphinx step for Wercker
=========================
[![wercker status](https://app.wercker.com/status/3596ecd0024d2759dbb6bef619f60ce7/m "wercker status")](https://app.wercker.com/project/bykey/3596ecd0024d2759dbb6bef619f60ce7)

A [wercker](http://wercker.com/) step to compile a document by [Sphinx](http://www.sphinx-doc.org/).

Options
---------
- target: Make target. Default is `html`,
- basedir: directory path which has `Makefile` of Sphinx,
- packages: space-separated PyPi package names to be installed before running Sphinx,
- options: options for `make` command.

License
=========
This software is released under the MIT License, see [LICENSE](LICENSE). 
