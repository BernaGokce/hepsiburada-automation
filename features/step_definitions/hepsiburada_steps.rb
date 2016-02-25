Given(/^I am at hepsiburada login page$/) do
  visit('https://www.hepsiburada.com/ayagina-gelsin/giris')
end

When(/^I type username: "([^"]*)" and password: "([^"]*)"$/) do |username, password|
  # username = 'bernagokce@gmail.com'
  # password = '1dfsfdg3'
  # fill_in"email_input", :with => username
  # fill_in"password_input", :with => password
  # click_button "Giriş"
  find($login_page['email_input']).set username
  find($login_page['password_input']).set password
  find($login_page['login_button']).click

end

Then(/^I am at hepsiburada page$/) do
  sleep 8
end

Given(/^I am at homepage$/) do
  visit('http://www.hepsiburada.com/')
  page.should have_content('Siparişlerim')
end

When(/^I type search:"([^"]*)" in search field$/) do |cream|
  find('#productSearch').set cream
  find('#buttonProductSearch').click
end

Then(/^I am in filtered page$/) do
  sleep 8
  page.should have_content('cream')
end

#expect(page).to have_title "Dove Sıvı Sabun Cream Wash 500 ml".set cream

Given(/^I am at filtered page$/) do
  visit('http://www.hepsiburada.com/ara?q=cream')
  page.should have_content('cream')
end

When(/^I choose cream which are greater than (\d+)$/) do

  all('a').each { |a| a['div.price.product-price'] }.should be >25.click
  #page.find('div.price.product-price input[type=file]').should be > 25.click
end

Then(/^I am in cream page$/) do
  page.should have_content('25')
  sleep 8
end

