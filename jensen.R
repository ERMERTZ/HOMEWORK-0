source("wrangle_library.r")
#https://stackoverflow.com/questions/19204729/how-to-change-factor-labels-into-string-in-a-data-frame
#library(pdftools)
#race<-pdf_text("jensen2020.pdf")%>% strsplit(split = "\n")
#race<-pdf_text("jensen2020.pdf") %>% readr::read_lines()
#race<-pdf_text("jensen2020.pdf")
race<-pdf_data("jensen2020.pdf")
class(race)
#pdf_toc("jensen2020.pdf")
#pdf_info("jensen2020.pdf")

page1<-race[1] %>% readr::read_lines()
page2<-race[2] %>% readr::read_lines() 
edit(page1)
is.data.frame(page1)#false
is.list(page1) #false
is.vector(page1) #true
is.character(page1)#true
is.matrix(page1)#false
is.factor(page1)#false



data.frame(page1)
is.data.frame(page1)#false
str_view(page1, "Girl")
ncol(page1)#NULL
dim(page1)#Null
nrow(page1)#NULL
page1
page2
page1[16] #even though nrow() returns NULL we can address a row
page1[36]
nrow(page1)
#asc(page1[8])

asc("\n")# this is a line feed
chr(32)# this is a space
a<-str_split_fixed(page1[8], "  ", 47)
b<-str_split_fixed(page1[9], "  ", 47)
c<-str_split_fixed(page1[10], "  ", 47)
d<-str_split_fixed(page1[11], "  ", 47)
newdf<-data.frame(rbind(a,b,c,d))
class(newdf)
View(newdf)
length(page1)# gives how many elements in Page1
page1.array<- array(1:141, dim=c(3,47))
page1.array[1,]
as.data.frame(page1.array)
length(page1.array)
is.data.frame(page1.array)
nrow(page1.array)
ncol(page1.array)
dataline.array<=array()
for (i in 10:12) {
#  page1_split[i]<- as.character(str_split_fixed(page1[i], "  ", 47))
  dataline<-(str_split_fixed(page1[i], "  ", 47))
  
  for (j in 1:47) {
    page1.array[i-9,j] <- dataline[,j]
  }
}
if (page1.array[,1]=="") {
  npage1.array <- page1.array[,-c(1)]
}

dim(page1.array)
page1.array[10,8] <- dataline[,8]



page1.array<-(str_split_fixed(page1[10], "  ", 47))
View(page1.array)
for (i in 8:48) cat(nchar(page1[i]), sep = "  ", i, "\n")
  

found<-grep("Girl",page1)
for (V1 in found) {
  print(V1)
  print(nchar(page1[V1]))
}

nchar(page1[31])


page1
str_detect(page2,"\n")
str_detect(page1,"\n")
r1<-str_split(page1,"\t")
r1<-str_split_fixed(r1,"\t", 15)
r1<-strsplit(r1,"\\t")
class(r1)

r1df<-data.frame(r1)
is.data.frame(r1df)
ncol(r1df)

nrow(r1df)
colnames(r1df)[1]<-"results"

write.table(r1df,"jensen.txt")
r1df

class(r1df)
r1df

as_tibble(r1df)
is_tibble(r1df)
r1<-str_split_fixed(page1,"\n", Inf) #r1 is a matrix
class(r1)
r1df<data.frame(lapply(r1, as.character))
class(r1df)
is.data.frame(r1)
names(r1df)
colnames(r1df)[1]<-"results"
r1df<-r1df[-c(1:7),]
class(r1df)
head(r1df)

r1dfsep<-separate(r1df,results," ", into= c("x1","x2","x3",
                                            "x4","x5","x6",
                                            "x7","x8","x9",
                                            "x10","x11","x12",
                                            "x13","x14","x15",x16))
ncol(r1)
nrow(r1)
r2<-str_split_fixed(page2,"\n", Inf) #r1 is a matrix
ncol(r2)
nrow(r2)

rd1<-data.frame(r1)
ncol(rd1)
nrow(rd1)
rd1$X8
names(rd1)
rd1T<-transpose(r1)
class(r2)
as.data.frame(r2)
r2 %>% gather()



str_detect(r1,"   ")

r2<-str_split_fixed(r2,"   ", Inf) #r1 is a matrix

nr2 <- edit(r2)
class(r1)
write.csv(r1,)

str(r1)
r1[8]
nr1 <- r1[8:10]
View(r1)

