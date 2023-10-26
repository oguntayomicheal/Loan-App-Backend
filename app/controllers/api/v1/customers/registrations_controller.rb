class Api::V1::Customers::RegistrationsController < Devise::RegistrationsController
  # Skip CSRF protection for JSON requests
  skip_before_action :verify_authenticity_token
  respond_to :json

  def create
    build_resource(sign_up_params)
    if resource.save
      render json: resource
    else
      render json: { errors: resource.errors }, status: :unprocessable_entity
    end
  end

  private

  def sign_up_params
    params.require(:customer).permit(:name, :email, :password, :password_confirmation)
  end
end
