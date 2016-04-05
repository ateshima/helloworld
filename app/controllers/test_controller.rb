class TestController < ApplicationController
skip_before_action :verify_authenticity_token

def index

t = Tropo::Generator.new
t.say(:value => "Hello World!")
render :json => t.response
end

end
