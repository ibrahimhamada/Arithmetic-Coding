%% Encoder Function: This function finds the encoded signal based on the block of bits to be contained within the range of L and H.
function encoded_message = Arithmetic_Encoder(word,symbols,props)

[L,H]= Find_Range(word,symbols,props); %find L and H using the given function.

encoded_message = ''; % temp char Array to store the encoded message
f = 0; %flag
% Defined period
first = 0;
last = 1;
mid = (first+last)/2;
% Find the binary number contained within L and H
while(f == 0)
    if(H <= mid)
        encoded_message = strcat(encoded_message,'0' );
        last = mid;
        mid = (first+last)/2;
    else
        if(L >= mid) 
            encoded_message = strcat(encoded_message,'1' );
            first = mid;
            mid = (first+last)/2;
        else
            if(L<mid)&&(H>mid)
                if(H-mid > mid-L)
                    encoded_message = strcat(encoded_message,'1' );
                    first = mid;
                    mid = (first+last)/2;
                else
                    encoded_message = strcat(encoded_message,'0' );
                    last = mid;
                    mid = (first+last)/2;
                end
            end
        end
    end
    if(L<=first)&&(H>=last)
        f =1;
    end
    
   
end

                    
                    
 
  
    

end