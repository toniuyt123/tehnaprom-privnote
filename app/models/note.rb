class Note < ApplicationRecord
	before_create :generate_slug

	private
	def generate_slug
		while(true)
			self.slug = SecureRandom.urlsafe_base64
			break unless Note.where(slug: slug).exists?
		end
	end
end
