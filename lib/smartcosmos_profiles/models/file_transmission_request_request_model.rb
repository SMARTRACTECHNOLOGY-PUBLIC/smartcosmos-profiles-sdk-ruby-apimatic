# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class FileTransmissionRequestRequestModel < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :content_length

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :md_5_checksum

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :mime_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :routing_urn

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["content_length"] = "contentLength"
        @hash["md_5_checksum"] = "md5Checksum"
        @hash["mime_type"] = "mimeType"
        @hash["routing_urn"] = "routingUrn"
      end
      @hash
    end

    def initialize(content_length = nil,
                   md_5_checksum = nil,
                   mime_type = nil,
                   routing_urn = nil,
                   additional_properties = {})
      @content_length = content_length
      @md_5_checksum = md_5_checksum
      @mime_type = mime_type
      @routing_urn = routing_urn

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        content_length = hash["contentLength"]
        md_5_checksum = hash["md5Checksum"]
        mime_type = hash["mimeType"]
        routing_urn = hash["routingUrn"]

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        FileTransmissionRequestRequestModel.new(content_length,
                                                md_5_checksum,
                                                mime_type,
                                                routing_urn,
                                                hash)
      end
    end
  end
end
