
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
		
		metrics_data = {
			count_files: files.count,
			count_pictures: count_image,
			count_classes: classes
		}

		File.open(output_file, 'w')do |file|

			file.puts "count files: #{metrics_data[:count_files]}"
			file.puts "count pictures: #{metrics_data[:count_pictures]}"
			file.puts "count classes: #{metrics_data[:count_classes]}"

		end

		puts "count files: #{metrics_data[:count_files]}"
		puts "count pictures: #{metrics_data[:count_pictures]}"
		puts "count classes: #{metrics_data[:count_classes]}"
		puts
	    return metrics_data	
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