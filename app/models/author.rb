class Author 
  attr_reader :name
  include MagazinesMod
  include ArticleMod

  def initialize(name)
    @name = name
  end

  def articles
    @@all_articles.filter{|art| art.author.name == self.name}
  end

  def magazines
    articles.map{|mag|mag.magazine}.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.map{|article| article.category}
  end

end
