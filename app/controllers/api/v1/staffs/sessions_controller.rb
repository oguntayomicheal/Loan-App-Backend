# app/controllers/api/v1/staff/sessions_controller.rb

class Api::V1::Staffs::SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token 
  def login
        #  render json: { message: "Login successful"}
        @staff = Staff.find_by(staff_id: params[:staff_id])
        if @staff
            # session[:user_id] = @user.id
            render json: { success: true, id: @staff.id, staffName:@staff.name }, status: :ok
          else
            render json: { success: false, error: 'Invalid staff ID' }, status: :unprocessable_entity
          end
    end
  
    private
  
    def session_params
      params.require(:session).permit(:staff_id)
    end
  end
  