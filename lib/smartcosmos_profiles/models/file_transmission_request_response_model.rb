# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class FileTransmissionRequestResponseModel < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :endpoint_uri

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :protocol

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :transmission_urn

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["endpoint_uri"] = "endpointUri"
        @hash["protocol"] = "protocol"
        @hash["transmission_urn"] = "transmissionUrn"
      end
      @hash
    end

    def initialize(endpoint_uri = nil,
                   protocol = nil,
                   transmission_urn = nil,
                   additional_properties = {})
      @endpoint_uri = endpoint_uri
      @protocol = protocol
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
        endpoint_uri = hash["endpointUri"]
        protocol = hash["protocol"]
        transmission_urn = hash["transmissionUrn"]

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        FileTransmissionRequestResponseModel.new(endpoint_uri,
                                                 protocol,
                                                 transmission_urn,
                                                 hash)
      end
    end
  end
end
