require_relative '../lib/grup'

RSpec.describe Grup::Calculator do
    describe '#create_report' do
      it 'создаёт отчёт с правильными данными' do
        report = Grup::Calculator.new('spec/new_dir')
        result = report.calculate_metrics("spec/test.txt")
  
        expect(result[:count_files]).to eq(14)
        expect(result[:count_pictures]).to eq(5)
        expect(result[:count_classes]).to eq(7)
		expect(result[:count_line]).to eq(93)

        report2 = Grup::Calculator.new('spec/new_dir/папка1')
        result2 = report2.calculate_metrics("spec/test2.txt")

        expect(result2[:count_files]).to eq(3)
        expect(result2[:count_pictures]).to eq(1)
        expect(result2[:count_classes]).to eq(0)
		expect(result[:count_line]).to eq(0)
		
		
      end
    end
end
