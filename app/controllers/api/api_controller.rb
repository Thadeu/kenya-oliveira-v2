class Api::ApiController < ActionController::Base

  # JSON Response
  JSON_RESPONSE = { status: 0, message: 'success', length: 0,  data: nil}

  protect_from_forgery with: :null_session

  respond_to :html, :json
  responders :flash

  def set_response_sucess(data)
    JSON_RESPONSE[:status] =  200
    JSON_RESPONSE[:data] = data
    JSON_RESPONSE[:length] = data.count
  end

  def set_response_error
    JSON_RESPONSE[:status] =  500
    JSON_RESPONSE[:message] = "Houve um erro na requisição ..."
    JSON_RESPONSE[:data] = []
    JSON_RESPONSE[:length] = 0
  end

  protected

    # Autenticação por token para navegação das paginas na API
    def authenticate_token
      authenticate_or_request_with_http_token do |token, options|
        @user = User.find_by(token: token)
        if @user.present?
          session[:user_id] = @user.id
          session[:token] = @user.token
        end
      end
    end

    def current_user
      current_user = current_user || User.find(session[:user_id])
    end

end
