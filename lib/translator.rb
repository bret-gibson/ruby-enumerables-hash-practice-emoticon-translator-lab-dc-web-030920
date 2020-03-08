# require modules here
require "yaml"
require "pry"

def load_library(path)
  library = YAML.load_file(path)
  lib_hash = {:get_meaning => {}, :get_emoticon => {}}
  library.each do |k, v|
    lib_hash[:get_meaning][v[1]] = k
    lib_hash[:get_emoticon][v[0]] = v[1]
  end
  return lib_hash
end

def get_japanese_emoticon(path, english)
  library = load_library(path)
  returnVal = nil
  library[:get_emoticon].each do |k, v|
    if k.include?(english)
      returnVal = v
    end
    if
      returnVal = "Sorry, that emoticon was not found"
    end
  
  end
  return returnVal
end

def get_english_meaning
  # code goes here
end
