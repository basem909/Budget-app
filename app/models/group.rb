class Group < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true
  has_many :group_entities, dependent: :delete_all
  has_many :entities, through: :group_entities
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
end
