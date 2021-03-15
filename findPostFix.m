function [status]=findPostFix(i, chr1)
 arguments
      i
      chr1
 end
 %Function code
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
                           slices = (chr1(i+3:k-1));
                           if mod(length(slices), 3) == 0
                               disp("The Normal Gene Sequence:")         
                           else
                                 disp("Abnormal Gene Sequence! (length is not a multiple of three)")
                           end
                            disp("Here:");
                            disp(chr1(i+3:k-1));
                            status = k+3; %Continue
                            return %Exit Function
                       end
                end
            end
  disp("no gene is found (No TAA, TAG, TGA postfix)");
  status =  -1 ;%Exit program
 return %Exit Function
end
