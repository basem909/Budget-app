class Group < ApplicationRecord

  validates :name, presence: true
  validates :icon, presence: true
  has_many :groupentities, dependent: :destroy
  has_many :entities, through: :group_entities
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'


end
