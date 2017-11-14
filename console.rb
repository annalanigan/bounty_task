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

bounty9 = Bounty.new(
  {'name' => 'Shockolate Santa',
  'species' => 'Festive Demon',
  'bounty_value' => '1',
  'favourite_weapon' => 'Bag Of Electrified Presents'}
)

bounty10 = Bounty.new(
  {'name' => 'Bryan The Bandit',
  'species' => 'Human',
  'bounty_value' => '5000',
  'favourite_weapon' => 'Knife'}
)

bounty9.save
bounty10.save

p Bounty.all.first


binding.pry
nil
