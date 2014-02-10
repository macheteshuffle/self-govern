require "spec_helper"

feature "curators can curate" do
  scenario "curator deletes prompt" do
    prompt = FactoryGirl.create(:prompt)
    curator = FactoryGirl.create(:curator)
    visit prompt_path(prompt)
    sign_in_as(curator)
    click_link "Delete"
    expect(page).to have_content("successfully deleted")
  end
  # scenario "non-curator attempts to delete prompt" do
  #   prompt = FactoryGirl.create(:prompt)
  #   invader = FactoryGirl.create(:user)
  #   visit prompt_path(prompt)
  #   sign_in_as(invader)
  #   expect(page).to_not have_content("Delete")
  # end
end