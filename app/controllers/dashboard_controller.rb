class DashboardController < ApplicationController    
    def index
        if current_user.user?
            redirect_to new_dashboard_path
        end
    end
    
    def new
        if current_user.user?
        @skills = current_user.skills.build
        else
            redirect_to dashboard_path
        end
    end

    def create
        @skills = current_user.skills.build(params.permit(:html5,:css3,:ruby, :javascript, :jquery, :python, :php))
        if @skills.save
            redirect_to dashboard_path
            current_user.beginner!
        else
            redirect_to new_dashboard_path
        end
    end
end
