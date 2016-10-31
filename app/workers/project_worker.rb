class ProjectWorker
  include Sidekiq::Worker

  def perform
    sleep 20
    puts ("this is after 20 secs")
  end
end