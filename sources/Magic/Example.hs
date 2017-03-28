{-# OPTIONS_GHC -fno-warn-missing-signatures #-} -- to test inference
module Magic.Example where
import Magic
import System.Environment

import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine

{-|
@

stack build && stack exec -- example-magic-card-editor -o circle.svg -w 400 && open circle.svg

stack build && stack exec -- example-magic-card-editor -o circle.svg -w 250

@
-}
main :: IO ()
main = do
 getArgs >>= \case
  [] -> withArgs ["-o", "card.svg", "-w", "250"] main' -- TODO lol
  _ -> main'
--  main' arguments

main' = do
 putStrLn "(Magic.Example...)"
 mainWith cardDiagram

