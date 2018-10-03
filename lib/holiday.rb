require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season_key, holiday|
    holiday.each do |holiday_key, item|
      if holiday_key == :christmas || holiday_key == :new_years 
        item << supply
#holiday_hash[:winter][:christmas] << supply
#holiday_hash[:winter][:new_years] << supply
end
end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash.each do |season_key, holiday|
  holiday.each do |holiday_key, item|
    if holiday_key == :memorial_day
      item << supply 
    end
  end
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = []
holiday_hash.each do |season_key, holiday|
  if season_key == :winter
  holiday.each do |holiday_key, supply|
    supplies << supply
  end
end
end
supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_splt = []
holiday_hash.each do |season_key, holiday|
  puts "" + season_key.to_s.capitalize + ":"
 
  holiday.each do |holiday_key, supply|
    holiday_splt = holiday_key.to_s.split("_")
    holiday_splt.each {|word| word.capitalize!}
    
    puts "  " + holiday_splt.join(" ") + ": " + supply.join(", ")
    #supply.each do |item|
      #item.split.capitalize
      #item.join 
      #puts item
    #end
end
end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_w_bbq = []
holiday_hash.each do |season_key, holiday|
  holiday.each do |holiday_key, supply|
    supply.each do |item|
      if item == "BBQ"
        holidays_w_bbq << holiday_key 
      end
    end
  end
end
    holidays_w_bbq
end