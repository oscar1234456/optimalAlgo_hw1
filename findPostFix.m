function [status]=findPostFix(i, chr1)
 arguments
      i
      chr1
 end
 %Function code
 %sflag = ture;
chr3 = 'TAA';
chr4 = 'TAG';
chr5 = 'TGA';
  if i+3 > length(chr1)
               %No need to find TAA, TAG, TGA more
               disp("no gene is found (No TAA, TAG, TGA postfix)");
               status = -1;%Exit program
               return %Exit function
           end
           for k=i+3:1:length(chr1)-2
               %disp("k");
               %disp(k);
%                if sflag ~= true
%                    break;
%                end
                for z=1:1:length(chr3)
                     if k+(z-1) > length(chr1)
                        disp("no gene is found (No TAA, TAG, TGA postfix)");
                        status =  -1 ;%Exit program
                        return %Exit Function
                     end
                    if chr1(k+z-1) ~= chr3(z) && chr1(k+z-1)~=chr4(z) && chr1(k+z-1)~=chr5(z)
                        break;
                     end
                       if z==length(chr3)
                           %disp("12312313");
                           %disp(k);
                           %disp(z-1);
                           disp("The Gene Sequence:")
                           disp(chr1(i+3:k-1));
                            %sflag=false;
                            status = k+3; %Continue
                            return %Exit Function
                       end
                end
           end
  disp("no gene is found (No TAA, TAG, TGA postfix)");
  status =  -1 ;%Exit program
 return %Exit Function
end
