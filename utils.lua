--Some useful functions

function checkPath(path)
    local exists, acessible = nil

    exists, err = os.rename(path, path)
    return exists, err
end

function keyShiftUp()
    if natural_notes[1][2] < 130 * 5 then
        killSounds()

        for j = 1, notes_count do
            natural_notes[j][2] = natural_notes[j][2] * 2
        end

        for j = 1, notes_count do
            if (j ~= 3) and (j ~= 7) and (j ~= 10) and (j ~= 14) then
                sustenido_notes[j][2] = sustenido_notes[j][2] * 2
            end
        end

        generateSenoidalNaturalNotes()
        generateSenoidalSustenidoNotes()
    end
end

function keyShiftDown()
    if natural_notes[1][2] > 260 then
        killSounds()

        for j = 1, notes_count do
            natural_notes[j][2] = natural_notes[j][2] / 2
        end

        for j = 1, notes_count do
            if (j ~= 3) and (j ~= 7) and (j ~= 10) and (j ~= 14) then
                sustenido_notes[j][2] = sustenido_notes[j][2] / 2
            end
        end

        generateSenoidalNaturalNotes()
        generateSenoidalSustenidoNotes()
    end
end

function killSounds()
    for j = 1, notes_count do
        natural_notes[j][4]:stop()
        natural_notes[j][4] = nil
    end

    for j = 1, notes_count do
        if (j ~= 3) and (j ~= 7) and (j ~= 10) and (j ~= 14) then
            sustenido_notes[j][4]:stop()
            sustenido_notes[j][4] = nil
        end
    end
end
