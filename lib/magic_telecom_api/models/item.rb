# This file was automatically generated by APIMATIC v2.0 on 06/23/2016

module MagicTelecomApi
  class Item
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :item_type

    def method_missing(method_name)
      puts "there's no method called '#{method_name}'"
    end

    # Creates JSON of the curent object
    def to_json
      hash = key_map
      hash.to_json
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['item_type'] = item_type
      hash
    end
  end
end
