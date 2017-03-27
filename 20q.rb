class QuestionTree
  # The initialize method is all you really need.
  attr_accessor :yes_tree, :no_tree, :value
  def initialize(y, n, v)
    @yes_tree = y
    @no_tree = n
    @value = v
  end

  def is_solution()
    @yes_tree == nil && @no_tree == nil
  end

  # Class variables & methods to help with setting up a default tree.
  ::QUESTIONS = [
    "Is it colorful?",
    "Is it bigger than a microwave?",
    "Is it bigger than a microwave?",
    "rainbow",
    "flower",
    "car",
    "peanut"
  ]

  def self.init_tree
    nodes = ::QUESTIONS.map {|x| QuestionTree.new(nil, nil, x)}
    nodes.each_with_index do |node, index|
      if (index < nodes.length/2)
        # The node's children are located at these two indices of the array.
        node.yes_tree = nodes[2 * index + 1]
        node.no_tree  = nodes[2 * index + 2]
      end
    end
    # Return the root node, which is at index 0.
    nodes[0]
  end
end

def play_game
  puts "Welcome to 2 questions! The game that's like 20 questions, but 10 times easier!"
  current_node = QuestionTree.init_tree()
  # To hardcode a basic tree & check your solution, you can use lines like this:
  # yes_ans= QuestionTree.new(nil, nil, "it's a car!")
  # no_ans = QuestionTree.new(nil, nil, "it's a peanut!")
  # current_node = QuestionTree.new(yes_ans, no_ans, "Is it bigger than a microwave?")
  while !current_node.is_solution do
    puts current_node.value
    ans = gets.strip.downcase
    if ans == "y"
      current_node = current_node.yes_tree
    elsif ans == "n"
      current_node = current_node.no_tree
    else
      puts "Sorry, please answer 'y' or 'n'."
      # Don't advance by a node; make them answer again.
    end
  end
  puts "It's a #{current_node.value}!"
end

play_game()
