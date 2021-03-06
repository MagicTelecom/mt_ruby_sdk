# This file was automatically generated by APIMATIC v2.0 on 06/23/2016

module MagicTelecomApi
  class CallerLocation
    # Location Name
    # @return [String]
    attr_accessor :name

    # Address
    # @return [String]
    attr_accessor :address

    # City
    # @return [String]
    attr_accessor :city

    # Region
    # @return [String]
    attr_accessor :region

    # Postal Code
    # @return [Numeric]
    attr_accessor :postal_code

    # Unit Type
    # @return [String]
    attr_accessor :unit_type

    # Unit Number
    # @return [Numeric]
    attr_accessor :unit_number

    # Country Name
    # @return [String]
    attr_accessor :country

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
      hash['name'] = name
      hash['address'] = address
      hash['city'] = city
      hash['region'] = region
      hash['postal_code'] = postal_code
      hash['unit_type'] = unit_type
      hash['unit_number'] = unit_number
      hash['country'] = country
      hash
    end
  end
end
