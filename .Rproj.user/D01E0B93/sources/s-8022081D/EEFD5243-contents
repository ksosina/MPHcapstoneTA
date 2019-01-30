# #### 2017
# ## Extract rooms
# rooms <- read.csv("EventsList-37.csv", stringsAsFactors = FALSE, na.strings="")
# rooms <- rooms[complete.cases(rooms), ]
# rooms$date <- as.Date(rooms$Start.Date, format = "%m/%d/%y")
# rooms <- rooms[order(rooms$date), ]
# rooms$dateChar <- as.character(rooms$date)
# 
# tas <- c("Cristiano", "Farag", "Edwards", "Lasater")
# TAroom <- lapply(tas, function(ta) {
#     use <- rooms[grepl(ta, rooms$Name), ]
#     res <- use$Room
#     names(res) <- use$dateChar
#     return(res)
# })
# names(TAroom) <- c("Stephen", "Youssef", "Danielle", "Molly")
# save(TAroom, file = "TAroom.Rdata")
# 
# 
# #### 2018
# library(readxl)
# library(dplyr)
# #rooms <- read_excel("2018 Capstone office hours - 01252018.xlsx")
# rooms <- read_excel("report - capstone TA hours revised.xlsx")
# rooms <- rooms %>% filter(complete.cases(rooms))
# rooms <- rooms %>% mutate(date=as.Date(`Start Date`, format="%m/%d/%y"))
# rooms <- rooms %>% arrange(date)
# 
# tas <- c("Cristiano", "Johns", "Penaloze", "Lee", "Tormohlen")
# TAroom <- lapply(tas, function(ta) {
#   use <- rooms[grepl(ta, rooms$Name), ]
#   res <- use$Room
#   names(res) <- as.character(use$date)
#   return(res)
# })
# names(TAroom) = c("Stephen", "Jordan", "Daniel", "Hojoon", "Kayla")
# save(TAroom, file = "TAroom.Rdata")



#### 2019 (Update 1/29/2019)
library(readxl)
library(dplyr)
#rooms <- read_excel("report - MPH Capstone TA office hours - revised.xlsx")
rooms <- read_excel("report - MPH Capstone TA office hours updated Daniel wednesdays.xlsx")
rooms <- rooms %>% filter(complete.cases(rooms))
rooms <- rooms %>% mutate(date=as.Date(`Date`, format="%m/%d/%Y", tz="America/New_York"))
rooms <- rooms %>% arrange(date)

tas <- c("Kundu", "Sosina", "Antiporta", "Lee", "Tormohlen", "Baker") 
TAroom <- lapply(tas, function(ta) {
  use <- rooms[grepl(ta, rooms$Name), ]
  res <- use$Room
  names(res) <- as.character(use$date)
  return(res)
})
names(TAroom) = c("Prosenjit", "Kayode", "Daniel", "Hojoon", "Kayla", "Kellan") 
save(TAroom, file = "TAroom.Rdata")
