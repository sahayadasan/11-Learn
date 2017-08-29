class KlassesController < ApplicationController
  before_action :auth_teacher

  def index
    @klasses = Klass.all.order(id: 'asc')
    ap @klasses
  end

  def new
    @klass = Klass.new
  end

  def create
    @klass = Klass.new(params[:klass].permit(:name, :subject, :level, :credits))
    if @klass.save
      redirect_to klasses_path
    else
      render 'new'
    end
  end
end
