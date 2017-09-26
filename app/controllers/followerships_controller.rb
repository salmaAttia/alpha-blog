class FollowershipsController < ApplicationController
    def new
        @followership = Followership.new
      end

    def create
        @followership = Followership.new(current_user :user_id, params[:id] )
        if @followership.save
          flash[:success] = "You are now following #{User.find(@followership.follower_id).username}"         
        else
          render 'new'
        end
    end  
end