class Task < ApplicationRecord
	has_many :parts, inverse_of: :task, :dependent => :delete_all
	accepts_nested_attributes_for :parts,
																reject_if: proc { |attributes| attributes['name'].blank? },
																allow_destroy: true

	validates :name, :start_date, :end_date, presence: true

	def start_time
		self.start_date
	end

	def end_time
		self.end_date
	end
end
