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
  library.each do |k, v|
    if library[k] == :get_emoticon
      binding.pry
      if library[k].include?(english)
        library[k][v]
      end
    end
end

def get_english_meaning
  # code goes here
end
