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

* update: 9:35pm 15th Sep 2014 *

Implemented to_xml

    require 'method_parser'

    mp = MethodParser.new File.read('simple_number.rb')
    mp.to_xml

output:

<pre>
&lt;?xml version='1.0' encoding='UTF-8'?&gt;
&lt;doc&gt;
  &lt;klass name='SimpleNumber'&gt;
    &lt;def name='initialize' scope='private'&gt;&lt;/def&gt;
    &lt;def name='add' scope='public'&gt;&lt;/def&gt;
    &lt;def name='multiply' scope='public'&gt;&lt;/def&gt;
    &lt;def name='divide' scope='private'&gt;&lt;/def&gt;
    &lt;def name='square' scope='protected'&gt;&lt;/def&gt;
  &lt;/klass&gt;
&lt;/doc&gt;
</pre>


## Resources

* [Returning just the Class name and methods](http://www.jamesrobertson.eu/snippets/2014/jul/18/returning-just-the-class-name-and-methods.html)
* [method_parser](https://rubygems.org/gems/method_parser)

parser gem method_parser
