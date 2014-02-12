require 'multi_json'

fo=File.open('weirdpercent.json', "r")
mjl=MultiJson.load(fo)