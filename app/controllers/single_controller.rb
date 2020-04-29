class SingleController < ApplicationController
    $last_throw
    def index
        @user_toss = $last_throw
    end

    def throw
        $last_throw = params[:option]
        render "single/index"
    end


end