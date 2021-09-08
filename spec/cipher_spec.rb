require './Caesar_cipher.rb'


describe 'caesar_cipher' do
    it 'Takes a string of lower case letters and shift factor and puts
    out a string shifted by the factor' do
    expect(caesar_cipher('abc', 2)).to eql('yza')
    end 

    it 'Takes numbers, symbols, spaces, and letters, but only changes the letters.' do
        expect(caesar_cipher('blue32!', 1)).to eql('aktd32!')
    end

    it 'Shifts uppercase letters' do
        expect(caesar_cipher('Blue32!', 1)).to eql('Aktd32!')
    end

    it 'Keeps spacing' do
        expect(caesar_cipher('blue red', 1)).to eql('aktd qdc')
    end

end