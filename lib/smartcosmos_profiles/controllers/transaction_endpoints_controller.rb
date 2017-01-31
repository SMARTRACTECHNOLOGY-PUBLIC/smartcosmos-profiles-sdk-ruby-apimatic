# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class TransactionEndpointsController < BaseController
    @@instance = TransactionEndpointsController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # ### Idempotent Behaviour
    # This endpoint is idempotent and will respond with an appropriate HTTP status code to indicate the actual result
    # ### Input parameters:
    # - [[account, objects[], objectAddresses[], metadata[], relationships[], [...], ...]
    # ### Output parameters:
    # - code (Number, `0`) ... Indicates the result code of this call (see `result codes`)
    # - message (string, `11e5d3f6-0c65-7791-917a-e95d5a282bcb`) ... System-generated Transaction ID, as used in all logging
    # ### Input HTTP Headers:
    # - HTTP Basic Authorization (as specified above)
    # ### HTTP result codes
    # This endpoint will respond with an appropriate HTTP status code to indicate the actual result
    # - **200 SUCCESS** the insertion was successful. The UUID in the message string of the response body is system-generated transaction ID, which can be helpful for logging.
    # - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information, including an approximate count of elements processed before the error occurred.
    # - **401 UNAUTHORIZED** user not authorized
    # @param [List of TransactionallyInsertOrUpdateDataProvidedInRequestMessageBodyIntoTheDatastoreRequestModel] body Required parameter: Example: 
    # @param [String] transaction_handler_name Required parameter: Example: 
    # @return TransactionallyInsertOrUpdateDataProvidedInRequestMessageBodyIntoTheDatastoreResponseModel response from the API call
    def create_transactionally_insert_or_update_data_provided_in_request_message_body_into_the_datastore(body, 
                                                                                                         transaction_handler_name)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/transaction/{transactionHandlerName}'
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'transactionHandlerName' => transaction_handler_name
      }
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
      return TransactionallyInsertOrUpdateDataProvidedInRequestMessageBodyIntoTheDatastoreResponseModel.from_hash(decoded)
    end
  end
end
