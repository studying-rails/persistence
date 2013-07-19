class CountersController < ApplicationController
  def show

  end

  def cookie
    key = :counter
    if (value = params[:value])
      cookies[key] = value.to_i
    end
    @value = cookies[key] || 0
    render 'base'
  end

  def database
    if (value = params[:value])
      Counter.value = value.to_i
    end
    @value = Counter.value
    render 'base'
  end
end

