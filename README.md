# Introducing the method_parser gem

    require 'method_parser'

    mp = MethodParser.new File.read('simple_number.rb')
    mp.to_a

output:

<pre>
[
  [:class, :SimpleNumber, 
    [
      [:def, :initialize, :private], 
      [:def, :add, :public], 
      [:def, :multiply, :public], 
      [:def, :divide, :private], 
      [:def, :square, :protected]
    ]
  ]
] 
</pre>

## Resources

* [Returning just the Class name and methods](http://www.jamesrobertson.eu/snippets/2014/jul/18/returning-just-the-class-name-and-methods.html)
* [method_parser](https://rubygems.org/gems/method_parser)

parser gem method_parser
