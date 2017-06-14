puts "Enter the value of n"
n=gets;
n=n.to_i;
arr=Array.new(n){Array.new(n)}
def createboard n, array
	k=n;
	puts " "
	puts " "
    array.each do |arr|
       m=n;
       k1=n;
       arr.each do |element|
             if element==nil
                 print " "
             elsif element==1
                 print "O"
             else
                 print "X"
             end
             if k1>1 
             print " |"
             k1=k1-1
             end
       end
       puts " "
       while m>=0 && k>1 do
          print  "--"  
          m=m-1
       end
       k=k-1
       puts " "
    end
    puts " "
    puts " "
end
def check x,y,arr
	if arr[x][y]==nil
		return true
	else
		return false
    end
end
def fill x,y,i,arr
	if i%2==0
		arr[x][y]=1
	elsif i%2==1
        
		arr[x][y]=-1
	end
end
def checkresult arr,n
    x=0
    flag=true
    while x<n do
        y=0
        while y<n do
            if arr[x][y]!=1
                flag=false
                break
            end
            y=y+1
        end
        if flag==true
            return 1
        else
            flag=true
        end
        x=x+1
    end
    x=0
    flag=true
    while x<n do
        y=0
        while y<n do
            if arr[x][y]!=-1
                flag=false
                break
            end
            y=y+1
        end
        if flag==true
            return -1
        else
            flag=true
        end
        x=x+1
    end
    x=0
    flag=true
    while x<n do
        y=0
        while y<n do
            if arr[y][x]!=1
                flag=false
                break
            end
            y=y+1
        end
        if flag==true
            return 1
        else
            flag=true
        end
        x=x+1
    end
    x=0
    flag=true
    while x<n do
        y=0
        while y<n do
            if arr[y][x]!=-1
                flag=false
                break
            end
            y=y+1
        end
        if flag==true
            return -1
        else
            flag=true
        end
        x=x+1
    end
    x=0
    flag=true
    while x<n do
        y=0
        while y<n do
            if x+y==n-1
                if arr[x][y]!=1
                    flag=false
                    break
                end
            end
            y=y+1
        end
        x=x+1
    end
    if flag==true
        return 1
    end
    x=0
    flag=true
    while x<n do
        y=0
        while y<n do
            if x+y==n-1
                if arr[x][y]!=-1
                    flag=false
                end
            end
            y=y+1
        end
        x=x+1
    end
    if flag==true
        return -1
    end
    x=0
    flag=true
    while x<n do
        y=0
        while y<n do
            if x==y
                if arr[x][y]!=1
                    flag=false
                end
            end
            y=y+1
        end
        x=x+1
    end
    if flag==true
        return 1
    end
    x=0
    flag=true
    while x<n do
        y=0
        while y<n do
            if x==y
                if arr[x][y]!=-1
                    flag=false
                end
            end
            y=y+1
        end
        x=x+1
    end
    if flag==true
        return -1
    end
    return 0
end

cont=true
i=0
while cont==true do
    flagme=0
	if i%2==0
          puts "O turn : Enter the position to fill"
          x=gets
          y=gets
          x=x.to_i;
          y=y.to_i;
    else
    	 puts "X turn : Enter the position to fill"
          x=gets
          y=gets
          x=x.to_i;
          y=y.to_i;
    end
    if check x,y,arr
    	fill x,y,i,arr
    	createboard n,arr
    else
    	puts "Position already fill try another position"
        flagme=1;
    end
    numer=checkresult arr,n
    if numer==1
    	puts "O wins"
    	cont=false
    elsif numer==-1
    	puts "X wins"
    	cont=false
    elsif i==n*n-1
    	puts "Game Draw"
    	cont=false
    end
    if  flagme !=1
        i=i+1
    end
end

