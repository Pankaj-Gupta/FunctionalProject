import Network.HTTP.Conduit (simpleHttp)
import Control.Monad
import qualified Data.ByteString.Lazy as BL
import qualified Data.ByteString as B
import Data.Text.Encoding
import qualified Data.Text as T
import qualified Data.String as S

-- the URL we're going to search
url = "http://www.facebook.com"

summonResponse :: String -> IO String
summonResponse url = liftM (T.unpack. decodeUtf8 . B.concat . BL.toChunks ) $ simpleHttp url

--something:: MonadIO m => m L.ByteString -> [Char]
--something url = 

main = do
	y <- summonResponse url
	print y