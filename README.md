RainyNite
=========

RainyNite is a free/libre software vector animation tool, currently in early
development.

This is a "meta-repository" containing all needed dependencies and parts as
submodules. Its only purpose is to simplify building RainyNite for users.

Building
--------

TODO: add detailed instructions

You can use `update_and_build.sh` script to automatically update this repo and
build RainyNite.

External dependencies
---------------------

- [qt](https://www.qt.io/)
- [Inkscape](https://inkscape.org/) - used to render SVG output of RainyNite "renderer"; can be replaced with other command line SVG renderer
- [boost](http://boost.org)

Build environment
-----------------

- git
- cmake
- ninja (used in `update_and_build.sh`, but you can replace it with `make`)
