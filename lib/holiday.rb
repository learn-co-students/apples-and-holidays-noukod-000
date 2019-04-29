require 'pry'


def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season,holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday,sup|
      ahs = holiday.to_s.split("_")
      ahs.each { |ahstring|
      ahstring.capitalize!  }
      puts"  #{ahs.join(' ')}: #{sup.join(', ')}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  [holiday_hash[:summer].keys[0],holiday_hash[:spring].keys[0]]
end
