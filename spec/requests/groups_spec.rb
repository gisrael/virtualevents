require 'spec_helper'

describe "Groups" do
  describe "GET /groups" do
    click_link "New Group"
    click_button "Create Group"
    error_message = "Name can't be blank"
    page.should have_content(error_message)
  end
end
