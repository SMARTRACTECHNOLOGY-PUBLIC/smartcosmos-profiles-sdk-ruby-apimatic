# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class ValidateOTPEncryptionResultRequestModel < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :otp_request_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :otp_result

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :timestamp

    # A mapping from model property names to API property names
    def self.names
      if @hash.nil?
        @hash = {}
        @hash["otp_request_id"] = "otpRequestId"
        @hash["otp_result"] = "otpResult"
        @hash["timestamp"] = "timestamp"
      end
      @hash
    end

    def initialize(otp_request_id = nil,
                   otp_result = nil,
                   timestamp = nil,
                   additional_properties = {})
      @otp_request_id = otp_request_id
      @otp_result = otp_result
      @timestamp = timestamp

      # Add additional model properties to the instance
      additional_properties.each {|name, value| instance_variable_set("@#{name}", value)}
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        otp_request_id = hash["otpRequestId"]
        otp_result = hash["otpResult"]
        timestamp = hash["timestamp"]

        # Clean out expected properties from Hash
        names.values.each {|k| hash.delete(k)}

        # Create object from extracted values
        ValidateOTPEncryptionResultRequestModel.new(otp_request_id,
                                                    otp_result,
                                                    timestamp,
                                                    hash)
      end
    end
  end
end
