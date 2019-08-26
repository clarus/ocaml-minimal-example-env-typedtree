# Minimal Example Env Typetree

Here is a minimal example about something I do not understand with the typed tree of the OCaml compiler: how to retrieve an environment from the OCaml AST. To get into the error:
```
make
```

Example tested with OCaml 4.05.0, but I cannot make this work with OCaml 4.07 either.

**Note:** the solution by [tefis](https://discuss.ocaml.org/u/trefis) is to first set the `cmt_loadpath` using `Config.load_path := cmt_loadpath;`; see https://discuss.ocaml.org/t/getting-the-environment-from-the-ast-in-cmt/4287
