Given /^opened "(.*)" page$/ do |url|
  visit url
end

Then /^I should see the current date$/ do
  page.should have_content(Date.today)
end

Then /^I should see the (KLO|OKKO) table$/ do |gasstation|

  case gasstation
    when 'KLO' then page.all("table#klo_prices tr").count.should == 10
    when 'OKKO' then page.all("table#okko_prices tr").count.should == 8
  end

end