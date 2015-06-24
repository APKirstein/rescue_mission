require 'rails_helper'

feature 'user answers a question', %Q{
  As a user
  I want to answer another user's question
  So that I can help them solve their problem
} do

  scenario 'user fills an answer form and submits it' do
    question = FactoryGirl.create(:question)

    visit question_path(question)

    fill_in "answer_body", with: "This is an answer"
    click_button "Submit Answer"

    expect(page).to have_content ("This is an answer")
  end
end
