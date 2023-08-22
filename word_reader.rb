class WordReader
	def read_from_file(file_name)
		begin
		f = File.new(file_name)
		lines = f.readlines
		f.close
		return lines.sample.chomp
		rescue SystemCallError
			exit
		end
	end
end