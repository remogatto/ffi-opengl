begin
  require 'ffi-generator'
  FFI::Generator::Task.new :input_fn => 'interfaces/*.i', :output_dir => 'generated/'
rescue LoadError
  nil
end
