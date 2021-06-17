class HealthcheckController < ApplicationController
  def index
    render plain: 'HEALTHCHECK_OK'
  end
end
