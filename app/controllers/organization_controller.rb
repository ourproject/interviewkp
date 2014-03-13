class OrganizationController < ApplicationController
  def index
  end

  def show_clips
  	@clips=Clip.all

  end

  def show_candidates 
  	@clips=Clip.all
  end
end
