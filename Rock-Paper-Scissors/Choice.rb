class Choice
  def initialize(id, name, win_phrase, beats)
    @ID = id
    @NAME = name
    @WIN_PHRASE = win_phrase
    @BEATS = beats
  end

  def get_name
    return @NAME
  end

  def get_win_phrase
    return @WIN_PHRASE
  end

  def get_id
    return @ID
  end

  def beats(choice)
    if @BEATS == choice.get_id
      return true
    else
      return false
    end
  end
end
