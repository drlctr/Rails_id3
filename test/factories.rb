FactoryGirl.define do

  factory :musicians do
  	name					'Bob Mould'
  	instrument		'Guitar'
  end

  factory :id3_tag do
    song_title    'Flip Your Wig'
    artist        'Husker Du'
    album_title   'Flip Your Wig'
    track         1
    path          '~/music/flip_your_wig.mp3'
    association :musicians
  end



end
