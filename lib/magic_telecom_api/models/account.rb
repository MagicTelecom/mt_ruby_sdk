# This file was automatically generated by APIMATIC v2.0 on 06/23/2016

module MagicTelecomApi
  class Account
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :number

    # TODO: Write general description for this method
    # @return [Array<String>]
    attr_accessor :roles

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :email

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :contact_number

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :firstname

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :lastname

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
      hash['number'] = number
      hash['roles'] = roles
      hash['email'] = email
      hash['contact_number'] = contact_number
      hash['firstname'] = firstname
      hash['lastname'] = lastname
      hash
    end
  end
end