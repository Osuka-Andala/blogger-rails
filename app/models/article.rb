class Article < ActiveRecord::Base
  has_many :comments

  has_many :taggings
  has_many :tags, through: :taggings


 #  def to_s
 #     name
 #   end
 # end

  def tag_list
  # tags.join(", ")
   self.tags.collect do |tag|
     tag.name
   end.join(", ")
  end

end
