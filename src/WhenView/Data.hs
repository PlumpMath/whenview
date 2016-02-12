module WhenView.Data
    ( Entry(..)
    , Timestamp(..)
    , Token(..)
    ) where

import Data.Hourglass (Date, TimeOfDay)
import qualified Data.Hourglass as H

data Timestamp = Timestamp { date      :: Date
                           , timeOfDay :: Maybe TimeOfDay
                           } deriving(Show)

data Entry = Entry { timestamp   :: Timestamp
                   , description :: String
                   } deriving(Show)

data Token = TMonth H.Month
           | TWeek
           | TDay H.WeekDay
           | TItem (Maybe TimeOfDay) String
           deriving(Show)
