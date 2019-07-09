#Sluggish Octopus

a = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
b =''
a.each{|ele| a.each {|el| b = ele if ele.length > el.length && ele.length > b.length  }}
p b



#Dominant Octopus



#Clever Octopus

a = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
b =''
a.each{|ele|  b = ele if  ele.length > b.length  }
p b
