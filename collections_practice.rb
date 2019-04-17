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
  new_k1 = {keys[0].keys.to_a[0] => data.to_a[0].to_a[0][0]}
  new_d1 = new_keys_1.merge(d[0].values.to_a[0])
  new_k2 = {keys[1].keys.to_a[0] => data.to_a[0].to_a[1][0]}
  new_d2 = new_keys_2.merge(data[0].values.to_a[1])
 [new_data_1, new_data_2]
end
