# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class GetOTPAuthenticationChallengeRequestModel < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :app_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tag_id

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["app_id"] = "appId"
        @hash["tag_id"] = "tagId"
      end
      @hash
    end

    def initialize(app_id = nil,
                   tag_id = nil,
                   additional_properties = {})
      @app_id = app_id
      @tag_id = tag_id

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
        tag_id = hash["tagId"]

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        GetOTPAuthenticationChallengeRequestModel.new(app_id,
                                                      tag_id,
                                                      hash)
      end
    end
  end
end
