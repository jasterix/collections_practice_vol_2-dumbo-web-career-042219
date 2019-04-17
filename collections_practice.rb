# your code goes here
require 'pry'
def begins_with_r(elements)
  elements.all? do
    |i| i.start_with?"r" 
  end
end

#use select because using collect or map resulted in empty arrays with the main array
def contain_a(elements)
  elements.select do |i|
    has_a = []
    if i.chars.include?"a" 
      has_a.unshift(i)
    end
  end
end
#------------------------------------
#didn't work at first because of the symbol. So need to check for strings first
def first_wa(elements)
   elements.any? do |i|
    if i.class == String 
     if i.start_with?"wa"
    return i
    end
    end
  end
end

def remove_non_strings(elements)
  elements = elements.to_a
  string = []
  elements.each do |i|
    if i.class == String
      puts string.unshift(i)
    end
    return string
  end
end

def count_elements(elements)
  elements.group_by(&:itself).map do |key, value|
     key.merge({:count => value.length})
  end
end

def merge_data(keys, data)
  
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end


#------------------------------------ MEREGE DATA NOTES-------------------

# def merge_data(keys, data) #substitute profile, details for keys, data. profile is the person's snapshot, details is additional infoa about them. Keys just has their first name and motto
#   keys.each do |name_hash| #name_hash is their full bio. You're making the bio here
#     data.each do |hash|  #has each person's hash..name--> awesomeness, height, last name
#       name_hash.merge!(hash[name_hash[:first_name]]) #{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}
#       binding.pry
#     end
#   end
# end

#------------------------------------END OF MERGE DATA NOTES-------------------

def find_cool(cool)
  cool = cool.to_a
  cool.select{|i|
     i if i.values.include?"cool"
  }
end

#------------------------------------REVIEW ORGANIZE SCHOOLS------------------

# def organize_schools(schools)
#   puts schools.keys
  
#   puts schools.values
  
  
#   schools[location].values.group_by(&:itself)
# end

def organize_schools(schools)
  by_location = {}
    schools.each do |school, location_hash|
      # binding.pry
      location_hash.each do |symbol, location|
        if by_location[location] == nil
          by_location[location] = [school]
        else
          by_location[location] << school
        end
      end
    end
    by_location
  end
  