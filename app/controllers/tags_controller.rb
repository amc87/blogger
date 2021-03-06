class TagsController < ApplicationController

	def index
  		@tags = Tag.all
	end

	def show
  		@tag = Tag.find(params[:id])
	end

	def destroy
		@tag = Tag.find(params[:id]).destroy

		flash.notice = "Tag #{@tag.name} has been deleted"

		redirect_to action: :index
		
	end
end
