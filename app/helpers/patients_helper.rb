module PatientsHelper
	# handler of Medical Record number
	def showMR(text)
		text.insert(0, 'MR') if text.length>0
	end

	# handler of gender
	def showGender(text)
		case text
		when 1
			text = t("patinet.Male")
		when 2
			text = t("patinet.Female")
		else
			text = t("patinet.not_available")
		end
	end

	# handler of status
	def showStatus(text)
		case text
		when 1
			text = t("patinet.Initial")
		when 2
			text = t("patinet.Referred")
		when 3
			text = t("patinet.Treatment")
		when 4
			text = t("patinet.Closed")
		else
			text = ''
		end
	end

	# select data
	def selectData(text)
		case text
		when :gender
			data = [[t("patinet.not_available"), 0], [t("patinet.Male"), 1], [t("patinet.Female"), 2]]
		when :status
			data = [[t("patinet.Initial"), 1], [t("patinet.Referred"), 2], [t("patinet.Treatment"), 3], [t("patinet.Closed"), 4]]
		when :location_id
			hash = {}
			locations = Location.all
			locations.each do |i|
				hash[i.name] = i.id
			end
			data = hash.to_a
		end
	end

	def I18nChange(text,type)
		text
		flag = text.include? '?locale'
		if flag
			limit = text.index("?locale")
			text = text[0,limit] << "?locale=#{type}"
		else
			text << "?locale=#{type}"
		end
	end
end
