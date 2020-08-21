=begin
#MELI Markeplace SDK

#This is a the codebase to generate a SDK for Open Platform Marketplace

The version of the OpenAPI document: 3.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module Meli
  class RestClientApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Resource path DELETE
    # @param resource [String] 
    # @param access_token [String] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def resource_delete(resource, access_token, opts = {})
      data, _status_code, _headers = resource_delete_with_http_info(resource, access_token, opts)
      data
    end

    # Resource path DELETE
    # @param resource [String] 
    # @param access_token [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def resource_delete_with_http_info(resource, access_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestClientApi.resource_delete ...'
      end
      # verify the required parameter 'resource' is set
      if @api_client.config.client_side_validation && resource.nil?
        fail ArgumentError, "Missing the required parameter 'resource' when calling RestClientApi.resource_delete"
      end
      # verify the required parameter 'access_token' is set
      if @api_client.config.client_side_validation && access_token.nil?
        fail ArgumentError, "Missing the required parameter 'access_token' when calling RestClientApi.resource_delete"
      end
      # resource path
      local_var_path = '/{resource}'.sub('{' + 'resource' + '}', CGI.escape(resource.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'access_token'] = access_token

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestClientApi#resource_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resource path GET
    # @param resource [String] 
    # @param access_token [String] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def resource_get(resource, access_token, opts = {})
      data, _status_code, _headers = resource_get_with_http_info(resource, access_token, opts)
      data
    end

    # Resource path GET
    # @param resource [String] 
    # @param access_token [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def resource_get_with_http_info(resource, access_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestClientApi.resource_get ...'
      end
      # verify the required parameter 'resource' is set
      if @api_client.config.client_side_validation && resource.nil?
        fail ArgumentError, "Missing the required parameter 'resource' when calling RestClientApi.resource_get"
      end
      # verify the required parameter 'access_token' is set
      if @api_client.config.client_side_validation && access_token.nil?
        fail ArgumentError, "Missing the required parameter 'access_token' when calling RestClientApi.resource_get"
      end
      # resource path
      local_var_path = '/{resource}'.sub('{' + 'resource' + '}', CGI.escape(resource.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'access_token'] = access_token

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestClientApi#resource_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resourse path POST
    # @param resource [String] 
    # @param access_token [String] 
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def resource_post(resource, access_token, body, opts = {})
      data, _status_code, _headers = resource_post_with_http_info(resource, access_token, body, opts)
      data
    end

    # Resourse path POST
    # @param resource [String] 
    # @param access_token [String] 
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def resource_post_with_http_info(resource, access_token, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestClientApi.resource_post ...'
      end
      # verify the required parameter 'resource' is set
      if @api_client.config.client_side_validation && resource.nil?
        fail ArgumentError, "Missing the required parameter 'resource' when calling RestClientApi.resource_post"
      end
      # verify the required parameter 'access_token' is set
      if @api_client.config.client_side_validation && access_token.nil?
        fail ArgumentError, "Missing the required parameter 'access_token' when calling RestClientApi.resource_post"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RestClientApi.resource_post"
      end
      # resource path
      local_var_path = '/{resource}'.sub('{' + 'resource' + '}', CGI.escape(resource.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'access_token'] = access_token

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestClientApi#resource_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Resourse path PUT
    # @param resource [String] 
    # @param access_token [String] 
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def resource_put(resource, access_token, body, opts = {})
      data, _status_code, _headers = resource_put_with_http_info(resource, access_token, body, opts)
      data
    end

    # Resourse path PUT
    # @param resource [String] 
    # @param access_token [String] 
    # @param body [Object] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def resource_put_with_http_info(resource, access_token, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RestClientApi.resource_put ...'
      end
      # verify the required parameter 'resource' is set
      if @api_client.config.client_side_validation && resource.nil?
        fail ArgumentError, "Missing the required parameter 'resource' when calling RestClientApi.resource_put"
      end
      # verify the required parameter 'access_token' is set
      if @api_client.config.client_side_validation && access_token.nil?
        fail ArgumentError, "Missing the required parameter 'access_token' when calling RestClientApi.resource_put"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RestClientApi.resource_put"
      end
      # resource path
      local_var_path = '/{resource}'.sub('{' + 'resource' + '}', CGI.escape(resource.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'access_token'] = access_token

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RestClientApi#resource_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
