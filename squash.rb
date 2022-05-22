STDIN.read.split(/^•/).drop(1).reject(&:empty?).map do |event|
  lines = event.lines.reject(&:empty?).map(&:strip)
  url = lines.find { |line| line.include?("url")}&.gsub(/^.*(https?:\/\/[^\s]+).*$/, '\1')
  puts "[#{lines.last}] #{lines.first}#{url ? " - " + url : ""}"
end
