require 'rails_helper'

RSpec.describe GroupEntity, type: :model do
  subject { GroupEntity.new(group_id: 1, entity_id: 1) }

  before { subject.save }

  it 'group_id must be present' do
    subject.group_id = nil
    expect(subject).to_not be_valid
  end

  it 'group_id must be a float greater or equal than zero' do
    subject.group_id = -1
    expect(subject).to_not be_valid
  end

  it 'entity_id must be present' do
    subject.entity_id = nil
    expect(subject).to_not be_valid
  end

  it 'entity_id must be a float greater or equal than zero' do
    subject.entity_id = -1
    expect(subject).to_not be_valid
  end
end
