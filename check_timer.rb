#内原 朝也
class Check
  def check_time(input_time, start_time, end_time)
    start_time -= 12 if start_time > end_time
    end_time += 12 if start_time > end_time
    check_time_range(input_time, start_time, end_time)
  end

  def split_time(string_time)
    string_time.split('時').first.to_i
  end

  private

  def check_time_range(input_time, start_time, end_time)
    if start_time != end_time
      if (start_time <= input_time) && (input_time < end_time)
        true
      else
        false
      end
    else
      start_time == input_time
    end
  end
end

def main
  lines = gets.split
  check = Check.new
  input_time = check.split_time(lines[0])
  start_time = check.split_time(lines[1])
  end_time = check.split_time(lines[2])

  if check.check_time(input_time, start_time, end_time)
    puts '範囲内の時刻です'
  else
    puts '範囲外の時刻です'
  end
end

main