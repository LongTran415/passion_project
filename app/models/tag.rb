class Tag < ActiveRecord::Base
  validates :name, format: { with: /#\w+/ }
  has_many :images, through: :imagetags, foreign_key: "image_id", class_name: 'Image'

  def self.tag_names_from_string(str)
    str.scan(/#\w+/).flatten
  end
end
