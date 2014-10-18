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

##What should I do?

To obtain a copy of this project, in a terminal type:

```bash
$ git clone git@github.com:jcordry/my_sfml_installer.git my_sfml_installer
$ cd my_sfml_installer
$ ./install.sh
```

It should take a while!

Test that your installation was complete:

```bash
$ ./compile.sh && ./main
```

If your installation was successful, you should see a window that says "SFML
works!"

##Where is it all installed?

You should have a few more directories in your home folder:

```bash
# These two will be necessary for to compile against SFML
lib     # Where the libraries are installed!
include # Where the headers are installed!
# The rest might be useful (or not)
bin
doc
share
```

##Where to go from here

You can explore how to make things work with SFML in Linux with or without
codeblocks. Please follow:

[Documentation](http://sfml-dev.org/tutorials/2.1/)

Note that you will have to indicate your home lib and home include folders.
