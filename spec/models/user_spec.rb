require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    visit new_user_registration_path

    fill_in 'user_email', with: "a@bc.com"
    fill_in 'user_password', with: "123456"
    fill_in 'user_password_confirmation', with: "123456"

    click_button 'Sign up'

  end
  
  
  
  
end
