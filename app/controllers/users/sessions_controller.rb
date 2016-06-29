class Users::SessionsController < Devise::SessionsController
#before_filter :configure_sign_in_params, only: [:create]

  #GET /resource/sign_in
  def new
    super
    # respond_to do |format|
    #   format.json { render json: {}, status: :ok}
    #   format.html
    #   format.js { render "new"}
    #   return
    # end
  end

  #POST /resource/sign_in
  def create
    super
  end

  def show

  end
  # DELETE /resource/sign_out
  def destroy
    super
  end



  # protected
  #
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
