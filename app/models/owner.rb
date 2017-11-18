class Owner

  def to_s
    Rails.logger.debug 'DEBUG: '.background(:yellow) + 'Tekst z metody dupa'.color(:yellow)
    self.class.to_s + 'dupa'
  end

  def name
    Rails.logger.debug 'DEBUG:  Tekst z metody name'.background(:green)
    puts to_s
    name = 'Foobar Kadigan'
  end
  def birthdate
    Rails.logger.debug 'DEBUG: '.background(:yellow) + 'Tekst z metody birthday'.background(:yellow)
    birthdate = Date.new(1990, 12, 22)
  end
  def countdown
    Rails.logger.debug 'DEBUG: Tekst z metody countdown'.background(:green)
    today = Date.today
    birthday = Date.new(today.year, birthdate.month, birthdate.day)
    if birthday > today
      countdown = (birthday - today).to_i
    else
      countdown = (birthday.next_year - today).to_i
    end
  end


end
