{-# LANGUAGE OverloadedStrings #-}

module Main where

import Render (defaultWindow, render)
import Shapes
import Web.Scotty

main :: IO ()
main = scotty 3000 $ do
  get "/" $ do
    html "Hello World"

-- exampleDrawing = [(scale (point 0.5 0.25) <+> translate (point 1.2 0.4), circle)]

-- main = render defaultWindow exampleDrawing