class Post < ApplicationRecord
    private

    def set_slug
        self.slug = title.to_s.parameterize
    end
end
