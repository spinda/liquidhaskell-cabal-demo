
import Distribution.Simple
import LiquidHaskell.Cabal

data Choice = Simple | Post 

choice :: Choice 
choice = Post -- Simple

main :: IO () 
main = defaultMainWithHooks liquidHaskellHooks -- liquidHaskellMain 

{- main1 = case choice of 
  Simple -> defaultMainWithHooks $ liquidHaskellHooks
  Post   -> defaultMainWithHooks $ simpleUserHooks { postBuild = liquidHaskellPostBuildHook }
 -}
