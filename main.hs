import System.Process
main = mapM_ system ["rm -rf ~/.ghc", "ghc-pkg recache --user", "cabal update"]
