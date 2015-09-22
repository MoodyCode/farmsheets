# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Measurement.create(:unit => 'ounces')
Measurement.create(:unit => 'grams')
Measurement.create(:unit => 'pounds')
Plot.create(:name => 'tray')
Plot.create(:name => 'bed')
crop = Crop.create(:name => 'sunflower')
crop.varietals.create(:name => 'black oilseed')
crop = Crop.create(:name => 'radish')
crop.varietals.create(:name => 'triton')
crop.varietals.create(:name => 'daikon')
crop = Crop.create(:name => 'pea')
crop.varietals.create(:name => 'speckled')