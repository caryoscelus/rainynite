RainyNite
=========

RainyNite is a free/libre software 2D vector animation tool in active development.

This is a "meta-repository" containing all needed dependencies and parts as
submodules. Its only purpose is to simplify building RainyNite for users.

Building
--------

TODO: add detailed instructions

You can use `update_and_build.sh` script to automatically update this repo and
build RainyNite.

External dependencies
---------------------

- [boost](http://boost.org)
- [qt](https://www.qt.io/)
- [KDE Frameworks][https://kde.org/]
- [Inkscape](https://inkscape.org/) - used to render SVG output of RainyNite "renderer"; can be replaced with other command line SVG renderer
- [ffmpeg](https://www.ffmpeg.org/) - optional, used for waveform & webm encoding
- [mpv](https://mpv.io/) - optional, used for "external player" action; can be replaced by other player supporting frame list playing

Other dependencies are bundled in this repository as submodules.

Build environment
-----------------

- git
- cmake
- ninja (used in `update_and_build.sh`, but you can replace it with `make`)
