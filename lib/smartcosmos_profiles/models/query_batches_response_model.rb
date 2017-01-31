# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class QueryBatchesResponseModel < BaseModel
    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :batch_urns

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :code

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["batch_urns"] = "batchUrns"
        @hash["code"] = "code"
      end
      @hash
    end

    def initialize(batch_urns = nil,
                   code = nil,
                   additional_properties = {})
      @batch_urns = batch_urns
      @code = code

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        batch_urns = hash["batchUrns"]
        code = hash["code"]

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        QueryBatchesResponseModel.new(batch_urns,
                                      code,
                                      hash)
      end
    end
  end
end
