{-# OPTIONS_GHC -fno-warn-missing-signatures #-} -- to test inference
module Magic.Example where
import Magic()
import System.Environment

{-|
@
stack build && stack exec -- example-magic-card-editor
@
-}
main :: IO ()
main = do
 arguments <- getArgs >>= \case
  [s] -> return (s)
  _ -> return ("")
 mainWith arguments

main s = do
 putStrLn s
 putStrLn "(Magic.Example...)"

