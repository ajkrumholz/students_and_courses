require_relative 'spec_helper'

RSpec.describe Course do
  
  context 'Course class setup' do
    let(:course) { described_class.new("Calculus", 2) }
    let(:student1) { Student.new({name: "Morgan", age: 21}) }
    let(:student2) { Student.new({name: "Jordan", age: 29}) }

    it 'exists' do
      expect(course).to be_a(described_class)
    end

    it '#name' do
      expect(course.name).to eq("Calculus")
    end

    it '#capacity' do
      expect(course.capacity).to eq(2)
    end    

    it '#students' do
      expect(course.students).to eq([])
    end

    it '#full?' do
      expect(course.full?).to be(false)
    end

    it '#enroll' do
      course.enroll(student1)
      course.enroll(student2)
      expect(course.students).to eq([student1, student2])
      expect(course.full?).to be(true)
    end
  end
end