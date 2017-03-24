{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE FlexibleContexts          #-}
{-# LANGUAGE TypeFamilies              #-}
module Magic.Core where
import Magic.Extra
import Magic.Types

import Diagrams.Prelude
import Diagrams.Backend.SVG.CmdLine

import Prelude.Spiros

-- 63 x 88 mm
cardDiagram :: Diagram B
cardDiagram = rect 5 7 & fc blue

