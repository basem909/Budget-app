require 'rails_helper'


RSpec.describe Entity, type: :model do
subject { Entity.new(name: 'movies', amount: 2, author_id: 1) }

  before { subject.save }

  it 'name must be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'amount must be a float greater or equal than zero' do
    subject.amount = -1
    expect(subject).to_not be_valid
  end

  it 'author_id must be present' do
    subject.author_id = nil
    expect(subject).to_not be_valid
  end

end
