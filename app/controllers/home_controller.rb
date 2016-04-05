class HomeController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  def index
    @stuff_for_view = "Test"
  end

  def send_text
    TextMessage.create(:message => params[:message], :number => params[:number])
    puts params
  end

end
