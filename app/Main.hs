module Main (main) where

import Test.Hspec
import Test.QuickCheck
import qualified Data.Set as Set

data SpeakerPosition
  = SpeakerFrontLeft
  | SpeakerFrontRight
  | SpeakerFrontCenter
  | SpeakerLowFrequency
  | SpeakerBackLeft
  | SpeakerBackRight
  | SpeakerFrontLeftOfCenter
  | SpeakerFrontRightOfCenter
  | SpeakerBackCenter
  | SpeakerSideLeft
  | SpeakerSideRight
  | SpeakerTopCenter
  | SpeakerTopFrontLeft
  | SpeakerTopFrontCenter
  | SpeakerTopFrontRight
  | SpeakerTopBackLeft
  | SpeakerTopBackCenter
  | SpeakerTopBackRight
  deriving (Show, Read, Eq, Ord, Bounded, Enum)

instance Arbitrary SpeakerPosition where
  arbitrary = elements [minBound..maxBound]

main :: IO ()
main = hspec $
  it "demonstrates a bug" $ do
    property $ \xs -> do
      let x = Set.fromList (xs :: [SpeakerPosition])
          y = Set.fromList (Set.toList x)
      x `shouldBe` y
