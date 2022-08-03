require_relative 'spec_helper'

RSpec.describe Student do
  
  let(:student) { 
    described_class.new(
      {name: "Morgan", age: 21}
    ) 
  }

  context 'Iteration 1 setup' do

    it 'exists' do
      expect(student).to be_a(described_class)
    end

    it '#name' do
      expect(student.name).to eq("Morgan")
    end

    it '#age' do
      expect(student.age).to eq(21)
    end

    it '#scores' do
      expect(student.scores).to eq([])
    end
  
  context 'Iteration 1 logging scores'
    
    it '#log_score' do
      student.log_score(89)
      student.log_score(78)
  
      expect(student.scores).to eq([89, 78])
    end

    it '#grade' do
      student.log_score(89)
      student.log_score(78)
  
      expect(student.grade).to eq(83.5)
    end
  end
end