# This file was automatically generated by APIMATIC v2.0 on 06/23/2016

module MagicTelecomApi
  class CallerLocationForm
    # TODO: Write general description for this method
    # @return [CallerLocation]
    attr_accessor :caller_location

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
      hash['caller_location'] = caller_location
      hash
    end
  end
end
