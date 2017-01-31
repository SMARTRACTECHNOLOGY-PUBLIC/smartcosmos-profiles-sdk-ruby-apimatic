# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class GetTagMetadataRequestModel < BaseModel
    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :properties

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :tag_ids

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :verification_types

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["properties"] = "properties"
        @hash["tag_ids"] = "tagIds"
        @hash["verification_types"] = "verificationTypes"
      end
      @hash
    end

    def initialize(properties = nil,
                   tag_ids = nil,
                   verification_types = nil,
                   additional_properties = {})
      @properties = properties
      @tag_ids = tag_ids
      @verification_types = verification_types

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        properties = hash["properties"]
        tag_ids = hash["tagIds"]
        verification_types = hash["verificationTypes"]

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        GetTagMetadataRequestModel.new(properties,
                                       tag_ids,
                                       verification_types,
                                       hash)
      end
    end
  end
end
