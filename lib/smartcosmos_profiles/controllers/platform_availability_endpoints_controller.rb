# This file was automatically generated for SMARTRAC Technology Fletcher, Inc. by APIMATIC v2.0 ( https://apimatic.io ).

module SmartcosmosProfiles
  class PlatformAvailabilityEndpointsController < BaseController
    @@instance = PlatformAvailabilityEndpointsController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Resource for checking the platform availability. 
    # ### HTTP result codes
    # This endpoint will respond with an appropriate HTTP status code to indicate the actual result
    # - **204 NO_CONTENT** platform is available
    # - **400 BAD_REQUEST** problem occurred, check message parameter for detailed information
    # - **503 SERVICE_UNAVAILABLE** service is temporary unavailable (e.g. scheduled Platform Maintenance). Try again later.
    # @return Mixed response from the API call
    def get_check_platform_availability

      # prepare query url
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/rest/test/ping'
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'accept' => 'application/json'
      }

      # prepare and execute HttpRequest
      _request = @http_client.get _query_url, headers: _headers
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # validate response against endpoint and global error codes
      if _context.response.status_code == 400
        raise APIException.new 'Unexpected error in API call. See HTTP response body for details.', _context
      elsif _context.response.status_code == 503
        raise APIException.new '', _context
      end
      validate_response(_context)

      # return appropriate response type
      decoded = APIHelper.json_deserialize(_context.response.raw_body) if not (_context.response.raw_body.nil? or _context.response.raw_body.to_s.strip.empty?)
      return decoded
    end
  end
end
