@states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan'
}

@states[:WA] = 'Washington'
@states[:ID] = 'Boise'

@cities = {
  OR: ['Portland','Salem'],
  FL: ['Tampa','Miami'],
  CA: ['Los Angeles', 'San Francisco', 'Bakersville'],
  NY: ['New York', 'Albany', 'Buffalo'],
  MI: ['Detroit', 'Barton City'],
  WA: ['Seattle', 'Tacoma', 'Vancouver'],
  ID: ['Boise', 'Meridian']
}

def describe_state(state_code)  
  return "#{@states[state_code]} has these cities #{@cities[state_code]}"
end

describe_state(:CA)

@taxes = {
  OR: 5.0,
  FL: 7.0,
  CA: 8.5,
  NY: 6.5,
  MI: 9.0,
  WA: 5.0,
  ID: 7.0
}

def calculate_tax(state_code, amount)
  tax_amount = (@taxes[state_code] * amount).round(2)

  puts tax_amount
end

calculate_tax(:OR, 500)

def find_state_for_city(city_name)
  @cities.keys.find {|key| @cities[key].include? city_name}
end

puts find_state_for_city('Boise')

