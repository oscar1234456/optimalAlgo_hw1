% chr1 = 'TTATGTTTTAAGGATGGGGCGTTAATT';
tempString = input("Enter a Chromosome string:", "s");
chr1 = convertStringsToChars(tempString);
chr2 = 'ATG';
chr3 = 'TAA';
chr4 = 'TAG';
chr5 = 'TGA';
sflag = true;
flag = false;
findATG = false;
res = [];
finalres = [];
for i = 1:1:length(chr1)
   for j = 1:1:length(chr2)
%        disp(i+j);
       if i+(j-1) > length(chr1)
           % Cannot find ATG prefix
           if findATG == false
                disp("no gene is found (No ATG Prefix)");
                return
           end
           break;
       end
       if chr1(i+j-1) ~= chr2(j)
           break;
       end
       if j==length(chr2)
           % already find ATG Prefix
           findATG = true;
           flag = true;
          % disp("i:");
           %disp(i);
           res(length(res)+1) = i;
%            start to find end code
           sflag = true;
           if i+3 > length(chr1)
               %No need to find TAA, TAG, TGA more
               disp("no gene is found (No TAA, TAG, TGA postfix)");
               return %Exit program
           end
           for k=i+3:1:length(chr1)
               %disp("k");
               %disp(k);
               if sflag ~= true
                   break;
               end
                for z=1:1:length(chr3)
                     if k+(z-1) > length(chr1)
                        disp("no gene is found (No TAA, TAG, TGA postfix)");
                        return %Exit program
                     end
                    if chr1(k+z-1) ~= chr3(z) && chr1(k+z-1)~=chr4(z) && chr1(k+z-1)~=chr5(z)
                        break;
                     end
                       if z==length(chr3)
                           %disp("12312313");
                           %disp(k);
                           %disp(z-1);
                          disp(chr1(i+3:k-1));
                            sflag=false;
                       end
                end
           end
        end
    end  
end
if findATG == false
    disp("no gene is found (No ATG Prefix)");
    return
end
% position = strfind(str1,str2);
% disp(flag);