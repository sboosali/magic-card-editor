{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE FlexibleContexts          #-}
{-# LANGUAGE TypeFamilies              #-}
module Magic.Core where
import Magic.Extra
import Magic.Types

import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine
--import Diagrams.Color.XKCD
import           Diagrams.Backend.CmdLine (readHexColor)

import Prelude.Spiros
import Data.Maybe

-- 63 x 88 mm
cardDiagram :: Diagram B
cardDiagram = mconcat
  [ mempty
  , roundedRect 4.6 0.5 0.1 # fc cBox
  , roundedRect 4.8 0.5 0.1 # fc cBox # translateY 3
  , roundedRect 1 0.5 0.3 # fc cBox # translate (V2 2 (-3.15))
  , roundedRect w h 0.3 # fc cCard -- blue
  ] 
 where
 w = 5
 h = 7

cBox = darkorange
cCard = blue

{-
file://../../card.svg

; C-x C-e
(my-iimage)

import System.Environment (withArgs)
:l Magic.Core
withArgs ["-o", "circle.svg", "-w", "250"] $ mainWith cardDiagram


-}
