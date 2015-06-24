require 'rails_helper'

feature 'users navigates to home page', %Q{
  As a user
  I want to view recently posted questions
  So that I can help others
} do

  scenario 'user visits view questions page' do
    question = FactoryGirl.create(:question)

    visit questions_path

    expect(page).to have_content(question.title)
  end

  scenario 'user sees questions ordered by time' do
    question = FactoryGirl.create(:question)
    q2 = FactoryGirl.create(:question)


    visit questions_path

    expect(page.text.index(q2.title)).to be < page.text.index(question.title)
  end

end

feature 'user navigates to show page', %Q{
  As a user
  I want to view a question's details
  So that I can effectively understand the question
} do

  scenario 'user clicks on link to question' do
    question = FactoryGirl.create(:question)

    visit questions_path

    click_on(question.title)
    expect(page).to have_content(question.description)

  end

end

feature 'user posts a question', %Q{
  As a user
  I want to post a question
  So that I can receive help from others
} do

  scenario 'user fills out a question form and submits it' do
    visit "/questions/new"

    question = FactoryGirl.create(:question)

    fill_in "Title", with: question.title
    fill_in "Description", with: question.description
    click_button "Submit Question"

    expect(page).to have_content("Questions")
  end
end

# As a user
# I want to edit a question
# So that I can correct any mistakes or add updates
#
# Acceptance Criteria
#
# - I must provide valid information
# - I must be presented with errors if I fill out the form incorrectly
# - I must be able to get to the edit page from the question details page


feature 'user edits a question', %Q{
  As a user
  I want to edit a question
  So that I can correct any mistakes or add updates
} do

  scenario 'user edits the submitted question' do
    question = FactoryGirl.create(:question)

    visit question_path(question)
    click_link "Update Question"
    fill_in "Title", with: question.title
    fill_in "Description", with: question.description
    click_button "Submit Question"


    expect(page).to have_content(question.title)

  end
end
