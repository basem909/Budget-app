require 'rails_helper'

RSpec.describe 'Categories', type: :request do
  before(:all) do
    Rails.application.load_seed
  end

  it 'is receiving an Ok response from the server' do
    get user_categories_path(user_id: 1)
    expect(response).to have_http_status(302)
  end

  it 'renders index template correctly' do
    get user_categories_path(user_id: 1)
    expect(response).not_to render_template('index')
  end
end
