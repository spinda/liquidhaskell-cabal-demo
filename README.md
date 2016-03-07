# liquidhaskell-cabal-demo

This is nearly complete, but:

- Right now your `liquid` binary needs to be built from my `ghc-options` branch
  on `ucsd-progsys/liquidhaskell`.
- Some more documentation is needed.
- `Setup.hs` dependencies won't make it into Cabal until 1.24, so the
  `Setup.hs` script in this project has all the code from `liquidhaskell-cabal`
  copied into it for now. Ideally it would be just two lines long:

  ```haskell
  import LiquidHaskell.Cabal
  main = liquidHaskellMain
  ```
- The current format of LiquidHaskell's output is rather noisy compared to the
  rest of the Cabal output.

To see it in action in its current state, run

```
stack build # if you're using stack
cabal build # if you're using Cabal
```

to build without LiquidHaskell active. Then (making sure you have the
LiquidHaskell binary installed), run

```
stack build --flag liquidhaskell-cabal-demo:liquidhaskell # for stack
cabal configure -fliquidhaskell && cabal build            # for Cabal
```

to build and verify with LiquidHaskell. Custom GHC options, extensions, C
source files, include directories, etc. will be passed to the LiquidHaskell
binary automatically. Check `liquidhaskell-cabal-demo.cabal` for an example of
the configuration.

