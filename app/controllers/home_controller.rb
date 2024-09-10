class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:upload_student_card]

  def index
    # Home#indexのアクション内容
  end

  def upload_student_card
    current_user.student_card_front.attach(params[:user][:student_card_front])
    current_user.student_card_back.attach(params[:user][:student_card_back])
    redirect_to root_path, notice: 'Student card uploaded successfully.'
  end
end