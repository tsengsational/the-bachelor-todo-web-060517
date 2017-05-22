require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].find {|contestantData| contestantData["status"] == "Winner"}["name"].split[0]
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, array|
    array.each do |contestantData|
      return contestantData["name"] if contestantData["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counts = 0
  data.each do |season, array|
    array.each do |contestantData|
      town_count = contestantData["hometown"]
      counts += 1 if town_count == hometown
    end
  end
  counts
end


def get_occupation(data, hometown)
  # code here
  data.each do |season, array|
    array.each do |contestantData|
      return contestantData["occupation"] if contestantData["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  collectAge = data[season].collect {|contestantData| contestantData["age"]}
  sum = 0
  collectAge.each {|item| sum += item.to_i}
  (sum / collectAge.count.to_f).round
  
end
