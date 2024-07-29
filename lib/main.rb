require "./linked_list"
lista = LinkedList.new
lista.append_value('karchoui')
lista.append_value('13')
lista.prepend_values('1')
lista.prepend_values('2')
lista.prepend_values('3')
lista.prepend_values(4)

puts lista.to_s

lista.size