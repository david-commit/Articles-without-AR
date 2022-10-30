require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

author1 = Author.new("Author1") 
author2 = Author.new("Author2")
author3 = Author.new("Author3")

magazine1 = Magazine.new("Magazine1","Category1") 
magazine2 = Magazine.new("Magazine2","Category2") 
magazine3 = Magazine.new("Magazine3","Category3")


article1 = Article.new(author1,magazine1,"article title1")
article2 = Article.new(author2,magazine2,"article title2")
article3 = Article.new(author3,magazine3,"article title3")
article4 = Article.new(author3,magazine3,"article title4 in Magazine 3")
article5 = Article.new(author3,magazine3,"article title5 in Magazine 3")
article6 = Article.new(author2,magazine3,"article title6 in Magazine 2")
article7 = Article.new(author3,magazine3,"article title7 in Magazine 3")
article8 = Article.new(author2,magazine3,"article title8 in Magazine 3")

### DO NOT REMOVE THIS
binding.pry

0
