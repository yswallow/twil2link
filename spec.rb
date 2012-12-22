# coding: UTF-8

require './mail2id'
include Twil

describe Twil do
	describe "#to_62" do
		context "id2str (282143167518748673)" do
			it { to_62(282143167518748673).should == "KqDYgSw8bx" }
		end
	end

	describe "#to_num" do
		context "str2id (KqDYgSw8bx)" do
			it { to_num("KqDYgSw8bx").should == 282143167518748673 }
		end
	end

	describe "#to_10" do
		context "num (5)" do
			it { to_10("5").should == 5 }
		end
		
		context "capital (B)" do
			it { to_10("B").should == 11 }
		end

		context "small (d)" do
			it { to_62(to_10("d")).should == "d" }
		end
	end
end
