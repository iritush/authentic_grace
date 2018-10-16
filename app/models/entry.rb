class Entry < ApplicationRecord
  has_attached_file :poster, styles: { medium: "200x200#" }
  validates_attachment_content_type :poster, content_type: /\Aimage\/.*\Z/

  belongs_to :user
  validates :user_id, presence: true
end
