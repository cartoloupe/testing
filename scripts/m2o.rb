require 'pry'
require 'colorize'

def usage
  puts "# usage: "
  puts "#"
  puts "parse markdown #'s into outline form".yellow
  puts "\te.g.".yellow + " #{File.basename $0} something.md".green
  puts "#\n" * 2
end
def indents s
  s[/^#+(?=[^#])/].size
end
def numbers n
  n.times.map{|m|
    m.to_s
  }.reduce(:+)
end
def numbers2 n
  s = (" " * gib(n))
  s[0] = n.to_s
  s[1] = "-"
  s
end
def fib n
  case n
  when 1; 1
  when 2; 1
  else
    fib(n-1) + fib(n-2)
  end
end
def gib n
  fib(n+2)
end
unless ARGV.first
  usage
else
  a = `grep "^#" #{ARGV.first}`
  a.split("\n").map{|s|
    (numbers2(indents(s))) + s.sub(/^#+(?=[^#])/, "")
  }.tap{|s| puts s}
end
