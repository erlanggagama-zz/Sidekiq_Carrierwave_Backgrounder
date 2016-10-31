class Project < ActiveRecord::Base
  has_many :tasks
  accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
  mount_uploader :project_image, ProjectPhotoUploader

  process_in_background :project_image
end
