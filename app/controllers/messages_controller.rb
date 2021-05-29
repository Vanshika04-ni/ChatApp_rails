class MessagesController < ApplicationController
    def create
        #byebug
        message=current_user.messages.build(params.require(:message).permit(:body))
        message.save

        
        
    end       
end
