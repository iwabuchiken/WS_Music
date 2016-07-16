def exec

  #ref http://stackoverflow.com/questions/1755665/get-names-of-all-files-from-a-folder-with-ruby answered Nov 18 '09 at 12:44
  list = Dir["domino/*"]
    
  list.sort
    
  puts list

  # file io
  fname = "sample.txt"
  
  somefile = File.open(fname, "a")
#  somefile = File.open(fname, "w")
  
  count = 0
  
  #ref http://www.rubylife.jp/ini/for/index5.html
  list.each {|elem|
    
    somefile.puts elem
    
    count += 1
    
  }
  
#  somefile.puts "Hello file!"
  somefile.close
  
  puts "file io => done (#{count} items)"
    
end

exec
