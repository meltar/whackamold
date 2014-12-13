namespace :db do
	desc "Add sample data to db"
	task populate: :environment do
		add_high_scores
	end
end

def add_high_scores
	40.times do |scores|
		name = "#{Faker::Name.first_name}"
		score = [*1..1000].sample
		Game.create(name: name, score: score)
	end
end

