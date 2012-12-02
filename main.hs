{-# LANGUAGE MultiWayIf #-}
import System.Environment
import System.Process

import GHC.Conc (atomically)
import Acme.Missiles.STM

main :: IO ()
main = do
  argv <- getArgs
  if | argv == ["of", "God"] -> go
     | otherwise             -> usage

usage :: IO ()
usage = mapM_ putStrLn
        [ "Usage: Wrath of God                (2)(λ)(λ)"
        , "Destroy all cabals. They can be reinstalled."
        ]

go :: IO ()
go = do
  atomically $ launchMissilesSTM
  mapM_ system
    [ "rm -rf ~/.ghc"
    , "ghc-pkg recache --user"
    ]
