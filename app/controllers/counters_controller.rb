class CountersController < ApplicationController
  @@_counter = 0

  def show
  end

  def form
    @value = 0
    try_value { |x| @value = x }
    render 'base'
  end

  def object
    try_value { |x| @@_counter = x.to_i }
    @value = @@_counter
    render 'base'
  end

  def cookie
    key = :counter
    try_value { |x| cookies[key] = x }
    @value = (cookies[key] || 0).to_i
    render 'base'
  end

  def database
    try_value { |x| Counter.value = x }
    @value = Counter.value
    render 'base'
  end

  def try_value(&block)
    params[:value].try do |x|
      yield x.to_i
    end
  end
end

