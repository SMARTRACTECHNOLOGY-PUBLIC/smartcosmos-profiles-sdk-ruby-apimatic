# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class TagVerificationEndpointsController < BaseController
    @@instance = TagVerificationEndpointsController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Get a message to a single verification state. Translate a numeric verification state into a human readable format. e.g. `0` into `verified`
    # ### Idempotent Behaviour
    # This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
    # - **200 OK** tag found and result available
    # - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
    # - **401 UNAUTHORIZED** user not authorized
    # ### Input HTTP Headers:
    # - HTTP Basic Authorization (as specified above)
    # - Accept language (as specified above)
    # ### Input parameters:
    # - verificationType (required, string, `RR`) ... Identifier of the verification type
    # - verificationState (required, number, `0`) ... State of the verification
    # ### Output parameters:
    # - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
    # - message (string, `verified`) ... Result message in `Accept-Language` (see `Multi language support`)
    # @param [GetVerificationStateMessageRequestModel] body Required parameter: Example: 
    # @return GetVerificationStateMessageResponseModel response from the API call
    def create_get_verification_state_message(body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/verification/message'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: body.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      elsif _context.response.status_code == 401
        raise APIException.new '', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetVerificationStateMessageResponseModel.from_hash(decoded)
    end

    # Verify tags for Round Rock compliance (verification type `RR`)
    # ### Idempotent Behaviour
    # This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
    # - **200 OK** tag found and Round Rock compliance result available
    # - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
    # ### Input parameters:
    # - tagIds (required, array of string, `E12345678912345678`) ... Array of RFID tag identifiers; max 1000 entries allowed
    # ### Output parameters:
    # - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
    # - tagId (string, `0EEEE100000001`) ... RFID tag identifiers
    # - tagCode (Number, `0`) ... Indicates if the result code for this tag (see `result codes for a tag actions`)
    # - state (Number, `0`) ... Indicates the current RoundRock compliance state (1 = Round Rock licensed; 0 = Not RoundRock licensed)
    # The output contains all desired tag records. Even if the tag is not available or the user does not have permissions. The `tagCode` indicates the result code for each tag.
    # @param [VerifyTagsForRoundRockComplianceRequestModel] body Required parameter: Example: 
    # @return VerifyTagsForRoundRockComplianceResponseModel response from the API call
    def create_verify_tags_for_round_rock_compliance(body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/verification/tags/RR'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: body.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return VerifyTagsForRoundRockComplianceResponseModel.from_hash(decoded)
    end

    # Verify tags for a verification type, which is represented by an unique verification id like 'RR'
    # ### Idempotent Behaviour
    # This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
    # - **200 OK** tag found and verification result available
    # - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
    # - **401 UNAUTHORIZED** user not authorized
    # ### Input HTTP Headers:
    # - HTTP Basic Authorization (as specified above)
    # ### Input parameters:
    # - tagIds (required, array of string, `E12345678912345678`) ... Array of RFID tag identifiers; max 1000 entries allowed
    # - verificationType (required, String, `RR`) ... Verification type
    # ### Output parameters:
    # - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
    # - tagId (string, `0EEEE100000001`) ... RFID tag identifiers
    # - tagCode (Number, `0`) ... Indicates if the result code for this tag (see `Possible result codes for a tag actions`)
    # - state (Number, `0`) ... Indicates the current verification state; Number depends on verification type; Use the message function to get a string message
    # The output contains all desired tag records. Even if the tag is not available or the user does not have permissions. The `tagCode` indicates the result code for each tag.
    # @param [VerifyTagsForAVerificationTypeRequestModel] body Required parameter: Example: 
    # @return VerifyTagsForAVerificationTypeResponseModel response from the API call
    def create_verify_tags_for_a_verification_type(body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/verification/tags'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.post _query_url, headers: _headers, parameters: body.to_json
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      elsif _context.response.status_code == 401
        raise APIException.new '', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return VerifyTagsForAVerificationTypeResponseModel.from_hash(decoded)
    end
  end
end
