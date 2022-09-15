require 'rails_helper'

RSpec.describe 'Splashes', type: :request do
  before(:all) do
    Rails.application.load_seed
  end

  it 'is receiving an Ok response from the server' do
    get root_path
    expect(response).to have_http_status(200)
  end

  it 'renders index template correctly' do
    get root_path
    expect(response).to render_template('index')
  end
end
