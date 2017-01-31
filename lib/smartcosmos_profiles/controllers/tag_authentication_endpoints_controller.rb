# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class TagAuthenticationEndpointsController < BaseController
    @@instance = TagAuthenticationEndpointsController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # OTP (One-Time Password) Authentication is performed in three steps:
    #  1. Retrieve an authentication challenge for the given tag
    #     in: tagId, appId
    #     out: otpRequestId, otpVector
    #  2. Calculate the OTP encryption result on the client
    #  3. Send the OTP encryption result to the service
    #     in: tagId, otpRequestId, otpResult
    #     out: verification result
    # Get an authentication challenge to authenticate a tag identified by its tag ID using an OTP init vector
    # and a key. The authentication session is valid for 60 seconds.
    # ### Idempotent Behaviour
    # This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
    # - **200 OK** tags found and result available (also returned if only a subset of tags have this keys)
    # - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
    # - **401 UNAUTHORIZED** user not authorized
    # - **404 NOT_FOUND** no matching tags found or none the tags found does support OTP authentication
    # ### Input parameters:
    # - tagId (required, string, `0EEEE100000001`) ... Identifier for the tag
    # - appId (optional, string, `OTP`) ... Identifier for the requested application (used for multi application RFID tags)
    # ### Output parameters:
    # - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
    # - message (string, `Verification successful`) ... Result message
    # - tagId (string, `0EEEE100000001`) ... tag ID
    # - otpRequestId (string, `urn:uuid:82b3a00c-e1b0-44cb-a50d-7705e1c6e2b4`) ... Identifier to track the authentication flow
    # - otpVector (byte[], `MzMEOwsSAkYTBRUTPjpGJRIsLgE=`) ... Generated OTP init vector to calculate the OTP result
    # @param [GetOTPAuthenticationChallengeRequestModel] body Required parameter: Example: 
    # @return GetOTPAuthenticationChallengeResponseModel response from the API call
    def create_get_otp_authentication_challenge(body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/tag/auth/otp/request'
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
      elsif _context.response.status_code == 404
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return GetOTPAuthenticationChallengeResponseModel.from_hash(decoded)
    end

    # Verify the signature of NXP NTAG, Mifare Ultralight EV1 or I-Code SLIX2 tags. The signature could be obtained
    # from the NXP tag by issuing a READ_SIG command. To use the correct verification key, it is also
    # required to submit the tag version, which could be acquired by issuing a GET_VERSION command.
    # The signature is verified in Profiles by ECDSA using the public key from NXP.
    # Following NXP chip types are supported:
    # - NXP NTAG
    # - NXP Mifare Ultralight EV1
    # - NXP I-Code SLIX2
    # ### Note on tagVersion
    # - For NTAG and Ultralight it is required to provide the GET_VERSION response to locate the correct verification key
    # - For I-Code the *tagVersion* could be ommitted, because the verification key is derived from the UID directly
    # ### Idempotent Behaviour
    # This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
    # - **200 OK** signature valid
    # - **400 BAD_REQUEST** signature invalid
    # - **401 UNAUTHORIZED** user not authorized
    # ### Input parameters:
    # - tagId (required, string, `04001122334455`) ... NXP tag UID
    # - tagVersion (optional, string, `0004040201000F03`) ... NXP GET_VERSION response
    # - signature (required, string, `MTIzNDU2NzgxMjM0NTY3ODEyMzQ1Njc4MTIzNDU2Nzg=`) ... signature read from the chip (Base64 encoded)
    # ### Output parameters:
    # - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
    # - message (string, `Verification successful`) ... Result message
    # - tagId (string, `04001122334455`) ... NXP tag UID
    # @param [VerifyNXPTagSignatureRequestModel] body Required parameter: Example: 
    # @return VerifyNXPTagSignatureResponseModel response from the API call
    def create_verify_nxp_tag_signature(body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/tag/auth/nxp'
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
      return VerifyNXPTagSignatureResponseModel.from_hash(decoded)
    end

    # Validate the OTP authentication attempt based on the OTP init vactor identified by UUID.
    # ### Idempotent Behaviour
    # This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
    # - **200 OK** authentication successful
    # - **400 BAD_REQUEST** authentication failed
    # - **401 UNAUTHORIZED** user not authorized
    # - **404 NOT_FOUND** invalid session or session expired
    # ### Input parameters:
    # - timestamp (required, long, `1430911319542`) ... UTC timestamp used by the client to calculate the OTP
    # - otpRequestId (required, string, `urn:uuid:82b3a00c-e1b0-44cb-a50d-7705e1c6e2b4`) ... Server side generated id to track the authentication flow
    # - otpResult (required, int, `123456`) ... Generated OTP from HMAC according to RFC 6238
    # ### Output parameters:
    # - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
    # - message (string, `Verification successful`) ... Result message
    # - tagId (string, `0EEEE100000001`) ... tag ID
    # @param [ValidateOTPEncryptionResultRequestModel] body Required parameter: Example: 
    # @return ValidateOTPEncryptionResultResponseModel response from the API call
    def create_validate_otp_encryption_result(body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/tag/auth/otp/validate'
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
      elsif _context.response.status_code == 404
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      return ValidateOTPEncryptionResultResponseModel.from_hash(decoded)
    end
  end
end
