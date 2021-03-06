chr1 = 'TTATGTTTTAAGGATGGGGCGTTAATT';
chr2 = 'ATG';
chr3 = 'TAA';
sflag = true;
flag = false;
res = [];
finalres = [];
for i = 1:1:length(chr1)
   for j = 1:1:length(chr2)
%        disp(i+j);
       if i+(j-1) > length(chr1)
           break;
       end
       if chr1(i+j-1) ~= chr2(j)
           break;
       end
       if j==length(chr2)
           flag = true;
           res(length(res)+1) = i;
%            start to find end code
           sflag = true;
           for k=i+3:1:length(chr1)
               if sflag ~= true
                   break;
               end
                for z=1:1:length(chr3)
                     if k+(z-1) > length(chr1)
                        break;
                     end
                    if chr1(k+z-1) ~= chr3(z)
                        break;
                     end
                       if z==length(chr3)
                           disp("12312313");
                           disp(k);
                           disp(z-1);
                          disp(chr1(i+3:k-1));
                            sflag=false;
                       end
                end
            end
   end
   end  
end
% position = strfind(str1,str2);
% disp(flag);