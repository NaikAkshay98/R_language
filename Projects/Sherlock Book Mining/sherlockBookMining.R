#install.packages("tidytext")
library("gutenbergr")
library("dplyr")
library("tidyr")
library("stringr")
library("tidytext")
sherlock_raw<- gutenberg_download(1661)

sherlock<-sherlock_raw%>%
  mutate(story=ifelse(str_detect(text,"ADVENTURE"),text,NA))%>%
  fill(story)%>%
  filter(story!="THE ADVENTURES OF SHERLOCK HOLMES")%>%
  mutate(story=factor(story,levels=unique(story)))

tidy_sherlock<-sherlock%>%
  mutate(line=row_number())%>%
  unnest_tokens(word,text)%>%
  anti_join(stop_words)%>%
  filter(word!="holmes")
  
  library("ggplot2")
tidy_sherlock%>%
  count(story,word,sort=TRUE)%>%
  bind_tf_idf(word,story,n)%>%
  group_by(story)%>%
  top_n(10)%>%
  ungroup%>%
  mutate(word=reorder(word,tf_idf))%>%
  ggplot(aes(word,tf_idf,fill=story))+
  geom_col(show.legend=FALSE)+
  facet_wrap(~story,scales="free")
  coord_flip()
