@variable = if @conditional
              1
            else
              2
            end

@variable = begin
              1
            end

@variable = begin
              @something
            rescue StandardError
              false
            end

@variable = begin
  if @conditional
    1
  else
    2
  end
end

if @variable
  if @variable
    @variable = @conditional ?
      :a : :b
  end
end
