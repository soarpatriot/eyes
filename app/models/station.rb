class Station < ActiveRecord::Base
  acts_as_xlsx

  has_many :points, as: :pointable, dependent: :destroy
  has_many :areas, dependent: :destroy

  belongs_to :stationable, polymorphic: true

  def self.provinces
    book = Spreadsheet.open('/home/liuhaibao/provinces.xlsx','r')
    sheet = book.worksheet(0)
  end
  def self.import(file)
    spreadsheet = open_spreadsheet(file)
    (2..spreadsheet.last_row).each do |i|
    
    end
  end
  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when ".csv" then Csv.new(file.path, nil, :ignore)
    when ".xls" then Excel.new(file.path, nil, :ignore)
    when ".xlsx" then Excelx.new(file.path, nil, :ignore)
    else raise "Unknown file type: #{file.original_filename}"
    end
  end
end
