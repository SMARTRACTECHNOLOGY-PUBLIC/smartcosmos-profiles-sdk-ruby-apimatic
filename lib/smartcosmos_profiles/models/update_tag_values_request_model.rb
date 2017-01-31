# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class UpdateTagValuesRequestModel < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :app_id

    # TODO: Write general description for this method
    # @return [List of Object]
    attr_accessor :tags

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["app_id"] = "appId"
        @hash["tags"] = "tags"
      end
      @hash
    end

    def initialize(app_id = nil,
                   tags = nil,
                   additional_properties = {})
      @app_id = app_id
      @tags = tags

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        app_id = hash["appId"]
        tags = hash["tags"]

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        UpdateTagValuesRequestModel.new(app_id,
                                        tags,
                                        hash)
      end
    end
  end
end
