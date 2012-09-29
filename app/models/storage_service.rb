class StorageService < ActiveRecord::Base
  TYPES = %w(s3 dropbox)
  belongs_to :user

  attr_accessible :kind, :name
end
