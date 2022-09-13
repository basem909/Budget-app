class Entity < ApplicationRecord
  validates :name, presence: true
  validates :author_id, presence: true
  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0, alert: 'Amount must be greater than 0' }
  has_many :group_entities, dependent: :destroy
  has_many :groups, through: :groupentities
  belongs_to :user, class_name: 'User', foreign_key: 'author_id'
end
