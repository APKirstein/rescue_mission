# This will create a valid question object
FactoryGirl.define do
  factory :question do
    sequence(:title) { |n| ("this" * 20) + "#{n}" }
    sequence(:description) { |n| ("that" * 40) + "#{n}" }

    # title "I will obey your orders. I will serve this ship as First Officer. And in an attack against the Enterprise, I will die with this crew. But I will not break my oath of loyalty to Starfleet. Maybe we better talk out here; the observation lounge has turned into a swamp."
    # description "But the probability of making a six is no greater than that of rolling a seven. I'll alert the crew. I think you've let your personal feelings cloud your judgement. That might've been one of the shortest assignments in the history of Starfleet. My oath is between Captain Kargan and myself. Your only concern is with how you obey my orders. Or do you prefer the rank of prisoner to that of lieutenant? You're going to be an interesting companion, Mr. Data. You bet I'm agitated! I may be surrounded by insanity, but I am not insane. Earl Grey tea, watercress sandwiches... and Bularian canapés? Are you up for promotion? Worf, It's better than music. It's jazz."
  end
  # sequence(:email) {|n| "user#{n}@example.com"}
end
