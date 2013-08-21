# encoding: utf-8

class StoryMainUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  include CarrierWave::RMagick

  process :convert => 'png'
  process :resize_to_fill => [300, 190]

  version :retina do
  	process :resize_to_fill => [600, 380]
  end

end
