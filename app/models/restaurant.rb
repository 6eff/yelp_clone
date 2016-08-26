
class Restaurant < ActiveRecord::Base

  belongs_to :user, optional: true
  has_many :reviews, -> { extending WithUserAssociationExtension }, dependent: :destroy
  validates :name, length: { minimum: 3 }, uniqueness: true

end
