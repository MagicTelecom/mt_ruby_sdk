# This file was automatically generated by APIMATIC v2.0 on 06/23/2016

module MagicTelecomApi
  class DidsController
    @@instance = DidsController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # Allow clients to get the list of available countries
    # @param [Numeric] page Optional parameter: Zero based offset index for the results. e.g. 0 would start at the first result and 10 would start at the eleventh result
    # @param [Numeric] limit Optional parameter: Maximum number of results to return in the response
    # @return mixed response from the API call
    def get_countries(page = 1, limit = 10)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/dids/location/countries'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        'page' => if page.nil? then 1 else page end,
        'limit' => if limit.nil? then 10 else limit end
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        'user-agent' => 'APIMATIC 2.0',
        'accept' => 'application/json',
        'X-Auth-Token' => Configuration.x_auth_token
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers: headers

      # Error handling using HTTP status codes
      if response.code == 401
        raise APIException.new 'You are not authenticated', 401, response.raw_body
      elsif response.code == 403
        raise APIException.new 'This action needs a valid WSSE header', 403, response.raw_body
      elsif response.code == 404
        raise APIException.new 'Resource not found', 404, response.raw_body
      elsif response.code == 400
        raise APIException.new 'Http bad request', 400, response.raw_body
      elsif !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end

    # Allow clients to get a specific country
    # @param [String] country_iso_2 Required parameter: Country ISO2
    # @return mixed response from the API call
    def get_country_by_iso_2(country_iso_2)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/dids/location/countries/{country_iso2}'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'country_iso2' => country_iso_2
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        'user-agent' => 'APIMATIC 2.0',
        'accept' => 'application/json',
        'X-Auth-Token' => Configuration.x_auth_token
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers: headers

      # Error handling using HTTP status codes
      if response.code == 401
        raise APIException.new 'You are not authenticated', 401, response.raw_body
      elsif response.code == 403
        raise APIException.new 'This action needs a valid WSSE header', 403, response.raw_body
      elsif response.code == 404
        raise APIException.new 'Resource not found', 404, response.raw_body
      elsif response.code == 400
        raise APIException.new 'Http bad request', 400, response.raw_body
      elsif !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end

    # Allow clients to get the list of available regions per country
    # @param [String] country_iso_2 Required parameter: Country ISO2
    # @param [Numeric] page Optional parameter: Zero based offset index for the results. e.g. 0 would start at the first result and 10 would start at the eleventh result
    # @param [Numeric] limit Optional parameter: Maximum number of results to return in the response
    # @return mixed response from the API call
    def get_regions(country_iso_2, page = 1, limit = 10)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/dids/location/countries/{country_iso2}/regions'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'country_iso2' => country_iso_2
      }

      # process optional query parameters
      query_builder = APIHelper.append_url_with_query_parameters query_builder, {
        'page' => if page.nil? then 1 else page end,
        'limit' => if limit.nil? then 10 else limit end
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        'user-agent' => 'APIMATIC 2.0',
        'accept' => 'application/json',
        'X-Auth-Token' => Configuration.x_auth_token
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers: headers

      # Error handling using HTTP status codes
      if response.code == 401
        raise APIException.new 'You are not authenticated', 401, response.raw_body
      elsif response.code == 403
        raise APIException.new 'This action needs a valid WSSE header', 403, response.raw_body
      elsif response.code == 404
        raise APIException.new 'Resource not found', 404, response.raw_body
      elsif response.code == 400
        raise APIException.new 'Http bad request', 400, response.raw_body
      elsif !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end

    # Allow clients to get a specific region for a specific country
    # @param [String] country_iso_2 Required parameter: Country ISO2
    # @param [String] region_handle Required parameter: Region handle
    # @return mixed response from the API call
    def get_regions_by_handle(country_iso_2, region_handle)
      # the base uri for api requests
      query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      query_builder << '/dids/location/countries/{country_iso2}/regions/{region_handle}'

      # process optional query parameters
      query_builder = APIHelper.append_url_with_template_parameters query_builder, {
        'country_iso2' => country_iso_2,
        'region_handle' => region_handle
      }

      # validate and preprocess url
      query_url = APIHelper.clean_url query_builder

      # prepare headers
      headers = {
        'user-agent' => 'APIMATIC 2.0',
        'accept' => 'application/json',
        'X-Auth-Token' => Configuration.x_auth_token
      }

      # invoke the API call request to fetch the response
      response = Unirest.get query_url, headers: headers

      # Error handling using HTTP status codes
      if response.code == 401
        raise APIException.new 'You are not authenticated', 401, response.raw_body
      elsif response.code == 403
        raise APIException.new 'This action needs a valid WSSE header', 403, response.raw_body
      elsif response.code == 404
        raise APIException.new 'Resource not found', 404, response.raw_body
      elsif response.code == 400
        raise APIException.new 'Http bad request', 400, response.raw_body
      elsif !response.code.between?(200, 206) # [200,206] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.code, response.raw_body
      end

      response.body
    end
  end
end