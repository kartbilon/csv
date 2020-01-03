library(httr)
library(rvest)
library(RSelenium)

# 3.7초만큼 딜레이를 주는 코드
# testit <- function(x)
# {
#   p1 <- proc.time()
#   Sys.sleep(x)
#   proc.time() - p1 # The cpu usage should be negligible
# }
# testit(3.7)

remD <- remoteDriver(port = 4445, # 포트번호 입력 
                     browserName = "safari") #사용할 브라우저 

remD$open() 
remD$navigate("https://www.youtube.com/user/bokyemtv/videos")

remD$executeScript("window.scrollTo(0,100)")

testit <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}
testit(0.5)

remD$executeScript("window.scrollTo(100,200)")

testit <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}
testit(0.5)

remD$executeScript("window.scrollTo(200,300)")

testit <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}
testit(0.5)

remD$executeScript("window.scrollTo(300,400)")

testit <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}
testit(0.5)

remD$executeScript("window.scrollTo(400,500)")

testit <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}
testit(0.5)

remD$executeScript("window.scrollTo(500,600)")

testit <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}
testit(0.5)

remD$executeScript("window.scrollTo(600,700)")

testit <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}
testit(0.5)

remD$executeScript("window.scrollTo(700,800)")

testit <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}
testit(0.5)

remD$executeScript("window.scrollTo(800,900)")

testit <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}
testit(0.5)

remD$executeScript("window.scrollTo(900,1000)")

testit <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}
testit(0.5)

remD$executeScript("window.scrollTo(1000,1100)")

testit <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}
testit(0.5)

remD$executeScript("window.scrollTo(1100,1200)")

testit <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}
testit(0.5)

remD$executeScript("window.scrollTo(2400,2500)")

testit <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}
testit(0.5)

remD$executeScript("window.scrollTo(2600,2700)")

testit <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}
testit(0.5)

remD$executeScript("window.scrollTo(2800,2900)")

testit <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}
testit(0.5)

remD$executeScript("window.scrollTo(3000,3100)")

testit <- function(x)
{
  p1 <- proc.time()
  Sys.sleep(x)
  proc.time() - p1 # The cpu usage should be negligible
}
testit(0.5)


html <- remD$getPageSource()[[1]]
html <- read_html(html) 

youtube_title = c()
youtube_thumbnail = c()
youtube_url = c()

youtubevideo = "youtube.com"

title_css = "div#items a#video-title"
thumbnail_css ="div#items img#img"

title_node = html_nodes(html,title_css)
thumbnail_node = html_nodes(html, thumbnail_css)

title_part = html_text(title_node)
thumbnail_part = html_attr(thumbnail_node, "src")
url_part = html_attr(title_node, "href")
url_part2= paste0(youtubevideo,url_part )

title_part = title_part [1:100]
thumbnail_part = thumbnail_part [1:100]
url_part2 = url_part2 [1:100]

youtube_title = c(youtube_title,title_part)
youtube_thumbnail=c(youtube_thumbnail,thumbnail_part)
youtube_url = c(youtube_url,url_part2)

earloflemongrab31 = cbind(youtube_title, youtube_thumbnail,youtube_url) 
write.csv (earloflemongrab31,"/Users/hwanghyeon-u/Desktop/bk.csv", fileEncoding = "utf8")


