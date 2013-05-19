require 'spec_helper'

describe "on the dashboard" do
  it "should show default data" do
    visit root_url

    page.should have_selector("[data-purpose='list']", text: "Home")
    page.should have_selector("[data-purpose='list']", text: "Work")
    page.should have_selector("[data-purpose='list']", text: "Play")
  end
end
