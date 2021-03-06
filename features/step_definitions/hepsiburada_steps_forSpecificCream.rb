Given(/^I am at hepsiburada login page$/) do
  visit('https://www.hepsiburada.com/ayagina-gelsin/giris')
end

When(/^I type username: "([^"]*)" and password: "([^"]*)"$/) do |username, password|
  # username = 'bernagokce92@gmail.com'
  # password = '12345678901
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
  page.should have_content('cream')
end

Given(/^I am at filtered page$/) do
  visit('http://www.hepsiburada.com/ara?q=cream')
  page.should have_content('cream')
end
#expect(page).to have_title "Dove Sıvı Sabun Cream Wash 500 ml".set cream

When(/^I choose cream in page$/) do
  click_link('Mustela Vitamin Barrier Cream 1.2.3 100 Ml - Bez Bölgesi Bakım Kremi')
end

Then(/^I am in this cream page$/) do
  page.should have_content('Mustela Vitamin Barrier Cream 1.2.3 100 Ml - Bez Bölgesi Bakım Kremi')
end

Given(/^I am at the chosen product webpage$/) do
  visit('http://www.hepsiburada.com/mustela-vitamin-barrier-cream-1-2-3-100-ml-bez-bolgesi-bakim-kremi-p-SGMUSTELA5847')
  page.should have_content('Sepete Ekle')
end

When(/^I click SepeteEkle button$/) do
  find('button.button.big.with-icon').click
end

Then(/^I am in Sepetim page$/) do
  page.should have_content('Sepetim')
  sleep 8
end

