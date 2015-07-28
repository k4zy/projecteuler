# coding: utf-8
require 'active_support/all'

# 10未満の自然数のうち, 3 もしくは 5 の倍数になっているものは 3, 5, 6, 9 の4つがあり, これらの合計は 23 になる.
# 同じようにして, 1000 未満の 3 か 5 の倍数になっている数字の合計を求めよ.

class One
  def self.main
    fizz_buzz = -> (x) { x%3==0 || x%5==0 }
    ((1...1000).select &fizz_buzz).sum
  end
end

describe One do
  describe '#main' do
    it 'Correct value' do
      expect(One.main).to eq 233168
    end
  end
end
