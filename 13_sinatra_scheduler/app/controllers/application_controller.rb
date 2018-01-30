class ApplicationController < Sinatra::Base
  set :views, 'app/views'

  get '/' do
    erb :'index.html'
  end

  get '/schedule' do
    @courses = Course.where(on_schedule: true)
    erb :'schedule.html'
  end

  post '/schedule/:id' do
    @course = Course.find(params[:id])
    courses = Course.where(on_schedule: true)
    total_credits = courses.inject(0) {|sum, course| sum + course.credits}
    if total_credits + @course.credits <= 15
      @course.update(on_schedule: true)
    end
    redirect '/schedule'
  end

  delete '/schedule/:id' do
    @course = Course.find(params[:id])
    @course.update(on_schedule: false)
    redirect '/schedule'
  end

end
