class Imagetag < ActiveRecord::Base
  belongs_to :tag
  belongs_to :image
end
