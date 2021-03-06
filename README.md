# liquidhaskell-cabal-demo

*Demo of Liquid Haskell integration for Cabal and Stack.*

[![Hackage](https://img.shields.io/hackage/v/liquidhaskell-cabal-demo.svg)](https://hackage.haskell.org/package/liquidhaskell-cabal-demo)
[![Hackage-Deps](https://img.shields.io/hackage-deps/v/liquidhaskell-cabal-demo.svg)](http://packdeps.haskellers.com/feed?needle=liquidhaskell-cabal-demo)

## What's This?

This is a sample project set up with
[liquidhaskell-cabal](https://github.com/spinda/liquidhaskell-cabal). It includes:

- A [.cabal file](liquidhaskell-cabal-demo) configured for `liquidhaskell-cabal`, including custom
  LiquidHaskell flags for each component of the package.
- A [Setup.hs file](Setup.hs) file set up to hook `liquidhaskell-cabal` into the build process.

## Pre-Flight Setup

To use LiquidHaskell at all, you'll need to have the LiquidHaskell binary installed and available
in your $PATH, via one of:

```
stack install liquidhaskell # if you're using Stack
cabal install liquidhaskell # if you're using Cabal directly
```

(Please make sure you have a version &gt;= 0.6.0.0 installed.)

If you're using Cabal &lt;1.24, you'll need to install the `liquidhaskell-cabal` package manually
before trying to build this project, to make it available to the Setup.hs file.

```
cabal install liquidhaskell-cabal-0.2.1.0
```

Stack and Cabal &gt;=1.24 can automatically handle Setup.hs dependencies.

## Test Drive

Once everything is set up, this sample project can be built with one of:

```
stack build # if you're using Stack
cabal build # if you're using Cabal directly
```

This will do a normal build without LiquidHaskell active. To build and verify
with LiquidHaskell, run one of:

```
stack build --flag liquidhaskell-cabal-demo:liquidhaskell # if you're using Stack
cabal configure -fliquidhaskell && cabal build            # if you're using Cabal directly
```

## License

The `liquidhaskell-cabal-demo` sample project is licensed under the
[CC0 1.0 Universal Public Domain Dedication](LICENSE).

Helpful resources:

- [Creative Commons's CC0 summary](https://creativecommons.org/publicdomain/zero/1.0/)
- [Creative Commons's CC0 FAQ](https://wiki.creativecommons.org/wiki/CC0_FAQ)

### Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted for inclusion in
this work by you shall be licensed as above, without any additional terms or conditions.
