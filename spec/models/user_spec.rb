require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  subject { User.new(email: 'email@gmail.com', first_name: 'John', family_name: 'Jackson', password: '1234567890') }

  before { subject.save }

  it 'first_name must be present' do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it 'family_name must be present' do
    subject.family_name = nil
    expect(subject).to_not be_valid
  end

  it 'email must be present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'password must be present' do
    subject.password = nil
    expect(subject).to_not be_valid
  end
end