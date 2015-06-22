require 'rails_helper'

feature 'users navigates to home page', %Q{
  As a user
  I want to view recently posted questions
  So that I can help others
} do

  scenario 'user visits view questions page' do
    q = Question.create!(
    title: "You did exactly what you had to do. You considered all your options, you tried every alternative and then you made the hard choice. Damage report! The unexpected is our normal routine. Computer, lights up! Ensign Babyface! When has justice ever been as simple as a rule book? They were just sucked into space.",
    description: "In all trust, there is the possibility for betrayal. I can't. As much as I care about you, my first duty is to the ship. How long can two people talk about nothing? I am your worst nightmare! I recommend you don't fire until you're within 40,000 kilometers. Mr. Worf, you do remember how to fire phasers? I suggest you drop it, Mr. Data. Congratulations - you just destroyed the Enterprise. Your shields were failing, sir. You enjoyed that. We finished our first sensor sweep of the neutral zone. When has justice ever been as simple as a rule book? Yes, absolutely, I do indeed concur, wholeheartedly! Your head is not an artifact! Fear is the true enemy, the only enemy. Sure. You'd be surprised how far a hug goes with Geordi, or Worf. Computer, lights up! Wouldn't that bring about chaos? Wait a minute - you've been declared dead. You can't give orders around here. We could cause a diplomatic crisis. Take the ship into the Neutral Zone The game's not big enough unless it scares you a little.")

    visit questions_path

    expect(page).to have_content(q.title)
    expect(page).to have_content(q.title)
  end

  scenario 'user sees questions ordered by time' do
    q = Question.create!(
    title: "You did exactly what you had to do. You considered all your options, you tried every alternative and then you made the hard choice. Damage report! The unexpected is our normal routine. Computer, lights up! Ensign Babyface! When has justice ever been as simple as a rule book? They were just sucked into space.",
    description: "In all trust, there is the possibility for betrayal. I can't. As much as I care about you, my first duty is to the ship. How long can two people talk about nothing? I am your worst nightmare! I recommend you don't fire until you're within 40,000 kilometers. Mr. Worf, you do remember how to fire phasers? I suggest you drop it, Mr. Data. Congratulations - you just destroyed the Enterprise. Your shields were failing, sir. You enjoyed that. We finished our first sensor sweep of the neutral zone. When has justice ever been as simple as a rule book? Yes, absolutely, I do indeed concur, wholeheartedly! Your head is not an artifact! Fear is the true enemy, the only enemy. Sure. You'd be surprised how far a hug goes with Geordi, or Worf. Computer, lights up! Wouldn't that bring about chaos? Wait a minute - you've been declared dead. You can't give orders around here. We could cause a diplomatic crisis. Take the ship into the Neutral Zone The game's not big enough unless it scares you a little.")
    q2 = Question.create!(
    title: "I can't. As much as I care about you, my first duty is to the ship. Now we know what they mean by 'advanced' tactical training. I'd like to think that I haven't changed those things, sir. Commander William Riker of the Starship Enterprise.",
    description: "In all trust, there is the possibility for betrayal. I can't. As much as I care about you, my first duty is to the ship. How long can two people talk about nothing? I am your worst nightmare! I recommend you don't fire until you're within 40,000 kilometers. Mr. Worf, you do remember how to fire phasers? I suggest you drop it, Mr. Data. Congratulations - you just destroyed the Enterprise. Your shields were failing, sir. You enjoyed that. We finished our first sensor sweep of the neutral zone. When has justice ever been as simple as a rule book? Yes, absolutely, I do indeed concur, wholeheartedly! Your head is not an artifact! Fear is the true enemy, the only enemy. Sure. You'd be surprised how far a hug goes with Geordi, or Worf. Computer, lights up! Wouldn't that bring about chaos? Wait a minute - you've been declared dead. You can't give orders around here. We could cause a diplomatic crisis. Take the ship into the Neutral Zone The game's not big enough unless it scares you a little.")
    q3 = Question.create!(
    title: "Some days you get the bear, and some days the bear gets you. They were just sucked into space. That might've been one of the shortest assignments in the history of Starfleet.",
    description: "In all trust, there is the possibility for betrayal. I can't. As much as I care about you, my first duty is to the ship. How long can two people talk about nothing? I am your worst nightmare! I recommend you don't fire until you're within 40,000 kilometers. Mr. Worf, you do remember how to fire phasers? I suggest you drop it, Mr. Data. Congratulations - you just destroyed the Enterprise. Your shields were failing, sir. You enjoyed that. We finished our first sensor sweep of the neutral zone. When has justice ever been as simple as a rule book? Yes, absolutely, I do indeed concur, wholeheartedly! Your head is not an artifact! Fear is the true enemy, the only enemy. Sure. You'd be surprised how far a hug goes with Geordi, or Worf. Computer, lights up! Wouldn't that bring about chaos? Wait a minute - you've been declared dead. You can't give orders around here. We could cause a diplomatic crisis. Take the ship into the Neutral Zone The game's not big enough unless it scares you a little.")
    q4 = Question.create!(
    title: "Ensign Babyface! Yes, absolutely, I do indeed concur, wholeheartedly! Commander William Riker of the Starship Enterprise. Travel time to the nearest starbase?",
    description: "In all trust, there is the possibility for betrayal. I can't. As much as I care about you, my first duty is to the ship. How long can two people talk about nothing? I am your worst nightmare! I recommend you don't fire until you're within 40,000 kilometers. Mr. Worf, you do remember how to fire phasers? I suggest you drop it, Mr. Data. Congratulations - you just destroyed the Enterprise. Your shields were failing, sir. You enjoyed that. We finished our first sensor sweep of the neutral zone. When has justice ever been as simple as a rule book? Yes, absolutely, I do indeed concur, wholeheartedly! Your head is not an artifact! Fear is the true enemy, the only enemy. Sure. You'd be surprised how far a hug goes with Geordi, or Worf. Computer, lights up! Wouldn't that bring about chaos? Wait a minute - you've been declared dead. You can't give orders around here. We could cause a diplomatic crisis. Take the ship into the Neutral Zone The game's not big enough unless it scares you a little.")

    visit questions_path

    expect(page.text.index(q2.title)).to be < page.text.index(q.title)
  end

end

feature 'user navigates to show page', %Q{
  As a user
  I want to view a question's details
  So that I can effectively understand the question
} do

  scenario 'user clicks on link to question' do
    q = Question.create!(
    title: "You did exactly what you had to do. You considered all your options, you tried every alternative and then you made the hard choice. Damage report! The unexpected is our normal routine. Computer, lights up! Ensign Babyface! When has justice ever been as simple as a rule book? They were just sucked into space.",
    description: "In all trust, there is the possibility for betrayal. I can't. As much as I care about you, my first duty is to the ship. How long can two people talk about nothing? I am your worst nightmare! I recommend you don't fire until you're within 40,000 kilometers. Mr. Worf, you do remember how to fire phasers? I suggest you drop it, Mr. Data. Congratulations - you just destroyed the Enterprise. Your shields were failing, sir. You enjoyed that. We finished our first sensor sweep of the neutral zone. When has justice ever been as simple as a rule book? Yes, absolutely, I do indeed concur, wholeheartedly! Your head is not an artifact! Fear is the true enemy, the only enemy. Sure. You'd be surprised how far a hug goes with Geordi, or Worf. Computer, lights up! Wouldn't that bring about chaos? Wait a minute - you've been declared dead. You can't give orders around here. We could cause a diplomatic crisis. Take the ship into the Neutral Zone The game's not big enough unless it scares you a little.")

    visit questions_path
    click_on(q.title)
    expect(page).to have_content(q.description)

  end

end
