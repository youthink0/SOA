# frozen_string_literal: true

class TsvToYml
  require 'yaml'
  def initialize(tsv_infile, yml_outfile)
    @tsv_infile = tsv_infile
    @yml_outfile = yml_outfile
    @res = []
  end

  def read_tsv
    @tsv_data = File.read(@tsv_infile).split("\n")
    @keys = @tsv_data[0].split("\t")
  end

  def to_yml_format
    @tsv_data.each do |line|
      values = line.split("\t")
      next if values[0] == 'date'

      tsv_record = {}
      @keys.each_index { |index| tsv_record[@keys[index]] = values[index] }
      @res << tsv_record
    end
  end

  def yml_output
    File.open(@yml_outfile, 'w') do |file|
      file.puts @res.to_yaml
    end
  end
end

test = TsvToYml.new(ARGV[0], ARGV[1])
test.read_tsv
test.to_yml_format
test.yml_output
