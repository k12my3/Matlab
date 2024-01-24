a = 5;
b = 20;
   if ( a && b )
      disp('Line 1 - Condition is true');
   end
   if ( a || b )
      disp('Line 2 - Condition is true');
   end
   
   % lets change the value of  a and b 
   a = 0;
   b = 10;
   
   if ( a && b )
      disp('Line 3 - Condition is true');
   else
      disp('Line 3 - Condition is not true');
   end
   
   if ((a && b))
   
      disp('Line 4 - Condition is true');
   end