# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class GetTagDeliveryNetworkDataResponseModel < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :value

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["code"] = "code"
        @hash["value"] = "value"
      end
      @hash
    end

    def initialize(code = nil,
                   value = nil,
                   additional_properties = {})
      @code = code
      @value = value

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        code = hash["code"]
        value = hash["value"]

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        GetTagDeliveryNetworkDataResponseModel.new(code,
                                                   value,
                                                   hash)
      end
    end
  end
end
