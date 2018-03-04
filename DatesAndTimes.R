# Date classes
# Time is represented by POSIXct and POSIXlt class

# no of days since 1970-01-01
# time is stored as no of seconds since 1970-01-01

x <- as.Date("1970-01-01")
x
unclass(x)
unclass(as.Date("1970-01-02"))

?unclass


x <- Sys.time()
x

p <- as.POSIXlt(x)

names(unclass(p))
p$sec

# strptime function - formats string

