class ApplicationController < ActionController::API
  # Bootstrap jsonapi_suite with relevant modules
  include JsonapiSuite::ControllerMixin

  # Catch all exceptions and render a JSONAPI-compliable error payload
  # For additional documentation, see https://jsonapi-suite.github.io/jsonapi_errorable
  rescue_from Exception do |e|
    handle_exception(e)
  end

end
