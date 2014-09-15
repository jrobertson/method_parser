#!/usr/bin/env ruby

# file: method_parser.rb

require 'parser/current'

class MethodParser

  attr_reader :to_a  

  def initialize(s)
    @to_a = nestify(flatten_down(scan Parser::CurrentRuby.parse(s)))
  end

  private

  def scan(x)

    r = x.children.map do |y| 
      if y.is_a? Parser::AST::Node then
        list = scan(y) 
        if list.length > 0 then
          list
        else
          nil
        end
      end
    end.compact

    a2 = case x.type

      when :def
        [x.type, x.to_a.first]
      when :class
        [x.type, x.to_a.first.to_a[1]]

      when :send

        y = x.children.last

        if  y == :private or y == :protected then
          y
        else
          []
        end

      else
        []
    end

    [a2.length > 0 ? a2 : nil, r.length > 0 ? r : nil].compact

  end

  def flatten_down(a3)

    r = a3.map do |x|
      x2 = (x[0].is_a?(Array) and x.length == 1) ? x.flatten(1) : x
      x2.is_a?(Array) ? flatten_down(x2) : x2
    end

    r.length == 1 ? r.flatten(1) : r
  end

  def nestify(a2)

    scope = :public
    a2.inject([]) do |r, x|

      case x.first
        when :class
          r << [:class, x.last, []]
        else
          x.each do |mx|

            case mx.first
            when :def

              method = mx.last                    
              r.last.last << 
                [:def, method, method == :initialize ? :private : scope]
            when :private
              scope = :private
            when :protected
              scope = :protected
            end
          end      
      end
      r
    end

  end

end
