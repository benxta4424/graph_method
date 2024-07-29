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
  end

  def create_node(value)
    Node.new(value)
  end

  def append_value(value)
    new_node = create_node(value)

    if @head.nil?
      @head = new_node
    else
      current_head_that_holds_a_value = @head
      while current_head_that_holds_a_value
        current_head_that_holds_a_value = current_head_that_holds_a_value.next_node
        unless current_head_that_holds_a_value.nil?
          current_head_that_holds_a_value = current_head_that_holds_a_value.next_node
          break
        end
      end
      current_head_that_holds_a_value = create_node(value)
    end
  end

  def to_s
    puts 'E goala lista!' if @head.nil?
    elemente=[]
    current_node=@head
    while !current_node.nil?
      elemente<<current_node.value.to_s
      current_node=current_node.next_node
    end
    elemente.join('->')
  end
end
