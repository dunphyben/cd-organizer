require 'rspec'
require 'cd_org'

describe 'CD' do

  before do
    CD.clear
  end

  describe '#initialize' do
    it 'initializes a CD with a title and artist' do
      test_cd = CD.new('Mozart', 'headbanging classical shit')
      test_cd.should be_an_instance_of CD
    end
  end

  describe '#create' do
    it 'creates a new instance of the CD class' do
      test_cd = CD.create('Mozart', 'headbanging classical shit')
      test_cd.should be_an_instance_of CD
    end

    it 'saves the created cd' do
      test_cd = CD.create('Mozart', 'headbanging classical shit')
      CD.all.should eq [test_cd]
    end
  end

  describe '.all' do
    it 'is an empty array at first that will eventually hold all cds' do
      CD.all.should eq []
    end
  end

  describe '#save' do
    it 'saves the instance of a CD to an empty array' do
      test_cd = CD.new('Mozart', 'headbanging classical shit')
      test_cd.save
      CD.all.should eq [test_cd]
    end
  end

  describe "#edit_title" do
    it 'allows the user to change the title of a CD' do
      test_cd = CD.create('Mozart', 'headbanging classical shit')
      test_cd.edit_title('calm relaxing music')
      test_cd.title.should eq 'calm relaxing music'
    end
  end

  describe "#edit_artist" do
    it 'allows the user to change the artist name on the cd' do
      test_cd = CD.create('Mozart', 'headbanging classical shit')
      test_cd.edit_artist('Slayer')
      test_cd.artist.should eq 'Slayer'
    end
  end

  describe '#remove_cd' do
    it 'allows the user to remove a cd from the library/array' do
      test_cd = CD.create('Mozart', 'headbanging classical shit')
      test_cd.remove_cd('headbanging classical shit')
      CD.all.should eq []
    end
  end

  describe '.search' do
    it 'allows the user to search for a specific CD' do
      test_cd1 = CD.create('Mozart', 'headbanging classical shit')
      test_cd2 = CD.create('green', 'asdfasdf')
      test_cd3 = CD.create('red', 'hkjlhjklkj')
      test_cd4 = CD.create('blue', '123412341234')
      CD.search('red').should eq test_cd3
    end
  end

end

















