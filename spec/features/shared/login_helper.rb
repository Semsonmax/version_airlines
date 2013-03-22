module LoginHelper
  def login_to_system(traveler)
    visit root_path
    click_link('Login')
    fill_in('Email', :with => traveler.email)
    fill_in('Password', :with => traveler.password)
    click_button('Start')
  end
end
