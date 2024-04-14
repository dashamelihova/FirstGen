
require_relative "grup/version"

module Grup
  #class Error < StandardError; end
  class Calculator
	attr_accessor :code_dir
    def initialize(code_dir)
		@code_dir = code_dir
    end

    def calculate_metrics(output_file)
		files = Dir.glob(File.join(@code_dir, '**', '*.{rb,png,jpg,webp,webm,py,java}'))
		classes = 0
		count_image = 0
		files.each do |f|
			if f.end_with?('.jpg') || f.end_with?('.png') || f.end_with?('.webp') || f.end_with?('.webm') #tried ['.jpg', '.png', '.webp', '.webm'].include?(f.extname) but gives error on .py
				count_image += 1 
			else
				classes += count_classes(f)

			end
			
		end
		#puts count_jpg # количество изображений
		File.open(output_file, 'w')do |file|

			file.puts "count files: " + files.count.to_s
			file.puts "count pictures: " + count_image.to_s
			file.puts "count classes: " + classes.to_s

		end

		puts "count files: " + files.count.to_s
		puts "count pictures: " + count_image.to_s
		puts "count classes: " + classes.to_s
		puts
    end
    
	#comparing reports
	def compare_reports(report_path_1, report_path_2)
		report_1 = File.read(report_path_1)
		report_2 = File.read(report_path_2)
	  
		# Парсим данные из отчетов
		data_1 = parse_report(report_1)
		data_2 = parse_report(report_2)
	  
		# Сравниваем данные
		compare_data(data_1, data_2)
	  end
	  
	def parse_report(report)
		data = {}
		report.each_line do |line|
		  key, value = line.split(': ')
		  data[key] = value.to_i
		end
		data
	end
	  
	def compare_data(data_1, data_2)
		puts "Comparison Results:"
		puts "Key\t\t| Report 1\t| Report 2"
		data_1.each do |key, value|
		  if data_2[key]
			if data_1[key] != data_2[key]
			  puts "#{key}\t| #{data_1[key]}\t\t|\t#{data_2[key]}"
			end
		  end
		end
	end  

    private
	
	#Also we can find count of methods and line here
    def count_classes(code_file)
      nodes = 0 #return count of classes
	  flag = true
	  #count for ruby file
	  if code_file.end_with? '.rb'
		File.open(code_file).each do |line|
			#look at the comment
			if line.start_with?('=begin')
				flag = false
			elsif line.start_with?('=end')
				flag = true
			else
				nodes += line.lstrip.start_with?('class ') && flag==true ? 1 : 0
			end
		end
		#count for python file
	  elsif code_file.end_with? '.py'
		File.open(code_file).each do |line|
		#look at the comment
			if line.include?('"""')
				flag = !flag
			else
				nodes += line.strip.start_with?('class ') && flag==true ? 1 : 0
			end			
		end
		#count for java file
	  elsif code_file.end_with? '.java'
		File.open(code_file).each do |line|
			#look at the comment
			if line.start_with?('/*')  #comment opened
				flag = false
			elsif line.start_with?('*/') #comment close
				flag = true
			else
				nodes += line.include?(' class ') && flag==true ? 1 : 0
			end	
		end
	  end
	  
	  return nodes
    end
  end
end


#число строк
#несколько языков
#количество методов
#!!!!!!!!число файлов-изображений
#!!!!!!!!конечная папка. рекурсия на папки
#изменение (но это не точно)