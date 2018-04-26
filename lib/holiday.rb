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
  holiday_hash[:winter].each do |holiday, supplies|
   supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].collect do |holiday, supplies|
   supplies
  end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    season_string = season.to_s
     season_string.capitalize!
      puts "#{season_string}:"
       holidays.each do |holiday, supplies|
         holiday_string = holiday.to_s
          holiday_array = holiday_string.split('_')
           holiday_array.each do |word|
            word.capitalize!
  end
     new_holiday_string = holiday_array.join(" ")

     supply_string = supplies.join(", ")
      puts "  #{new_holiday_string}: #{supply_string}"
   end
  end
 end


def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
   holidays.map do |holiday, supplies|
    holiday if supplies.include?("BBQ")
  end
 end.flatten.compact
end
