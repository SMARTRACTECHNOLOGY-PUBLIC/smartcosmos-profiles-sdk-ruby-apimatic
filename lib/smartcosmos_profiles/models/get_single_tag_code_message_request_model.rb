# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class GetSingleTagCodeMessageRequestModel < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :tag_code

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["tag_code"] = "tagCode"
      end
      @hash
    end

    def initialize(tag_code = nil,
                   additional_properties = {})
      @tag_code = tag_code

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        tag_code = hash["tagCode"]

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        GetSingleTagCodeMessageRequestModel.new(tag_code,
                                                hash)
      end
    end
  end
end
