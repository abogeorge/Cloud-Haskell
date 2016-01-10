module Paths_network_transport_tcp (
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
version = Version [0,4,2] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Users\\Abo\\AppData\\Roaming\\cabal\\bin"
libdir     = "C:\\Users\\Abo\\AppData\\Roaming\\cabal\\x86_64-windows-ghc-7.10.3\\network-transport-tcp-0.4.2-I6WBRdkCtATEoee9pVwhhb"
datadir    = "C:\\Users\\Abo\\AppData\\Roaming\\cabal\\x86_64-windows-ghc-7.10.3\\network-transport-tcp-0.4.2"
libexecdir = "C:\\Users\\Abo\\AppData\\Roaming\\cabal\\network-transport-tcp-0.4.2-I6WBRdkCtATEoee9pVwhhb"
sysconfdir = "C:\\Users\\Abo\\AppData\\Roaming\\cabal\\etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "network_transport_tcp_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "network_transport_tcp_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "network_transport_tcp_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "network_transport_tcp_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "network_transport_tcp_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
