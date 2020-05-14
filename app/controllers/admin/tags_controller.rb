module Admin

  class TagsController < ApplicationController
    # before_action :only_admin
    before_action :set_tag, only: [:create, :destroy]
    before_action :set_place, only: [:create, :destroy]

    def index
      @tags = ActsAsTaggableOn::Tag.all
    end

  end

end
