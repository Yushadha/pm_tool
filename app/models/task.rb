class Task < ActiveRecord::Base

	validates :title, presence: true, uniqueness: {scope: :body, case_sensitive: :false}

end