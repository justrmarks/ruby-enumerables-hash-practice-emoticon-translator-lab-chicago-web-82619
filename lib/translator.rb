# require modules here
require "yaml"

def load_library(path)
  # code goes here
  result = YAML.load_file(path)
  return result
end

def get_japanese_emoticon(path, english_emoticon)
  # code goes here
  
end

def get_english_meaning(path, emoticon)
  # code goes here
end