class GroupEntity < ApplicationRecord
  belongs_to :group, class_name: 'Group', foreign_key: 'group_id'
  belongs_to :entity, class_name: 'Entity', foreign_key: 'entity_id'

  validates :group_id, presence: true
  validates :entity_id, presence: true
end
