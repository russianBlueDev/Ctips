Use a package manager
=====================

  * compiler: Definitely install gcc; Clang may be available.
  * gdb, a debugger
  * Valgrind, to test for C memory usage errors.
  * gprof, a profiler.
  * make, so you never have to call your compiler directly.
  * pkg-config, for finding libraries.
  * Doxygen, for documentation generation.
  * A text editor: There are literally hundreds of text editors to choose from. Here are a few subjective recommendations:

Compiling C with here-document
==============================

From shell:
```
go_flags="-g -Wall -include allheaders.h -lm `pkg-config --cflags --libs glib-2.0`"
alias go_c="clang -xc '-' $go_flags"
```

and then:
```
go_c << EOF
Your c program
EOF
```

Compiling with make
===================

```make erf``` or ```P=list make```
