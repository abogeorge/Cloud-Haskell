module Paths_distributed_process (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,5,5,1] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Users\\Abo\\AppData\\Roaming\\cabal\\bin"
libdir     = "C:\\Users\\Abo\\AppData\\Roaming\\cabal\\x86_64-windows-ghc-7.10.3\\distributed-process-0.5.5.1-LWqHvQSyM6S6HJUHaJiZkB"
datadir    = "C:\\Users\\Abo\\AppData\\Roaming\\cabal\\x86_64-windows-ghc-7.10.3\\distributed-process-0.5.5.1"
libexecdir = "C:\\Users\\Abo\\AppData\\Roaming\\cabal\\distributed-process-0.5.5.1-LWqHvQSyM6S6HJUHaJiZkB"
sysconfdir = "C:\\Users\\Abo\\AppData\\Roaming\\cabal\\etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "distributed_process_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "distributed_process_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "distributed_process_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "distributed_process_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "distributed_process_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
