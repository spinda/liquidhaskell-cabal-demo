module Unchecked where

import qualified Checked.X1

{-@ x :: {v:Int | v = 1} @-}
x :: Int
x = Checked.X1.x -- == 2
