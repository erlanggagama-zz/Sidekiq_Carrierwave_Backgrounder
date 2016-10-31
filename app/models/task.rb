class Task < ActiveRecord::Base
  belongs_to :project
  mount_uploader :image, PhotoUploader

  process_in_background :image
end
