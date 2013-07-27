class ProjectsController < ApplicationController
  def index
  	@project = Project.all
  end

  def new
  	@project = Project.new
  end
  def create
  	@project = Project.new(params[:project])

  		if @project.save
  			redirect_to(projects_path)
  		else
  			redirect_to(new_path)
  		end
  	end

  	def project
  		@project = Project.find(params[:id])
  	end

  	def edit_project
  	end

  	def delete
  	end

end
