require 'rails_helper'

RSpec.describe Group, type: :model do
  subject { Group.new(name: 'mbc group', icon: 'phot.png', user_id: 1) }

  before { subject.save }

  it 'name must be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'icon must be present' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end

  it 'user_id must be present' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
end
