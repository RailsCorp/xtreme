class GroupsController < ApplicationController
  def index
    @group = Group.includes(:member)
  end
end
