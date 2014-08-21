# writes coffeescript object with occurence count of animal images
# to "/app/lib/animal_counts"

file_to_write = "./app/lib/animal_counts.coffee"
js_object_name = "animalCounts"
top_comment = "# This file is auto-generated from /data-import/animal_count_generator.rb
# It holds a count of each animal type in /public/images/animals"

js_animal_counts_object = "#{top_comment}\n\n#{js_object_name} =\n"

animal_names = Dir.entries("public/images/animals")
  .reject {|e| e[0] == "."}            # don't include dotfiles
  .map {|d| d.split(".")[0].chop.chop} # split before extension and remove '-*' from filenames

counts_hash = animal_names.each_with_object(Hash.new(0)) do |animal, counts|
  counts[animal] += 1
end

counts_hash.each do |animal, count|
  js_animal_counts_object += ("\s\s'#{animal}': #{count.to_s}\n")
end

js_animal_counts_object += "\nmodule?.exports = #{js_object_name}"

File.open(file_to_write, 'w') {|file| file.write(js_animal_counts_object)}
