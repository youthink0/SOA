# Module that can be included (mixin) to take and output TSV data
module TsvBuddy
  # take_tsv: converts a String with TSV data into @data
  # parameter: tsv - a String in TSV format
  def take_tsv(tsv)
    @data = []
    @tsv_data = tsv.split("\n")
    @keys = @tsv_data[0].split("\t")
    @tsv_data.each do |line|
      values = line.split("\t")
      next if values[0] == 'date'

      tsv_record = {}
      @keys.each_index { |index| tsv_record[@keys[index]] = values[index] }
      @data << tsv_record
    end
  end

  # to_tsv: converts @data into tsv string
  # returns: String in TSV format
  def to_tsv
    # use any data in @data and return a String in TSV format.
    @record = ''
    @data[0].each { |key, _value| @record += key == 'tech_experience' ? "#{key}\n" : "#{key}\t" }
    @data.each do |line|
      line.each { |key, value| @record += key == 'tech_experience' ? "#{value}\n" : "#{value}\t" }
    end
    @record
  end
end
