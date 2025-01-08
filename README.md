# Verified Software Toolchain kit with `nix` and `dune`

## Steps

### 1. Install nix

This is a way of doing _isolated_ builds,

### 2. Enable flakes

The way to do do nix is with flakes, even though they're technically an experimental feature.

Type `nix develop` to start building the environment (dependencies, `$PATH`, everything). 

### 3. Install direnv and hook it into your shell

This is a convenience layer that just automatically runs `nix develop` every time you `cd` into this directory

### 4. `direnv allow`

This just tells direnv to look at the `.envrc` file and activate the environment specified there. 

### 5. `dune build`

This will build `fib.v` and `fib.vo` from `fib.c`, putting outputs in `_build` directory 

## Modifying the project

If you want to add another `c` file, you have to add it to `deps` and `targets` in `code/dune`. Search around other files like `theories/dune` and `dune-project` for things that may need to be updated. 
