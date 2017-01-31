# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class TransactionallyInsertOrUpdateDataProvidedInRequestMessageBodyIntoTheDatastoreRequestModel < BaseModel
    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :account

    # TODO: Write general description for this method
    # @return [List of Object]
    attr_accessor :metadata

    # TODO: Write general description for this method
    # @return [List of Object]
    attr_accessor :object_addresses

    # TODO: Write general description for this method
    # @return [List of Object]
    attr_accessor :objects

    # TODO: Write general description for this method
    # @return [List of Object]
    attr_accessor :relationships

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["account"] = "account"
        @hash["metadata"] = "metadata"
        @hash["object_addresses"] = "objectAddresses"
        @hash["objects"] = "objects"
        @hash["relationships"] = "relationships"
      end
      @hash
    end

    def initialize(account = nil,
                   metadata = nil,
                   object_addresses = nil,
                   objects = nil,
                   relationships = nil,
                   additional_properties = {})
      @account = account
      @metadata = metadata
      @object_addresses = object_addresses
      @objects = objects
      @relationships = relationships

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        account = hash["account"]
        metadata = hash["metadata"]
        object_addresses = hash["objectAddresses"]
        objects = hash["objects"]
        relationships = hash["relationships"]

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        TransactionallyInsertOrUpdateDataProvidedInRequestMessageBodyIntoTheDatastoreRequestModel.new(account,
                                                                                                      metadata,
                                                                                                      object_addresses,
                                                                                                      objects,
                                                                                                      relationships,
                                                                                                      hash)
      end
    end
  end
end
