require_relative 'lib/grup'


object = Grup::Calculator.new('new_dir')

object.calculate_metrics("new2.txt")

object.compare_reports("new.txt", "new2.txt")