class RegionsController < ApplicationController
	def new
		@region = Region.new
		
		respond_to do |format|
			format.html
		end
	end
	
	def create
		@region = Region.new(params[:region])
		
		respond_to do |format|
			if @region.save
			  format.html { redirect_to(:action=>"new") }
			  flash[:notice] = "The region " + @region.region_name + " was successfully added!"
			  format.xml  { render :xml => @region,
							:status => :created, :location => @post }
			else
			  format.html { render :action => "new" }
			  format.xml  { render :xml => @post.errors,
							:status => :unprocessable_entity }
			end
		end
	end
end