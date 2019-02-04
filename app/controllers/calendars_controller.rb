class CalendarsController < ApplicationController

  def index
    if @date  != Date.today
      start_date = Date.today.beginning_of_month #2000-01-01
      end_date = Date.today.end_of_month #2000-01-31
      @date = Date.today
      @table = make_table
      p 'asdf'
    else
      @table = make_table
      p 'asdf1'
    end
  end

  def nextMonth
    @date = @date.next_month
    p 'asdf3'
    render "index"
  end

  def preMonth
    @date = @date.prev_month
    p 'asdf4'
    render "index"
  end

  private

  def make_table
  	start_date = Date.today.beginning_of_month #2000-01-01
  	end_date = Date.today.end_of_month #2000-01-31
    ary = Array.new

  	#１周目
  	aryweek = Array.new
  	i = 0

  	while i < start_date.wday do  #0<曜日の番号
  		aryweek[i] = ''
      i += 1
  	end

  	#途中の週
  	while start_date.day < end_date.day do #ここ<=にするとサーバー止まる謎
  		aryweek[start_date.wday] = start_date.day
  		if start_date.wday == 6 then
        ary.push(aryweek)
        aryweek = Array.new
      end
      start_date += 1
  	end

    aryweek[start_date.wday] = start_date.day
    ary.push(aryweek)

    # ↓つけなくても動く？

    # aryweek = Array.new

    # #最終週
    # if start_date.wday > 0
    #   i = start_date.wday
    #   while i < 7 do
    #     aryweek[i] = " "
    #     i += 1
    #     start_date += 1
    #   end
    #   aryweek = Array.new
    # end

    # ary.push(aryweek)

  end

end
