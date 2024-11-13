// Code your testbench here
// or browse Examples
class ex;
  
  bit [4:0] a[15];
  int temp = 0;
  bit [4:0] que[$];
  
  function sort();
    
    for (int i = $size(a) - 1; i > -1; i--) begin
      for(int j= 0; j < $size(a) - 1; j++) begin
        if(a[j] > a[j+1])  begin
          temp = a[j];  //swaping the numbers if a[j] > a[j+1] 
          a[j] = a[j+1];  //store a[j+1] to a[j]
          a[j+1] = temp;  
          que.push_front(a[j]);
      end
      else 
        a[j] = a[j];
    end
    end
  endfunction
endclass

module tb;
  initial begin
    ex e = new();
    e.a = {10,15,7,3,8,5,4,9,1,11,12,1,13,15,7}; 
    $display(" before values = %0p",e.a);
    e.sort();  
    $display("after values = %0p",e.a);
    
   
  end
endmodule
      
