class Magazine
  attr_accessor :name, :category
  include ArticleMod
  @@all_magazines = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all_magazines << self
  end

  def self.all
    @@all_magazines
  end

  def mag_contributors
    ArticleMod.all.select{ |mag| mag.magazine.name == @name}
  end

  def contributors
    mag_contributors.map{ |cont| cont.author }.uniq
  end

  def self.find_by_name(name)
    @@all_magazines.find{ |mag| mag.name ==  name}
  end

  def mapped_articles
    @@all_articles.filter{|article| article.magazine.name == self.name}
  end

  def article_titles
    mapped_articles.map{|article| article.title}
  end

  def articles_in_magazine
    @@all_articles.filter{|article| article.magazine == self}
  end

  def contributing_authors
    author_list = []
    articles_in_magazine.map{ |article| article.author.name }.tally.each{|key, value| value > 2 && author_list << key}
    author_list
  end

end
