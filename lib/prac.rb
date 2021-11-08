def greeting(proc_1, proc_2, proc_3)
  puts proc_1.call("おは")
  puts proc_2.call("こんに")
  puts proc_3.call("こんば")
end

shuffle_proc = Proc.new { |text| text.chars.shuffle.join }
repeat_proc = Proc.new { |text| text * 2 }
question_proc = Proc.new { |text| "#{text}?" }

greeting(shuffle_proc, repeat_proc, question_proc)
