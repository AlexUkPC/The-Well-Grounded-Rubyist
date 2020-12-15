RubyVM::InstructionSequence.compile_option = {
  tailcall_optimization: true,
  trace_instruction: false,
}
require_relative "16.4.2_fibonacci"
puts fibonacci(700000)
