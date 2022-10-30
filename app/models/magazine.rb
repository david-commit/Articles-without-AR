class Magazine

  include MagazinesMod

  def self.all
    @@all_magazines
  end

  def contributors
    ArticleMod.all.filter{ |mag| mag.magazine.name == @name}
  end
  
  def self.find_by_name(name)
    @@all_magazines.find{|find| find.name == name}
  end

  def article_titles
    ArticleMod.all.filter{|article| article.magazine.name == @name}
  end
  
  def contributing_authors
    author_list = []
    appearance = article_titles.map{|tit| tit.author.name}
    appearance.tally.each{|key, value| value > 2 && author_list << key}
    return author_list
  end
  
end

