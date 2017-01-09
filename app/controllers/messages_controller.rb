class MessagesController < ApplicationController
  def index
    @message = Message.new
    # Messageを全て取得する。
    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)
<<<<<<< HEAD
    @message.save
    redirect_to root_path , notice: 'メッセージを保存しました'
=======
    if @message.save
      redirect_to root_path , notice: 'メッセージを保存しました'
    else
      #メッセージを保存できなかった場合
      @messages = Message.all
      flash.now[:alert] = "メッセージの保存に失敗しました"
      render 'index'
    end
>>>>>>> cd548f6... Implementation of the validation
  end

  private
  def message_params
    params.require(:message).permit(:name, :body)
  end
  ## ここまで
end