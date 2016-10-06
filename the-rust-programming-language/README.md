# Didactics

Before to start learning `The Rust Programming Language`,  I created a Docker image based on `Ubuntu 16.04` and `Rust 1.12`, see [rust-16.04:1.12.0](https://hub.docker.com/r/pasquinis/rust-16.04/)

## Usage

Compile Rust code is simple, move under your `chapter-*` directory and launch this command:

```
   $ docker run -it -v $(pwd):/projects \
    pasquinis/rust-16.04:1.12.0 \
    rustc /projects/<rust-source-file.rs> --out-dir /projects
```
