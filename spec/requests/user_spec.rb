require 'rails_helper'

RSpec.describe 'Users', type: :request do
  before(:all) do
    Rails.application.load_seed
  end

  it 'is receiving an Ok response from the server' do
    get new_user_session_path
    expect(response).to have_http_status(200)
  end

  it 'renders new template correctly' do
    get new_user_session_path
    expect(response).to render_template('new')
  end
end
