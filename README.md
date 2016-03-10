# liquidhaskell-cabal-demo

This is an example of a project set up with
[liquidhaskell-cabal](https://github.com/spinda/liquidhaskell-cabal). The most
useful information is in the setup of the
[`.cabal` file](/liquidhaskell-cabal-demo.cabal). You might also want to have a
look at the sample [`Setup.hs` file](/Setup.hs) (just two lines!) and the
[`stack.yaml` file](/stack.yaml).

To use LiquidHaskell at all, you'll need to have the LiquidHaskell binary
installed and available in `$PATH`, via one of:

```
stack install liquidhaskell # if you're using stack
cabal install liquidhaskell # if you're using Cabal directly
```

Cabal &lt;1.24 has no support for tracking build dependencies of `Setup.hs`
files, so until that comes out, if you're using Cabal directly, you'll also
need to install `liquidhaskell-cabal` manually before trying to build this
project.

```
cabal install liquidhaskell-cabal
```

If you're using stack, this is handled by the `explicit-setup-deps` and
`extra-deps` entries in this project's [`stack.yaml` file](/stack.yaml) and the
inclusion of `liquidhaskell-cabal` in each component's `build-depends` in the
[`.cabal` file](/liquidhaskell-cabal-demo.cabal).

Once everything is set up, this sample project can be built with one of:

```
stack build # if you're using stack
cabal build # if you're using Cabal directly
```

This will do a normal build without LiquidHaskell active. To build and verify
with LiquidHaskell, run one of:

```
stack build --flag liquidhaskell-cabal-demo:liquidhaskell # if you're using stack
cabal configure -fliquidhaskell && cabal build            # if you're using Cabal directly
```

