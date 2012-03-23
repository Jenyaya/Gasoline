require 'spec_helper'


describe "Pages" do


  describe "GET /pages" do
    it "should have date" do
      get root_path
      page.should have_content('Here should be the prices on the current date')
    end
  end
end
