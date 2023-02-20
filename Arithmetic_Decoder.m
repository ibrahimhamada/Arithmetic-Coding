%% Arithmetic Decoding: This function takes an encoded sequence and the length of the sequence to obtain the original message.
function decoded_message = Arithmetic_Decoder(encoded_seq, seq_len, symbols_Arr, probability_Arr)
encoded_seq_num = encoded_seq - '0'; %Convert from char to int 
decimal_value = encoded_seq_num * 2 .^ (-1:-1:-(length(encoded_seq_num))).'; %find decimal equivalent value
decoded_message = ''; %temp char arr to store the decoded signal

L = 0;
M = 1;
%Loop over the length of the sequence
for i = 1:seq_len
    %Loop over the symbols to know which symbols led to this probability
   for j = 1:length(symbols_Arr)
       if (decimal_value >= L && decimal_value < L + M*probability_Arr(j))
           decoded_message = strcat(decoded_message, symbols_Arr(j));
           M = M * probability_Arr(j);
           break;
       end
       L = L + M*probability_Arr(j);
   end
end

