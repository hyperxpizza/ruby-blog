class Post < ApplicationRecord
    private

    after_validation :set_slug, only: [:create, :update]

    def set_slug
        self.slug = title.to_s.parameterize
    end
end
