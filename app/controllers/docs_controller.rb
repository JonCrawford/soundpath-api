require 'jsonapi_swagger_helpers'

class DocsController < ActionController::API
  include JsonapiSwaggerHelpers::DocsControllerMixin

  swagger_root do
    key :swagger, '2.0'
    info do
      key :version, '0.0.1'
      key :title, 'SoundPath API'
      key :description, '<YOUR APP DESCRIPTION>'
      contact do
        key :name, 'Jonathan Crawford'
      end
    end
    key :basePath, '/api'
    key :consumes, ['application/json']
    key :produces, ['application/json']
  end

  jsonapi_resource '/v1/events',
    except: [:show, :edit],
    descriptions: {
      index: "List all of the current user's events"      
    }

  jsonapi_resource '/v1/users', except: [:index, :edit]
end