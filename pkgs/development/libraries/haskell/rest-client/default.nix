# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, aesonUtils, caseInsensitive, dataDefault
, exceptionTransformers, httpConduit, httpTypes, hxt
, hxtPickleUtils, monadControl, mtl, primitive, resourcet
, restTypes, tostring, transformersBase, uriEncode, utf8String
}:

cabal.mkDerivation (self: {
  pname = "rest-client";
  version = "0.4.0.5";
  sha256 = "11rsy9an7ck94ijafqd2ddichz0xgb01w2ybyg3iiwy5ckiy384s";
  buildDepends = [
    aesonUtils caseInsensitive dataDefault exceptionTransformers
    httpConduit httpTypes hxt hxtPickleUtils monadControl mtl primitive
    resourcet restTypes tostring transformersBase uriEncode utf8String
  ];
  meta = {
    description = "Utility library for use in generated API client libraries";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = with self.stdenv.lib.maintainers; [ aycanirican ];
  };
})
