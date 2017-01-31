# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class VerifyNXPTagSignatureRequestModel < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :signature

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tag_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tag_version

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["signature"] = "signature"
        @hash["tag_id"] = "tagId"
        @hash["tag_version"] = "tagVersion"
      end
      @hash
    end

    def initialize(signature = nil,
                   tag_id = nil,
                   tag_version = nil,
                   additional_properties = {})
      @signature = signature
      @tag_id = tag_id
      @tag_version = tag_version

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        signature = hash["signature"]
        tag_id = hash["tagId"]
        tag_version = hash["tagVersion"]

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        VerifyNXPTagSignatureRequestModel.new(signature,
                                              tag_id,
                                              tag_version,
                                              hash)
      end
    end
  end
end
