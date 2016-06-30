class Users::SessionsController < Devise::SessionsController
#before_filter :configure_sign_in_params, only: [:create]

  #GET /resource/sign_in
  def new
    @user = User.new
    if request.xhr?
      respond_to do |format|
        format.js { render "new", resource: :resource }
      end
    end
  end

  #POST /resource/sign_in
  def create
    super
    puts "***********************************"
    puts "********** this is create *********"
    puts "***********************************"

    puts params
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
