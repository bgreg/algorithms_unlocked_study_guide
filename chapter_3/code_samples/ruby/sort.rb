class Sort
  def initialize(random_list:, verbose: false)
    @list       = random_list
    @verbose    = verbose
    @last_index = @list.length - 1
  end

  protected

  def swap(original_index:, replacement_index:)
    puts "Swapping: #{@list[original_index]} and #{@list[replacement_index]}" if @verbose
    @list[original_index], @list[replacement_index] = @list[replacement_index], @list[original_index]
  end

  def explain(message)
    puts message if @verbose
  end

  def explain_h1(message)
    return unless @verbose
    puts
    puts "+#{"-" * (message.length + 4)}+"
    puts "|  #{" " * message.length}  |"
    puts "|  #{message.upcase}  |"
    puts "|  #{" " * message.length}  |"
    puts "+#{"-" * (message.length + 4)}+"
    puts
  end

  def explain_h2(message)
    return unless @verbose
    puts "\n#{message}"
    puts "_" * 80
  end
end
