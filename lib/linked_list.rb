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
  end

  def create_node(value)
    Node.new(value)
  end

  def append_value(value)
    current_value=create_node(value)
    if @head.nil?
      @head=current_value
      @size+=1
    else
      current_head=@head
      while current_head.next_node
        current_head=current_head.next_node
      end
      current_head.next_node=current_value
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
    return "Lista goala!" if @head.nil?
    elemente=[]
    current_head=@head
    while current_head
      elemente<<"(#{current_head.value})"
      current_head=current_head.next_node
    end
    elemente.join('->')
  end
  
  def size
    puts @size
  end
end
