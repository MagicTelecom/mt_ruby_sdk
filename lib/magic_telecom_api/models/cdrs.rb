# This file was automatically generated by APIMATIC v2.0 on 06/23/2016

module MagicTelecomApi
  class Cdrs
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :user_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :service_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :start_date

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :end_date

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
      hash['user_id'] = user_id
      hash['service_type'] = service_type
      hash['start_date'] = start_date
      hash['end_date'] = end_date
      hash
    end
  end
end
