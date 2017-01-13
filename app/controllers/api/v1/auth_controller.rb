class Api::V1::AuthController < Api::ApiController

  def sign_in
    user = User.find_by(username: params[:username])
    pass = user.valid_password?(params[:password]) unless user.nil?

    if pass
      user.update_attributes({token: User.generate_auth_token})
      user.save

      set_response_sucess([user])
      JSON_RESPONSE[:message] = "Autenticação Realizada!"
      render json: JSON_RESPONSE
    else
      set_response_error
      JSON_RESPONSE[:message] = "Usuário/Senha inválido(s)"
      render json: JSON_RESPONSE
    end
  end
end
