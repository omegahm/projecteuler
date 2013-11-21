import Data.Time.Calendar
import Data.Time.Calendar.WeekDate

main = print no019

onlySundays (_, _, 7) = True
onlySundays         _ = False

no019 = length $ filter onlySundays [toWeekDate $ fromGregorian year month 1 | year <- [1901..2000], month <- [1..12]]
