--The sound of the notes are not audio files. They are created here.
--The sound waveform used was the sinoidal waveform
--There is no need to pass math.* to a variable, since those functions runs only once when they are called.

function generateSenoidalNaturalNotes(SR, BR, Ch)
  local x = 0

  local sample_rate = 44100
  local bit_rate = 8
  local channels = 1
  local pi = math.pi
  local insert = table.insert

  if SR ~= nil then
    sample_rate = SR
  end

  if BR ~= nil then
    bit_rate = BR
  end

  if Ch ~= nil then
    channels = Ch
  end

  local sound_sample

  for j = 1, notes_count do
    local frequencie = natural_notes[j][2]
    local wave = {}
    local count = 0

    for i = 1, sample_rate do
      insert(wave, math.sin(x))
      x = x + ((frequencie / sample_rate) * pi)
    end

    while math.sin(x) >= 0 do
      insert(wave, math.sin(x))
      x = x + ((frequencie / sample_rate) * pi)
      count = count + 1
    end

    while math.sin(x) <= 0 do
      insert(wave, math.sin(x))
      x = x + ((frequencie / sample_rate) * pi)
      count = count + 1
    end

    --we created our wave :D
    --time to put it in a sound sample

    sound_sample = love.sound.newSoundData(#wave, sample_rate, bit_rate, channels)

    for i = 0, #wave - 1 do
      sound_sample:setSample(i, wave[i + 1])
    end

    natural_notes[j][4] = love.audio.newSource(sound_sample:clone())
    natural_notes[j][4]:setVolume(0.0001)
    natural_notes[j][4]:setLooping(true)

    x = 0
  end
end

function generateSenoidalSustenidoNotes(SR, BR, Ch)
  local x = 0

  local sample_rate = 44100
  local bit_rate = 8
  local channels = 1
  local pi = math.pi
  local insert = table.insert

  if SR ~= nil then
    sample_rate = SR
  end

  if BR ~= nil then
    bit_rate = BR
  end

  if Ch ~= nil then
    channels = Ch
  end

  local sound_sample

  for j = 1, notes_count do
    local frequencie = sustenido_notes[j][2]
    local wave = {}
    local count = 0

    for i = 1, sample_rate do
      insert(wave, math.sin(x))
      x = x + ((frequencie / sample_rate) * pi)
    end

    while math.sin(x) >= 0 do
      insert(wave, math.sin(x))
      x = x + ((frequencie / sample_rate) * pi)
      count = count + 1
    end

    while math.sin(x) <= 0 do
      insert(wave, math.sin(x))
      x = x + ((frequencie / sample_rate) * pi)
      count = count + 1
    end

    --we created our wave :D
    --time to put it in a sound sample

    sound_sample = love.sound.newSoundData(#wave, sample_rate, bit_rate, channels)

    for i = 0, #wave - 1 do
      sound_sample:setSample(i, wave[i + 1])
    end

    sustenido_notes[j][4] = love.audio.newSource(sound_sample:clone())
    sustenido_notes[j][4]:setVolume(0.0001)
    sustenido_notes[j][4]:setLooping(true)

    x = 0
  end
end
