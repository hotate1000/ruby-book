# to_hex 10進数を16進数
  # 方法①
    # def to_hex(r,g,b)
    #   '#' +
    #     r.to_s(16).rjust(2,'0') +
    #     g.to_s(16).rjust(2,'0') +
    #     b.to_s(16).rjust(2,'0') 
    # end

  # 方法②
    # def to_hex(r,g,b)
    #   hex = '#' 
    #   [r,g,b].each {|n| hex += n.to_s(16).rjust(2,'0')}
    #   hex
    # end 
    # puts to_hex(0,0,0)

  # 方法③
    def to_hex(r,g,b)
      [r,g,b].inject('#') {|hex,n| hex + n.to_s(16).rjust(2,'0')}
    end 
    puts to_hex(0,0,0)


# to_ints 16進数を10進数
  # 参考
      # hex = '12abcd'
      # r = hex[1..2]
      # g = hex[3..4]
      # h = hex[5..6]
      
  # 方法①
    # def to_ints(hex)
    #   r = hex[1..2]
    #   g = hex[3..4]
    #   b = hex[5..6]
    #   ints = []
    #   [r,g,b].each do |s|
    #     ints << s.hex
    #   end
    #   ints
    # end
  
    # 方法②
    # def to_ints(hex)
    #   r = hex[1..2]
    #   g = hex[3..4]
    #   b = hex[5..6]
    #   ints = []
    #   [r,g,b].map do |s|
    #     s.hex
    #   end
    # end

    # 方法③
      def to_ints(hex)
        r,g,h = hex[1..2],hex[3..4],hex[5..6]
        [r,g,h].map do |s|
          s.hex
        end
      end