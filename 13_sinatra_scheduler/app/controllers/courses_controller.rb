class CoursesController < Sinatra::Base
  set :views, 'app/views/courses'
  set :method_override, true

  get '/courses' do
    @courses = Course.all
    erb :'index.html'
  end

  get '/courses/:id' do
    @course = Course.find(params[:id])
    erb :'show.html'
  end

  get '/courses/:id/edit' do
    @course = Course.find(params[:id])
    erb :'edit.html'
  end

  patch '/courses/:id' do
    @course = Course.find(params[:id])
    @course.update(params[:course])
    redirect "/courses/#{@course.id}"
  end
end
