# your code goes here
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
