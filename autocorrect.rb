# before `rubocop --safe-auto-correct autocorrect.rb`
@variable = if @conditional
              1
            else
              2
            end

# after `rubocop --safe-auto-correct autocorrect.rb`
# @variable =
#   if @conditional
#     1
#   else
#     2
#              end

# before `rubocop --safe-auto-correct autocorrect.rb`
@variable = begin
              1
            end

# after `rubocop --safe-auto-correct autocorrect.rb`
# @variable =
#   begin
#                1
#              end

# before `rubocop --safe-auto-correct autocorrect.rb`
@variable = begin
              @something
            rescue StandardError
              false
            end

# after `rubocop --safe-auto-correct autocorrect.rb`
# @variable =
#   begin
#                @something
#   rescue StandardError
#     false
#              end

# before `rubocop --safe-auto-correct autocorrect.rb`
@variable = begin
  if @conditional
    1
  else
    2
  end
end

# after `rubocop --safe-auto-correct autocorrect.rb`
# @variable =
#   begin
#    if @conditional
#      1
#    else
#      2
#    end
#  end

# before `rubocop --safe-auto-correct autocorrect.rb`
if @variable
  if @variable
    @variable = @conditional ?
      :a : :b
  end
end

# after `rubocop --safe-auto-correct autocorrect.rb`
# if @variable
#   if @variable
#     @variable =
#       @conditional ?
#            :a : :b
#   end
# end
