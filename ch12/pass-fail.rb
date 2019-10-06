class TestScoreError < StandardError
end

score = 52

begin
  if score > 60
    puts 'Passing grade'
  else
    raise TestScoreError, 'Failing grade'
  end
rescue TestScoreError => error
  puts "Received error: #{error.message}. Taking make-up exam..."
  score = 63
  retry
end
