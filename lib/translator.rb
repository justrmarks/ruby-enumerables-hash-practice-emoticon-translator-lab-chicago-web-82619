# require modules here
require "yaml"

def load_library(path)
  # code goes here
  result = YAML.load_file(path)
  return result
end

def get_japanese_emoticon(path, english_emoticon)
  # code goes here
  
  emoticon_lib = load_library(path)
  
  if 
  
end

def get_english_meaning(path, emoticon)
  # code goes here
end