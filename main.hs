import System.Process
main :: IO ()
main = mapM_ system ["rm -rf ~/.ghc", "ghc-pkg recache --user", "cabal update"]
