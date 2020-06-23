class MembersController < ApplicationController
    def index
        @members = Member.all
        render 'index'
    end

    def show
        @member = Member.find(params[:id])
    end

end
