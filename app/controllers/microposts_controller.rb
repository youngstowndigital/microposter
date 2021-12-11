class MicropostsController < ApplicationController
    def index
        @microposts = Micropost.paginate(page: params[:page])
    end
end
