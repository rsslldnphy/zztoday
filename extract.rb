event = STDIN.read

if event =~ /^.*(https?:\/\/[^\s]+).*$/
  url = event.gsub(/^.*(https?:\/\/[^\s]+).*$/, '\1')
  puts url
end
