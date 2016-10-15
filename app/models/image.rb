class Image < ActiveRecord::Base
  include Paperclip::Glue

  has_attached_file :data, styles: {
    medium: "300x300>",
    large: "600x600>"
  },
  path: "public/uploads/:attachment/:id/:style/:basename.:extension",
  url: "/uploads/:attachment/:id/:style/:basename.:extension"

  validates_attachment_content_type :data, content_type: /\Aimage\/.*\z/

  belongs_to :portflio
end
