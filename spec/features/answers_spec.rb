require 'rails_helper'

feature 'user answers a question', %Q{
  As a user
  I want to answer another user's question
  So that I can help them solve their problem
} do

  scenario 'user fills an answer form and submits it' do
    visit question_path

    fill_in "Answer", with: answer.body
    click_button "Submit Answer"

    expect(page).to have_content (answer.body)
  end
end
