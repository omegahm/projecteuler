n = (1...200_000).inject("") {|s, i| s << "#{i}" }
puts n[0].to_i * n[9].to_i * n[99].to_i * n[999].to_i * n[9_999].to_i * n[99_999].to_i * n[999_999].to_i 
