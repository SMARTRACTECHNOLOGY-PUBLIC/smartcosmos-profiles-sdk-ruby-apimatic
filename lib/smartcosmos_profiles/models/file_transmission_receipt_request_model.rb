# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class FileTransmissionReceiptRequestModel < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :transmission_result

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :transmission_urn

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["transmission_result"] = "transmissionResult"
        @hash["transmission_urn"] = "transmissionUrn"
      end
      @hash
    end

    def initialize(transmission_result = nil,
                   transmission_urn = nil,
                   additional_properties = {})
      @transmission_result = transmission_result
      @transmission_urn = transmission_urn

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        transmission_result = hash["transmissionResult"]
        transmission_urn = hash["transmissionUrn"]

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        FileTransmissionReceiptRequestModel.new(transmission_result,
                                                transmission_urn,
                                                hash)
      end
    end
  end
end
