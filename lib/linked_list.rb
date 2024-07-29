class LinkedList
  class Node
    attr_accessor :value, :next_node

    def initialize(_value)
      @value = _value
      @next_node = nil
    end
  end

  def initialize
    @head = nil
    @size = 0
    @get_head = 0
    @get_tail = 0
  end

  def create_node(value)
    Node.new(value)
  end

  def append_value(value)
    current_value = create_node(value)
    if @head.nil?
      @head = current_value
      @get_head = @head
      @size += 1
    else
      current_node = @head
      current_node = current_node.next_node while current_node.next_node
      current_node.next_node = current_value
      @size += 1
    end
  end

  def prepend_values(value)
    new_node = create_node(value)
    # we move the head node down to the next node mimicking a stack behaviour
    new_node.next_node = @head
    @size += 1
    @head = new_node
  end

  def to_s
    # if the list is empty we return this message
    return "Lista goala!" if @head.nil?

    elemente = []
   
    current_node = @head
    while current_node
      elemente << "(#{current_node.value})"
      current_node = current_node.next_node
    end
    elemente.join("->")
  end

  def size
    puts @size
  end

  def head
    puts "The first element is:#{@get_head=@head.value}"
  end

  def tail
    current_node=@head
    while current_node
      @get_tail=current_node.value
      current_node=current_node.next_node
      
    end
    
    puts "The last element is:#{@get_tail}"
  end

  def at(index)
    current_node = @head
    list_elements = 1
    while current_node

      if index == list_elements
        puts "At index #{index} we have the value:#{current_node.value}"
        break
      end

      current_node = current_node.next_node
      list_elements += 1
    end
  end

  def pop
    prev_node = nil
    current_node = @head
  
    return nil if current_node.next_node.nil?

    if current_node.next_node.nil?
      @head=nil
      @size-=1
    end

    while current_node.next_node
      prev_node=current_node
      current_node=current_node.next_node
    end
    prev_node.next_node=nil
    @size-=1

  end

  def contains?(value)
    current_node=@head
    while current_node
      return true if current_node.value == value
      current_node=current_node.next_node
    end
    false
  end

  def find(value)
    elements_index=1
    current_node=@head
    while current_node
      return elements_index if current_node.value==value
      current_node=current_node.next_node
      elements_index+=1
    end
    false
  end
end
