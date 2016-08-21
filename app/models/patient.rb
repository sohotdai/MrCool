class Patient < ActiveRecord::Base

	after_create :mr_after_create
	belongs_to :location
	default_scope { where(is_deleted: false) }
	scope :onTreatment,  -> { where(status: 3) }


	private
		def mr_after_create
			mr = self.id.to_s
		    pre_fix = 6 - mr.length
		    pre_fix.times {mr.insert(0, '0')} if pre_fix
		    self.medical_record_number = mr
			self.save
		end
end
