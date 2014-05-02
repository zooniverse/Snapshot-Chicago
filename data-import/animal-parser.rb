require 'debugger'
require 'active_support'
require 'active_support/core_ext'
require 'active_support/i18n'

data_dir = File.dirname(__FILE__)
input_file = File.join(data_dir, 'chicagoAnimalChar.txt')
output_file=  File.join(data_dir, "animal_labels.txt")

raw_animal_list = Array.new
animal_list = Array.new
File.open(input_file).each do |line|
  if line[0] == "{"
    raw_animal_list  << line
  end
end

raw_animal_list.each do |animal|
  # [strip "{americanCoot: blah"] -> americanCoot
  real_animal = animal[1..animal.index(":")-1]
  animal_list.push real_animal
end 



out = ""
animal_list.each do |animal_name|
  humanized_animal_name = ActiveSupport::Inflector.humanize( ActiveSupport::Inflector.camelize(animal_name).underscore).titleize
  out << <<-label
          #{animal_name}:
          \tlabel: '#{humanized_animal_name}'
          \tdescription: '''
          \t\tDescribe #{humanized_animal_name}
          '''
        label
end

# file = File.new(output_file , "w+")
# file << out
# file.close

# for lib/charachteristics.coffee
values = ['likeCatDog','likeBird','likeWaterBird','likeWeasel','likeRodent','likeOther','coatTanYellow','coatRedBrown','coatBrownBlack','coatGray','coatGrayBlack','coatBlack','coatOther','coatMottled','coatSolid','coatOrTailStriped','hornsNone','tailBushy','tailSmooth','tailFlat','tailLong','buildStocky','buildLanky','buildSmall','buildLowSlung','manMade']
values.each do | chara|
  puts "new Value id: '#{chara}', label: translate 'span', 'characteristicValues.#{chara}'"
end 

#for translations
values.each do | chara|
  # get the camelicased value separated out
  human_value =  ActiveSupport::Inflector.humanize(chara.underscore).titleize
  # throw out the keyword
  human_value_a = human_value.split(" ")
  human_value_a.shift
  human_value = human_value_a.join(" ")
  puts "#{chara}: '#{human_value}'"
end 