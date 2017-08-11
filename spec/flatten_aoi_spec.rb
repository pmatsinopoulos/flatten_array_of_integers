require_relative '../flatten_aoi'

describe 'Flatten Array of Integers Recursive' do
  [
      {input: nil, output: nil},
      {input: [], output: []},
      {input: [1], output: [1]},
      {input: [[1]], output: [1]},
      {input: [1, 2, [3]], output: [1, 2, 3]},
      {input: [[1, 2, [3]]], output: [1, 2, 3]},
      {input: [[1], [2], [3]], output: [1, 2, 3]},
      {input: [[1, 2, [3]], 4], output: [1, 2, 3, 4]},
      {input: [1, 2, 3, 4], output: [1, 2, 3, 4]}
  ].each do |kase|
    it "with input: #{kase[:input].inspect} we get output: #{kase[:output].inspect}" do
      expect(flatten_aoi_recursive(kase[:input])).to eq(kase[:output])
      expect(flatten_aoi_recursive(kase[:input])).to eq((kase[:input].flatten rescue nil))
    end
  end
end
