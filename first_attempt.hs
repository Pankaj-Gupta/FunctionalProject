import Network.HTTP.Conduit (simpleHttp)
import qualified Data.ByteString.Lazy.Char8 as L

-- the URL we're going to search
url = "http://www.facebook.com"

-- main http-conduit ko istamal kiya hai
main = L.putStrLn . L.take 1000 =<< simpleHttp url