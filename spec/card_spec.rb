class Card

	attr_reader :rank, :suit

	def initialize(rank, suit)
		@rank = rank
		@suit = suit
	end
end

RSpec.describe 'Card' do
	let(:card) { Card.new('Ace', 'Spades') }

	it 'has a rank' do
		expect(card.rank).to eq('Ace')
	end

	it 'has a suit' do
		expect(card.suit).to eq('Spades')
	end

	it 'has a custom error message into the test' do
		comparison = 'Spades'
		expect(card.suit).to eq(comparison), "I expected #{comparison} but I got #{card.suit} instead!"
	end
end