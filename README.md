# OpenBlox client #
This the reference client implementation for the OpenBlox game engine.

## Status ##
We have not configured OpenBlox for continuous integration services, at this time.

## Documentation ##
OpenBlox uses Doxygen for documentation, which is not published at this time. We include a Doxyfile in the root directory of this repository.
We also have a 'docs' target in our Makefile, so you should be able to generate documentation by running `make docs`.

## Dependencies ##
Before OpenBlox can be compiled, these dependencies must be installed:
* Qt 5 qmake
* Qt 5 Core
* Qt 5 Gui
* Qt 5 Network (Optional)
* Qt 5 WebSockets (Optional)
* SDL 2
* OGRE 1.9
* OpenAL (Optional)
* ALUT (Optional; required if OpenAL is used)
* OpenSSL
* zlib
* libcurl
* Lua 5.3

## Troubleshooting ##
If you have any issues with OpenBlox, feel free to pop in on IRC, and we'll see what we can do. We're in the #OpenBlox channel, on Freenode.

## Compiling ##
Make sure that you've initialized submodules before attempting to compile the OpenBlox client.
Compiling OpenBlox should be as simple as `make all`, assuming you have the dependencies set up correctly. This will build OpenBlox in your default environment. On Windows, you will probably need to install MinGW, as OpenBlox is not officially compatible with MSVC.
