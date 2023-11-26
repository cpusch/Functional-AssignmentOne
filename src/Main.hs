{-# LANGUAGE OverloadedStrings #-}

module Main where

import Control.Monad.IO.Class (MonadIO (liftIO))
import Render (defaultWindow, render)
import Shapes
import Web.Scotty

-- main :: IO ()
main :: IO ()
main = scotty 3000 $ do
  get "/" $ do
    html "hello"

  get "/circle" $ do
    liftIO $ render "output.png" defaultWindow cir

  get "/square" $ do
    liftIO $ render "square.png" defaultWindow sq
  where
    sq = [(scale (point 0.5 0.5), square)]
    cir = [(scale (point 0.5 0.5), circle)]