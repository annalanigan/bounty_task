require('pg')

class Bounty

  attr_accessor :name, :species, :bounty_value, :favourite_weapon
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @species = options['species']
    @bounty_value = options['bounty_value']
    @favourite_weapon = options['favourite_weapon']
  end

  def save
    db = PG.connect( {dbname: 'bounties', host: 'localhost'} )
    sql = 'INSERT INTO bounties
    (
      name,
      species,
      bounty_value,
      favourite_weapon
    )
    VALUES (
      $1, $2, $3, $4
      )
      RETURNING *
      '
    values = [@name, @species, @bounty_value, @favourite_weapon]
    db.prepare("save", sql)
    @id = db.exec_prepared("save", values)[0]['id'].to_i
    db.close
  end

  def delete
    db = PG.connect( {dbname: 'bounties', host: 'localhost'} )
    sql = 'DELETE FROM bounties
    WHERE id = $1'
    values = [@id]
    db.prepare('delete', sql)
    db.exec_prepared('delete', values)
    db.close
  end

  def update
    db = PG.connect( {dbname: 'bounties', host: 'localhost'} )
    sql = 'UPDATE bounties
    SET(
      name,
      species,
      bounty_value,
      favourite_weapon
      ) =
      ($1, $2, $3, $4)
      WHERE id = $5'
      values = [@name, @species, @bounty_value, @favourite_weapon, @id]
      db.prepare('update', sql)
      db.exec_prepared('update', values)
      db.close
  end

  def self.all
    db = PG.connect( {dbname: 'bounties', host: 'localhost'} )
    sql = 'SELECT * FROM bounties'
    values = []
    db.prepare('all', sql)
    found_bounty = db.exec_prepared('all', values)
    db.close
    return found_bounty.map { |item| Bounty.new(item)}
  end

  def self.find(id)
    db = PG.connect( {dbname: 'bounties', host: 'localhost'} )
    sql = 'SELECT * FROM bounties WHERE id = $1'
    values = [id]
    db.prepare('find', sql)
    found_bounty = db.exec_prepared('find', values)
    db.close
    return found_bounty.map { |item| Bounty.new(item)}[0]
  end


end
