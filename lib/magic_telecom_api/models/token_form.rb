# This file was automatically generated by APIMATIC v2.0 on 06/23/2016

module MagicTelecomApi
  class TokenForm
    # TODO: Write general description for this method
    # @return [Token]
    attr_accessor :token

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
      hash['token'] = token
      hash
    end
  end
end
