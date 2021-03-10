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
i = 1;
%for i = 1:1:length(chr1)
while i<=length(chr1)
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
           %sflag = true;
          a = findPostFix(i,chr1);
          if a(1)==-1
              return
          else
            i = a(1)-1;
            disp("i");
            disp(i);
          end
        end
   end
    i= i+1;
end
if findATG == false
    disp("no gene is found (No ATG Prefix)");
    return
end
% position = strfind(str1,str2);
% disp(flag);