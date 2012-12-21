require 'spec_helper'

describe RData::LinkedLists::SingleLinkedList do

  let(:list) { RData::LinkedLists::SingleLinkedList.new }
  let(:node) { RData::LinkedLists::Node.new(1) }

  context "An empty List" do
    it { should be_is_empty }

    its(:count) { should eq 0 }
    its(:head) { should be_nil }
    its(:tail) { should be_nil }

    it "should add element to the end" do
      subject.add_last(node)
      subject.tail.should eq(node)
    end

    it "should add element to the head" do
      subject.add_first(node)
      subject.head.should eq(node)
    end
  end

  context "A list with elements" do
    before :each do
      list.add_last(node)
      list.add_last(RData::LinkedLists::Node.new(2))
      list.add_last(RData::LinkedLists::Node.new(3))
    end
    subject { list }

    its(:count) { should eq 3 }

    it "should add element to the end" do
      subject.add_last(node)
      subject.tail.should eq(node)
    end

    it "should add element to the head" do
      subject.add_first(node)
      subject.head.should eq(node)
    end

    it "should find element" do
      subject.find(2).value.should eq 2
    end
  end
end


describe RData::LinkedLists::Node do
  subject { RData::LinkedLists::Node.new(10) }

  its(:value) { should eq 10 }
  its(:next) { should be_nil }

  it 'should raise exeption when create without value' do
    expect {
      described_class.new
    }.to raise_error(StandardError)
  end
end
