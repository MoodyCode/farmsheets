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

crop = Crop.create(:name => 'alfalfa')
crop.varietals.create(:name => 'alfalfa')

crop = Crop.create(:name => 'amaranth')
crop.varietals.create(:name => 'red garnet')
crop.varietals.create(:name => 'pink')

crop = Crop.create(:name => 'arugula')
crop.varietals.create(:name => 'arugula')

crop = Crop.create(:name => 'barley')
crop.varietals.create(:name => 'hulless')
crop.varietals.create(:name => 'hulls on')

crop = Crop.create(:name => 'basil')
crop.varietals.create(:name => 'dark opal')
crop.varietals.create(:name => 'genovese')
crop.varietals.create(:name => 'italian large leaf')
crop.varietals.create(:name => 'lemon')

crop = Crop.create(:name => 'beans')
crop.varietals.create(:name => 'adzuki')
crop.varietals.create(:name => 'garbanzo')
crop.varietals.create(:name => 'mung')

crop = Crop.create(:name => 'beets')
crop.varietals.create(:name => 'red ace')
crop.varietals.create(:name => 'bulls blood')

crop = Crop.create(:name => 'broccoli raab')
crop.varietals.create(:name => 'spring rapini')

crop = Crop.create(:name => 'broccoli')
crop.varietals.create(:name => 'di cicco')

crop = Crop.create(:name => 'buckwheat')
crop.varietals.create(:name => 'buckwheat')

crop = Crop.create(:name => 'cabbage')
crop.varietals.create(:name => 'golden acre')
crop.varietals.create(:name => 'mammoth red rock')
crop.varietals.create(:name => 'pak choi white stem')
crop.varietals.create(:name => 'red')

crop = Crop.create(:name => 'canola')
crop.varietals.create(:name => 'canola')

crop = Crop.create(:name => 'caraway')
crop.varietals.create(:name => 'caraway')

crop = Crop.create(:name => 'cauliflower')
crop.varietals.create(:name => 'self-blanche')

crop = Crop.create(:name => 'celery')
crop.varietals.create(:name => 'utah 52-70')

crop = Crop.create(:name => 'chervil')
crop.varietals.create(:name => 'curled')

crop = Crop.create(:name => 'chia')
crop.varietals.create(:name => 'chia')
crop.varietals.create(:name => 'black')

crop = Crop.create(:name => 'Chives'.downcase)
crop.varietals.create(:name => 'Garlic'.downcase)
  
crop = Crop.create(:name => 'Cilantro'.downcase)
crop.varietals.create(:name => 'Leisure Splits'.downcase)
  
crop = Crop.create(:name => 'Clover'.downcase)
crop.varietals.create(:name => 'Crimson'.downcase)
crop.varietals.create(:name => 'Red'.downcase)
  
crop = Crop.create(:name => 'Corn'.downcase)
crop.varietals.create(:name => 'Popcorn - Yellow'.downcase)
  
crop = Crop.create(:name => 'Cress'.downcase) 
crop.varietals.create(:name => 'Curled'.downcase)
  
crop = Crop.create(:name => 'Dill'.downcase)
crop.varietals.create(:name => 'Bouquet'.downcase)
crop.varietals.create(:name => 'Mammoth Long'.downcase)
  
crop = Crop.create(:name => 'Endive'.downcase)
crop.varietals.create(:name => 'Broadleaf Batavian'.downcase)
crop.varietals.create(:name => 'Green Curled'.downcase)
  
crop = Crop.create(:name => 'Fennel'.downcase)
crop.varietals.create(:name => 'Florence'.downcase)
  
crop = Crop.create(:name => 'Fenugreek'.downcase) 
crop.varietals.create(:name => 'Fenugreek'.downcase)
  
crop = Crop.create(:name => 'Flax'.downcase)
crop.varietals.create(:name => 'Brown'.downcase)
  
  
crop = Crop.create(:name => 'Kale'.downcase)
crop.varietals.create(:name => 'Green'.downcase)
crop.varietals.create(:name => 'Pink'.downcase)
crop.varietals.create(:name => 'Premier'.downcase)
  
crop = Crop.create(:name => 'Lentils'.downcase) 
crop.varietals.create(:name => 'Black'.downcase)
crop.varietals.create(:name => 'Crimson'.downcase)
crop.varietals.create(:name => 'French Green'.downcase)
crop.varietals.create(:name => 'Large Green'.downcase)
crop.varietals.create(:name => 'Small Green'.downcase)
crop.varietals.create(:name => 'Spicy Lentil Crunch'.downcase)
  
crop = Crop.create(:name => 'Mustard'.downcase) 
crop.varietals.create(:name => 'Mizuna'.downcase)
crop.varietals.create(:name => 'Mizuna Red Leaf'.downcase)
crop.varietals.create(:name => 'Mizuna Red Streaks'.downcase)
crop.varietals.create(:name => 'Red Giant'.downcase)
crop.varietals.create(:name => 'Southern Giant Curled'.downcase)
crop.varietals.create(:name => 'Spicy Oriental'.downcase)
crop.varietals.create(:name => 'Tatsoi'.downcase)
crop.varietals.create(:name => 'Tokyo Bekana'.downcase)
crop.varietals.create(:name => 'Wasabi'.downcase)
crop.varietals.create(:name => 'Brown'.downcase)
  
crop = Crop.create(:name => 'Onion'.downcase) 
crop.varietals.create(:name => 'Red Burgundy'.downcase)
crop.varietals.create(:name => 'Sprouting'.downcase)
crop.varietals.create(:name => 'Utah Yellow Sweet Spanish'.downcase)
  
crop = Crop.create(:name => 'Orach'.downcase) 
crop.varietals.create(:name => 'Purple'.downcase)
  
crop = Crop.create(:name => 'Pea'.downcase) 
crop.varietals.create(:name => 'Thomas Laxton'.downcase)
crop.varietals.create(:name => 'Green'.downcase)
crop.varietals.create(:name => 'Speckled'.downcase)
crop.varietals.create(:name => 'Dwarf Grey Sugar'.downcase)
crop.varietals.create(:name => 'Marrowfat'.downcase)
crop.varietals.create(:name => 'Oregon Giant'.downcase)
crop.varietals.create(:name => 'Yellow'.downcase)
  
crop = Crop.create(:name => 'Quinoa'.downcase)
crop.varietals.create(:name => 'Black'.downcase)
crop.varietals.create(:name => 'White'.downcase)
  
crop = Crop.create(:name => 'Radish'.downcase)
crop.varietals.create(:name => 'Champion'.downcase)
crop.varietals.create(:name => 'Easter Egg Blend'.downcase)
crop.varietals.create(:name => 'French Breakfast'.downcase)
crop.varietals.create(:name => 'Hailstone'.downcase)
crop.varietals.create(:name => 'China Rose'.downcase)
crop.varietals.create(:name => 'Daikon'.downcase)
crop.varietals.create(:name => 'Sango Purple'.downcase)
crop.varietals.create(:name => 'Triton Purple'.downcase)
  
crop = Crop.create(:name => 'Shungiku'.downcase)
crop.varietals.create(:name => 'Edible Chrysanthemum'.downcase)
  
crop = Crop.create(:name => 'Sorrel'.downcase)
crop.varietals.create(:name => 'Large Leaf'.downcase)
  
crop = Crop.create(:name => 'Sunflower'.downcase) 
crop.varietals.create(:name => 'Black oil'.downcase)
  
crop = Crop.create(:name => 'Swiss Chard'.downcase) 
crop.varietals.create(:name => 'Bright Lights'.downcase)
crop.varietals.create(:name => 'Lucullus'.downcase)
crop.varietals.create(:name => 'Rainbow Mixture'.downcase)
crop.varietals.create(:name => 'Ruby Red'.downcase)
  
crop = Crop.create(:name => 'Tritical'.downcase)
crop.varietals.create(:name => 'Triticale'.downcase)
crop.varietals.create(:name => 'Winter'.downcase)
  
crop = Crop.create(:name => 'Wheat'.downcase) 
crop.varietals.create(:name => 'Hard Red Spring'.downcase)
crop.varietals.create(:name => 'Winter'.downcase)
crop.varietals.create(:name => 'Sof White Winter'.downcase)
crop.varietals.create(:name => 'Kamut'.downcase)