require "./linked_list"
lista = LinkedList.new
lista.append_value("karchoui")
lista.append_value(13)
lista.prepend_values(1)
lista.prepend_values(2)
lista.prepend_values(3)
lista.prepend_values(4)


puts lista

lista.size
lista.head
lista.tail
lista.at(5)
lista.at(1)
lista.pop
item=gets.chomp
contains=lista.contains?(8)
puts "Does the list contain #{item} ? #{contains}"
find_value=gets.chomp
found=lista.find('karchoui')
puts "#{find_value} was found at index:#{found}"
puts lista
