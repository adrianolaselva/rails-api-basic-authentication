


class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Basic::ControllerMethods
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authenticate

  private
    def authenticate
      authenticate_with_http_basic do |email, password|

        user = User.find_by(email: email)
        if !user
          render json: { error: 'Incorrect credentials' }, status: 401
        end

        if user && user.password != password
          render json: { error: 'Incorrect credentials' }, status: 401
        end

      end
    end

end

