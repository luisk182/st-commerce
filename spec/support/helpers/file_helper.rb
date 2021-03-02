module Helpers
  module FileHelper
    extend self

    def different_generic_image
      Rack::Test::UploadedFile.new(different_generic_image_path)
    end

    def generic_image
      Rack::Test::UploadedFile.new(generic_image_path)
    end

    private

    def different_generic_image_path
      File.join(Rails.root, 'spec', 'support', 'images', 'other_image.png')
    end

    def generic_image_path
      File.join(Rails.root, 'spec', 'support', 'images', 'image.png')
    end
  end
end
