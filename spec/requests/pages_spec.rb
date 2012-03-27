# encoding: utf-8
require 'spec_helper'


describe "Pages" do


  describe "Root page" do

    before { visit root_path }

    it "should have current date" do
      page.should have_content(Date.today.to_s)
    end

    it "should have Klo label" do
      page.should have_content("КЛО")
    end

    it "should have OKKO label" do
      page.should have_content("ОККО")
    end


    it "should have Klo table" do
      page.should have_selector('div', :class => 'klo_prices')
    end

    it "should have Okko table" do
      page.should have_selector('div', :class => 'okko_prices')
    end

    it "should have prices tables" do
      page.should have_selector('table', :class => 'datagrid')
      page.should have_selector('table', :count => 2)
    end

    it "should have Klo prices table" do
      page.should have_selector('table#klo_prices', :class => 'datagrid')
    end

    it "should have Klo prices table with rows" do
      puts page.all("table#klo_prices tr").count.should == 10
    end

    it "should have Okko prices table with rows" do
      puts page.all("table#okko_prices tr").count.should == 8
    end


  end
end
