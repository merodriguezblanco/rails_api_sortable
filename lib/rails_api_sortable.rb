module RailsApiSortable
  extend ActiveSupport::Concern
  
  private

  def sort_by
    { params[:sort] => params[:sort_direction] || :asc } if params[:sort]
  end
end

ActionController::Base.send :include, RailsApiSortable

if defined? ActionController::API
  ActionController::API.send :include, RailsApiSortable
end
