begin
  require 'ffi-swig-generator'
  FFI::Generator::Task.new do |task|
    task.input_fn = 'interfaces/*.i'
    task.output_dir = 'generated/'
  end
rescue LoadError
  nil
end


