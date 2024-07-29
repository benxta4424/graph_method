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
    @size=0
    @get_head=0
    @get_tail=0
  end

  def create_node(value)
    Node.new(value)
  end

  def append_value(value)
    current_value=create_node(value)
    if @head.nil?
      @head=current_value
      @get_head=@head
      @size+=1
    else
      current_node=@head
      while current_node.next_node
        current_node=current_node.next_node
      end
      current_node.next_node=current_value
      @size+=1
    end
  end

  def prepend_values(value)
    new_node=create_node(value)
    #we move the head node down to the next node mimicking a stack behaviour
    new_node.next_node = @head
    @size+=1
    @head=new_node
  end


  def to_s
    #if the list is empty we return this message
    return "Lista goala!" if @head.nil?
    elemente=[]

    #we get elements_size to calculate the head
    #if its 0 we are at the start of the list: we get the head
    #if its equal to the size of the whole list we are at the end of the list: we get the tail
    list_size=0
    current_node=@head
    while current_node
      @get_head=current_node.value if list_size==0
      elemente<<"(#{current_node.value})"
      current_node=current_node.next_node
      list_size+=1
      if list_size==@size-1
        @get_tail=current_node.value
      end
    end
    elemente.join('->')
  end
  
  def size
    puts @size
  end

  def head
    puts "The first element is:#{@get_head}"
  end

  def tail
    puts "The last element is:#{@get_tail}"
  end

  def at(index)
    current_node=@head
    list_elements=1
    while current_node
      
      if index==list_elements
        puts "At index #{index} we have the value:#{current_node.value}"
        break
      end
      
      current_node=current_node.next_node
      list_elements+=1
    end
  end
end
