class Person
  def a(time)
    sleep(time)
    'Hello'
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: 'Hello', b: 20)

      expect(person.a).to eq('Hello')
      expect(person.b).to eq(20)
    end
  end

  describe 'instance double' do
    it 'can only implement methods that are defined in the class' do
      person = instance_double(Person)
      allow(person).to receive(:a).with(1).and_return('Hello')

      expect(person.a(1)).to eq('Hello')
    end
  end
end