require 'chiffrer_des_donnees'

describe 'what is this string' do
    describe '#caesar_number' do
        it 'code me this' do
        expect(caesar_number("What a string!",5)).to eq("bmfy f xywnsl!")
        end
    end
end