require_relative '../lib/grup'

RSpec.describe Grup::Calculator do
    describe '#create_report' do
      it 'создаёт отчёт с правильными данными' do
        report = Grup::Calculator.new('spec/new_dir')
        result = report.calculate_metrics("spec/test.txt")
  
        expect(result[:count_files]).to eq(14)
        expect(result[:count_pictures]).to eq(5)
        expect(result[:count_classes]).to eq(7)
      end
    end
end