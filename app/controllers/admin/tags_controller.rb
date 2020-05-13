module Admin

  class TagsController < ApplicationController
    before_action :only_admin

    def index
      @tags = ActsAsTaggableOn::Tag.all
    end

  end




end
