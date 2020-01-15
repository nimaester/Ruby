string = "aabbx"

def char_collapse(string)

  status = true
  while status
    status = false
    letters = string.split("")
    letters.each_with_index do |letter, i|
      if letters[i] == letters[i + 1]
        letters[i] = ""
        letters[i + 1] = ""
        status = true
        break
      end
    end
    string = letters.join("")
  end
  string
end

p char_collapse(string)
