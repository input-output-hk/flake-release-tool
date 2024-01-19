{-# LANGUAGE DerivingStrategies         #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Util where

import Data.Coerce
import Data.Text

newtype ReleaseId = ReleaseId Text
  deriving newtype (Eq, Ord, Show)

renderReleaseId :: ReleaseId -> Text
renderReleaseId = coerce
