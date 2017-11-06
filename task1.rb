input_file = ARGV.first

current_file = open(input_file)
data = current_file.read

wordArray = data.split(' ')

Req_words = []

wordArray.each do|words|
  if(words.length>3)
    Req_words.push(words)
  end
end

Req_words.sort

final_data = Req_words.join(" ")

out_file = open("write1.txt", 'w')
out_file.write(final_data)
out_file.close
