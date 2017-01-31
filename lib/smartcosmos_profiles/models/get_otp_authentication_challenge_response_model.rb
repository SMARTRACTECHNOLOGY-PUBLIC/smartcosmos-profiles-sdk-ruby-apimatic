# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class GetOTPAuthenticationChallengeResponseModel < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :message

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :otp_request_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :otp_vector

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tag_id

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["code"] = "code"
        @hash["message"] = "message"
        @hash["otp_request_id"] = "otpRequestId"
        @hash["otp_vector"] = "otpVector"
        @hash["tag_id"] = "tagId"
      end
      @hash
    end

    def initialize(code = nil,
                   message = nil,
                   otp_request_id = nil,
                   otp_vector = nil,
                   tag_id = nil,
                   additional_properties = {})
      @code = code
      @message = message
      @otp_request_id = otp_request_id
      @otp_vector = otp_vector
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
        code = hash["code"]
        message = hash["message"]
        otp_request_id = hash["otpRequestId"]
        otp_vector = hash["otpVector"]
        tag_id = hash["tagId"]

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        GetOTPAuthenticationChallengeResponseModel.new(code,
                                                       message,
                                                       otp_request_id,
                                                       otp_vector,
                                                       tag_id,
                                                       hash)
      end
    end
  end
end
