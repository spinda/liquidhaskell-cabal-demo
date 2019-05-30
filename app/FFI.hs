import Foreign.C.Types

import Unchecked

{-@ embed CInt as int @-}
{-@ embed Integer as int @-}

{-@ assume c_foo :: x:{CInt | x > 0} -> IO {v:CInt | v = x} @-}
foreign import ccall unsafe "foo.c foo" c_foo
  :: CInt -> IO CInt

main :: IO ()
main = print =<< foo x

{-@ foo :: x:{Int | x > 0} -> IO Int @-}
foo :: Int -> IO Int
foo = fmap fromIntegral . c_foo . fromIntegral

