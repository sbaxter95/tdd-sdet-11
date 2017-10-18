skyscraper_ground_floor = {lobby: 'reception'}

# puts skyscraper_ground_floor[:lobby]

skyscraper_first_floor = {
  braindrugs: 'drugs',
  'aqualand' => {prod1: 'bubbles', #deprecated
  prod2: 'watergun'},
  "unicorns" => ['dreams', 'ice creams']
}

# skyscraper_first_floor.each do |key, value| #need to put two arguments in the pipe, otherwise it will only look at the key
#   puts key, value
# end

# puts skyscraper_first_floor.keys
# puts skyscraper_first_floor.values
puts skyscraper_first_floor['aqualand'][:prod1]
