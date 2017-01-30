## Extract rooms
rooms <- read.csv("EventsList-37.csv", stringsAsFactors = FALSE, na.strings="")
rooms <- rooms[complete.cases(rooms), ]
rooms$date <- as.Date(rooms$Start.Date, format = "%m/%d/%y")
rooms <- rooms[order(rooms$date), ]
rooms$dateChar <- as.character(rooms$date)

tas <- c("Cristiano", "Farag", "Edwards", "Lasater")
TAroom <- lapply(tas, function(ta) {
    use <- rooms[grepl(ta, rooms$Name), ]
    res <- use$Room
    names(res) <- use$dateChar
    return(res)
})
names(TAroom) <- c("Stephen", "Youssef", "Danielle", "Molly")
save(TAroom, file = "TAroom.Rdata")
