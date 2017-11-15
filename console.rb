require ('pry-byebug')
require_relative('models/bounty.rb')

bounty1 = Bounty.new(
  {'name' => 'Blorg the Zorg',
  'species' => 'Zorg',
  'bounty_value' => '100',
  'favourite_weapon' => 'Blaster'}
)

bounty2 = Bounty.new(
  {'name' => 'Beefy',
  'species' => 'Casserole Monster',
  'bounty_value' => '15',
  'favourite_weapon' => 'Harpsichord Of Flames'}
)

bounty3 = Bounty.new(
  {'name' => 'Ryan',
  'species' => 'Pygmy Terror',
  'bounty_value' => '62',
  'favourite_weapon' => 'Teeth'}
)

bounty4 = Bounty.new(
  {'name' => 'Shockolate Santa',
  'species' => 'Festive Demon',
  'bounty_value' => '1',
  'favourite_weapon' => 'Bag Of Electrified Presents'}
)

bounty5 = Bounty.new(
  {'name' => 'Bryan The Bandit',
  'species' => 'Human',
  'bounty_value' => '5000',
  'favourite_weapon' => 'Knife'}
)

# bounty1.save
# bounty2.save
# bounty3.save
#
# bounty3.name = "The Mini Menace"
# bounty3.update
#
# bounty4.save
# bounty4.delete

found_bounty = Bounty.find('2')
found_bounty.bounty_value = 100
found_bounty.update

p Bounty.all.first


binding.pry
nil
