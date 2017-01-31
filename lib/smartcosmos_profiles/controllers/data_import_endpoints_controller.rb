# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class DataImportEndpointsController < BaseController
    @@instance = DataImportEndpointsController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # TODO: type endpoint description here
    # @param [FileTransmissionReceiptRequestModel] body Required parameter: Example: 
    # @return void response from the API call
    def create_file_transmission_receipt(body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/batch'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
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
    end

    # TODO: type endpoint description here
    # @param [FileTransmissionRequestRequestModel] body Required parameter: Example: 
    # @return FileTransmissionRequestResponseModel response from the API call
    def update_file_transmission_request(body)

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/batch'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8'
      }

      # prepare and execute HttpRequest
      _request = @http_client.put _query_url, headers: _headers, parameters: body.to_json
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
      return FileTransmissionRequestResponseModel.from_hash(decoded)
    end
  end
end
