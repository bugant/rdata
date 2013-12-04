require 'spec_helper'

describe RData::Queue do

  let(:queue) { RData::Queue.new }

  context "An empty queue" do

    it "should be empty" do
      queue.empty?.should eql(true)
    end

    it "should enqueue an element" do
      queue.enqueue(9)
      queue.peek.should eql(9)
    end

    it "should raise an error when dequeueing from an empty queue" do
      expect {
        queue.dequeue
      }.to raise_error(StandardError)
    end
  end

  context "A queue with elements" do
    before(:each) do
      queue.enqueue(5)
      queue.enqueue(8)
    end

    it "should not be empty" do
      queue.empty?.should eql(false)
    end

    it "should reveal the first element" do
      queue.peek.should eql(5)
    end

    it "should dequeue the first element" do
      queue.dequeue
      queue.peek.should eql(8)
    end

  end

end


