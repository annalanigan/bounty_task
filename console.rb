require ('pry-byebug')
require_relative('models/bounty.rb')

bounty5 = Bounty.new(
  {'name' => 'Blorg the Zorg',
  'species' => 'Zorg',
  'bounty_value' => '100',
  'favourite_weapon' => 'Blaster'}
)

bounty8 = Bounty.new(
  {'name' => 'Beefy',
  'species' => 'Casserole Monster',
  'bounty_value' => '15',
  'favourite_weapon' => 'Harpsichord Of Flames'}
)

bounty7 = Bounty.new(
  {'name' => 'Ryan',
  'species' => 'Pygmy Terror',
  'bounty_value' => '62',
  'favourite_weapon' => 'Teeth'}
)

bounty7.save
bounty8.save

p Bounty.find.first


binding.pry
nil
