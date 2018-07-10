require 'multiple_3_et_5'

describe 'Find the sum of the multiples of 3 or 5 less than 1000' do

    describe '#integers_below_10' do
        it 'give me the sum of these numbers' do
            expect(integers_below_10("10")).to eq ("23")
        end
    end
    
    describe '#integers_below_1000' do
        it 'give me the sum of 1000' do
        expect(integers_below_1000("1000")).to eq ("233168")
        end
    end
end