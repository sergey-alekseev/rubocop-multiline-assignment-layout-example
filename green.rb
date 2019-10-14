# frozen_string_literal: true

@variable =
  begin
     end

@variable =
  begin
                    @something
  rescue StandardError
    false
                  end

# only w/ ", @variable2"
@variable1, @variable2 =
  @something.partition do |argument|
  argument > 1
end
