Nodo = Struct.new(:value, :siguiente, :previo)
class Nodo

	include Comparable
	def <=>(other)
		value <=> other.value
	end

end



class List
	

	
	attr_accessor :head, :tail
	 
	include Enumerable
	
	def initialize(head)
	

	   @head = head
	   @tail = head
	    
	    
	end
	
	def insert_head(nodo)
	
		
		aux = @head
		
		@head.siguiente = nodo
		@head = @head.siguiente
		@head.previo = aux
		
		
	end
	
	def insert_tail(nodo)
		
		aux = @tail
		@tail = nodo
		aux.previo = @tail
		@tail.siguiente = aux
	
	end
	
	def remove_head
	
		aux = @head
		@head = @head.previo
		return aux.value
		#puts @head.value
		
			
		
	end

	
	def print
	
		actual = @tail
		
		while actual != nil
		
			"#{actual.value}"
			actual = actual.siguiente
		
		end
		
	end
	
	def remove_tail
	
		actual = @tail
		if @tail.siguiente != nil
		@tail = @tail.siguiente
		end
		return actual.value

	
	end
	
	def each
	
	   actual = @tail
	
		while actual != nil
		   yield actual.value
		   actual = actual.siguiente
		end
	
	end
	
=begin	def invert
	
		actual = @tail
		
		n = Nodo.new(actual.value)
		aux = List.new(n)
		actual = actual.siguiente
		
		while actual != nil
		
			n = Nodo.new(actual.value)
			aux.insert_tail(n)
			
			actual = actual.siguiente
		
		end
		
		return aux
		

	end
=end
end
	





