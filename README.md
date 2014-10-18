#My sfml installer
##Install files for SFML in the linux labs

SFML is not installed by default in the Linux labs (IT1.11 and IT0.15).

To develop a project with SFML, you need to install it in your home
folder.

There is a need to solve some dependency issues though. This is what
those files are about.

You will eventually need to compile things in the labs in your own way,
say but using the command line and a Makefile or by using codeblocks or
some other way.

**Note**: this is heavily dependent on the versions of the softwares
used. At this point in time the supported versions are exclusively:

- GLEW 1.11
- cmake 3.0.2
- libsndfile 1.0.25
- SFML 2.1

---

This project contains:

```bash
install.sh # Install SFML and dependencies
clean.sh   # To reset your home folder.
main.cpp   # A small SFML demo that comes with the SFML documentation
compile.sh # compile the small SFML demo
```

##Where to go from here

You can explore how to make things work with SFML.

[Documentation](http://sfml-dev.org/tutorials/2.1/)
