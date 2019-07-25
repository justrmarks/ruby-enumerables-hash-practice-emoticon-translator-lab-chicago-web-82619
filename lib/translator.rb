# require modules here
require "yaml"

def load_library(path)
  # code goes here
  file_hash = YAML.load_file(path)
  
  emoticon_lib = {
    get_meaning: file_hash.keys,
    get_emoticon: file_hash.values
  }
  return emoticon_lib
end

def get_japanese_emoticon(path, english_emoticon)
  # code goes here
  
  emoticon_lib = load_library(path)
  result = ""
  
  
  
  emoticon_lib.each do |(key, values)| 
    if values.include?(english_emoticon)
      result = values[1]
    end
    
  end
  
  if result == ""
    result = "Sorry, that emoticon was not found"
  end
    return result
  
end

def get_english_meaning(path, emoticon)
  # code goes here
  emoticon_lib = load_library(path)
  result = ""
  
  emoticon_lib.each do |pair| 
    if pair.values[1] == emoticon
      result = pair.keys[0].to_s
    end
    
    end
    
    if result == ""
      result = "Sorry, that emoticon was not found"
    end
    
    return result
      
end