tempString = input("Enter a Chromosome string:", "s");
chr1 = convertStringsToChars(tempString);
chr2 = 'ATG';
findATG = false;

i = 1;

while i<=length(chr1)
   for j = 1:1:length(chr2)
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
           %  start to find end code
          a = findPostFix(i,chr1);
          if a(1)==-1
              return
          else
            i = a(1)-1;
          end
        end
   end
    i= i+1;
end
if findATG == false
    disp("no gene is found (No ATG Prefix)");
    return
end