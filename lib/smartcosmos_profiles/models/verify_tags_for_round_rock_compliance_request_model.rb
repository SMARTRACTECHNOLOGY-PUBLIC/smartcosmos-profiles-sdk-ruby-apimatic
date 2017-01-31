# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class VerifyTagsForRoundRockComplianceRequestModel < BaseModel
    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :tag_ids

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["tag_ids"] = "tagIds"
      end
      @hash
    end

    def initialize(tag_ids = nil,
                   additional_properties = {})
      @tag_ids = tag_ids

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        tag_ids = hash["tagIds"]

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        VerifyTagsForRoundRockComplianceRequestModel.new(tag_ids,
                                                         hash)
      end
    end
  end
end
