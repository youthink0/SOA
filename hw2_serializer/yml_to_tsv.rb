# frozen_string_literal: true

class YmlToTsv
  require 'yaml'
  def initialize(yml_infile, tsv_outfile)
    @yml_infile = yml_infile
    @tsv_outfile = tsv_outfile
    @keys = %w[date student_id languages best_languages app_experience tech_experience]
    @yml_record = ''
  end

  def read_yml
    @yml_data = YAML.safe_load(File.read(@yml_infile))
  end

  def to_tsv_format
    @keys.each { |key| @yml_record += key == 'tech_experience' ? "#{key}\n" : "#{key}\t" }
    @yml_data.each do |line|
      line.each { |key, value| @yml_record += key == 'tech_experience' ? "#{value}\n" : "#{value}\t" }
    end
    @yml_record
  end

  def tsv_output
    File.write(@tsv_outfile, @yml_record)
  end
end

test = YmlToTsv.new(ARGV[0], ARGV[1])
test.read_yml
test.to_tsv_format
test.tsv_output
