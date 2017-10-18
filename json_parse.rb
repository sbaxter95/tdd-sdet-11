require 'json'
# json = File.read('json_example.json')
json = JSON.parse(File.read('json_example.json'))

# p json['colors'][2]['code']['hex']
p json['colors'][5]['code']['rgba']
