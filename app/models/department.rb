class Department < ActiveRecord::Base
  enum dtype: [:station,:distribution_center, :tiaoling]

  def self.write_to_file


    xlsx = Roo::Excelx.new("/Users/liuhaibao/express.xlsx")
    file = File.open("/Users/liuhaibao/aa.txt", "w")
    xlsx.each_row_streaming do |row|
      first = row[0].to_s.gsub!(',','')
      puts first
      Department.create id: first,name:row[1], dtype: row[2].to_s.to_i,  city_id: row[3].to_s.to_i 
      sql = "insert into `departments` (`id`, `name`, `dtype`, `city_id`, `created_at`, `updated_at`) VALUES (" +
        "#{first},'#{row[1]}', #{row[2].to_s.to_i}, #{row[3].to_s.to_i}, now(), now()"  + ");"
      file.write(sql) 
      # puts row.inspect # Array of Excelx::Cell objects
    end

        #some error occur, dir not writable etc.
      #ensure
      #  file.close unless file.nil?
      #  end
  end
end
