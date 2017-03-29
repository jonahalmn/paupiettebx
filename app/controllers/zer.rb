class DeviseController < Devise::DeviseController

  protected
  def resource_params
    t
  end
end
