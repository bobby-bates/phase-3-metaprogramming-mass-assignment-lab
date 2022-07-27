class Person
  # Use keyword arguments to define an initialize method
  # Use mass assignment to metaprogram an initialize method

  def initialize attributes
    attributes.each do |key, value|
      self.class.attr_accessor key
      send "#{key}=", value
    end
  end
end
