class TropoController < ApplicationController
  skip_before_action :verify_authenticity_token

  def entry
    todo = Todo.find(params[:session][:parameters][:todo_id])
    tropo = Tropo::Generator.new
    tropo.message(say: {value: todo.text_message}, to: "+13039073523", network: "SMS")
    render json: tropo.response
  end
end
