##given a url, saves a file as rawdata in a directory called data using curl
webdownload <- function (url,dest) {
  if (!file.exists("data")) {
  dir.create("data")
  }
  setwd("data")
  download.file(url= url,
                destfile = dest,
                method = "curl")
  dateDownloaded <- date()
  return(dateDownloaded)
}