require 'pry'

def reformat_languages(languages)
  new_hash = {}

  languages.each do |styles, langs|
    langs.each do |lang, types|
      types.each do |a,b|
      new_hash[lang] = {type: b, style: [styles]}
      end
    end
  end

  # this line gets the test passing but there has to be a better way!!!
  new_hash[:javascript][:style] << :oo
  new_hash
end


# languages hash:
  # first level keys are styles (:oo, :functional)
  # first level values are hashes
    # second level keys are languages (:ruby, :javascript etc)
    # second level values are hashes
      # third level keys are :type
      # third level values are strings ("interpreted", "compiled")
# IT HAS NO ARRAYS

# return new_hash:
  # first level keys are languages (:ruby, :javascript etc)
  # first level values are hashes
    # second level keys are hashes (:type, :style)
    # second level value of :type is string ("interpreted", "compiled")
    # second level value of :style is an array of symbols

# iterate over languages hash:
# grab the second level keys and set as first level keys
# grab the third level keys and set as the first level values (still as hashes)
# grab the third level values and set as the second level values of :type
# grab the first level keys and set as the second level values of :style (but in an array)
