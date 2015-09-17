# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Measurement.create([{:unit => 'ounces'}, {:unit => 'grams'}])
Plot.create([{:name => 'tray'}, {:name => 'bed'}])
crop = Crop.create([:name => 'Sunflower'])
crop.varietals.create([:name => 'Blackseed'])