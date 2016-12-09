datatype tritree = Empty | Node of int * tritree * tritree * tritree;



fun addNode (i:int, Empty) = Node(i, Empty, Empty, Empty) | addNode(i:int, Node(j, left, center, right)) =
														(if i = j andalso center <> Empty then Node(i, left, center, right)
														else if i < j andalso center <> Empty then Node(j, addNode(i, left), center, right)
														else if center <> Empty then Node(j, left, center, addNode(i, right))
														else Node(i, left, Node(i, Empty, Empty, Empty), right); print "Added Node\n"); 

val y : tritree = addNode(10, Empty);
val y : tritree = addNode(40, y);
val y : tritree = addNode(5, y);
