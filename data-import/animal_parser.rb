## A series of hacky scripts to generate parts of the user interface
## Thus far these functions and the corresponding code replacement have been executed manually 

require 'debugger'
require 'active_support'
require 'active_support/core_ext'
require 'active_support/i18n'
require 'csv'

class AnimalParser

  def initialize()
    command = ARGV[0] unless ARGV[0].nil?
    puts command
    @data_dir = File.dirname(__FILE__)
    @charateristics_file = File.join(@data_dir, 'chicagoAnimalChar.txt')
    if command == "differences"
      do_differences
    elsif command == "names"
      do_names
    elsif command == "labels"
      do_labels
    elsif command == "css"
      do_css
    else
      #no op
    end
  end

  # difference record
  def do_differences
    confusions = ["OCW1", "OCW2", "OCW3", "OCW4"]
    diff_table = get_csv_table()
    output = ""
    diff_table.each do | row|
      #skip the birds

      if ! ( row["Bird"] ==  "yes") 
        # only some animals are confused in this list
        if row["OCW1"]
          
          species = row["Species"]
         #for each 1 to 4 possible confusion
         #emit the template
         output << "  #{species}:\n"
          confusions.each do |key|
            confused_with = row[key]
            if confused_with
              output << emit_differences(species, confused_with)
            end
          end
        end
      end
      #process each row
    end 
    puts output
  end 

  # returns a difference string record 
  def emit_differences(species, confused_with)
  <<-difference
    #{confused_with}: '''
    to do description
    '''
      
    difference
  end

  def get_csv_table()
    input_file = File.join(@data_dir, 'often_confused_with.csv')
    csv = CSV.open(input_file, :headers =>true)
    diff_table = CSV::Table.new(csv.to_a)
    diff_table
  end 

  # names file isn't really used to generate app code
  def do_names
    animal_list = get_names()
    print_names(animal_list)
  end 

  def get_names()
    raw_animal_list = Array.new
    animal_list = Array.new
    
    File.open(@charateristics_file).each do |line|
      if line[0] == "{"
        raw_animal_list  << line
      end
    end
      
    raw_animal_list.each do |animal|
    #  i.e. strip "{americanCoot: blah"] -> americanCoot
      real_animal = animal[1..animal.index(":")-1]  
      animal_list.push real_animal
    end
    animal_list 
  end

  def print_names(animal_list) 
    output_file=  File.join(@data_dir, "animal_names.txt")
    file = File.new(output_file , "w+")
    animal_list.each do |animal|
      file << animal + "\n"
    end
    file.close
  end

  def do_labels
    animal_list = get_names()
    formated_labels =  labels_from_animal_list(animal_list)
    print_animal_labels(formated_labels)
  end

  #TODO this would need to be revised to expect and use the descriptions
  # formats the translation records from the animal list
  # uses ActiveSupport to get humanize the names in the list
  def labels_from_animal_list(animal_list)
    formated_animal_list = Array.new
    animal_list.each do |animal_name|
      humanized_animal_name = ActiveSupport::Inflector.humanize( ActiveSupport::Inflector.camelize(animal_name).underscore).titleize
      # note the heredoc string is whitespace aware
      formated_animal_list << <<-label
              #{animal_name}:
                label: '#{humanized_animal_name}'
                description: '''
                  Describe #{humanized_animal_name}
              '''
            label
    end
    formated_animal_list
  end

  def print_animal_labels(formated_animal_list)
    output_file=  File.join(@data_dir, "animal_labels.txt")
    file = File.new(output_file , "w+")
    formated_animal_list.each do |animal|
      file << animal + "\n"
    end
    file.close
  end
end 

#CSS generation
def do_css()
  animal_list = get_names()
  out = ""
  out = "/*Generated css by animal-parser.rb for manual integration*/"
  out << "\n/* thumnail css is integrated into css/animal_thumbs.styl */\n"
  out << thumbnail_css(animal_list) 
  out << "\n/* animal image  css is integrated into css/animal_details.styl */\n"
  out << animal_image_css(animal_list)
  out << "\n/* data-animal css is integrated into css/animal_selector.styl */\n"
  out << data_animal_css(animal_list)
  print_css(out)
end

def thumbnail_css(animal_list)
  out = ""
  animal_list.each do |animal_name|
    hyphenated_animal_name = animal_name.underscore.dasherize
    out << 
    <<-thumb
      #thumb-for.#{hyphenated_animal_name} {background: url(http://placehold.it/100x100?text=#{hyphenated_animal_name}); } 
    thumb
  end
  out
end


def animal_image_css(animal_list)
  out = ""
  animal_list.each do |animal_name|
    hyphenated_animal_name = animal_name.underscore.dasherize
    out << 
    <<-selector
      &.#{hyphenated_animal_name} .image {
        @extend #thumb-for.#{hyphenated_animal_name};
      }
    selector
    end
  out
end

def data_animal_css(animal_list)
  out = ""
  animal_list.each do |animal_name|
    hyphenated_animal_name = animal_name.underscore.dasherize
    out << 
    <<-danimal
    [data-animal="#{hyphenated_animal_name}"] .image {
      @extend #thumb-for.#{hyphenated_animal_name};
    }
    danimal
  end
  out
end

def print_css(css_string)
  puts css_string
  output_file=  File.join(@data_dir, "animal_styles.css")
  file = File.open(output_file , "w+") do |f|
    f.write(css_string)
  end
  # formated_animal_list.each do |animal|
  #   file << animal + "\n"
  # end
  #file.close
end 

###############################################
# Load class and run command
# creates the parser which expects a command to be sent through the arguments list i.e. ARGV
a_parser =  AnimalParser.new






# # for lib/charachteristics.coffee
# values = ['likeCatDog','likeBird','likeWaterBird','likeWeasel','likeRodent','likeOther','coatTanYellow','coatRedBrown','coatBrownBlack','coatGray','coatGrayBlack','coatBlack','coatOther','coatMottled','coatSolid','coatOrTailStriped','hornsNone','tailBushy','tailSmooth','tailFlat','tailLong','buildStocky','buildLanky','buildSmall','buildLowSlung','manMade']
# values.each do | chara|
#   puts "new Value id: '#{chara}', label: translate 'span', 'characteristicValues.#{chara}'"
# end 

# #for translations
# # values.each do | chara|
# #   # get the camelicased value separated out
# #   human_value =  ActiveSupport::Inflector.humanize(chara.underscore).titleize
# #   # throw out the keyword
# #   human_value_a = human_value.split(" ")
# #   human_value_a.shift
# #   human_value = human_value_a.join(" ")
# #   puts "#{chara}: '#{human_value}'"
# # end 




