# Implementation-of-Arithmetic-Coding

My Project of the Information Theory and Coding Course Offered in Fall 2022 @ Zewail City.

In this project, I implemented the Arithmetic Coding Algorithm given the following sequence of symbols:
![image](https://user-images.githubusercontent.com/58476343/220162805-0f9528e6-bd1a-4d34-aaca-eb4548b8ebbd.png)


## Implementation Steps:


A) Arithmetic Encoder 

            1) To design a Arithmetic code for an the given character set, the probability of each character in the language is needed. 
            2) Probabilities are obtained using the probability table

            3) Functions used for this task are:
             a) Find_Ranger(): to be used in Arithmetic_Encoder and takes the charcters along with their probabilities and finds L and H.
             
             b) Arithmetic_Encoder(): to find the encoded signal based on the block of bits to be contained within the range of L and H.


n this part, given an encoded sequence and the length of the sequence, we need to obtain the original message.
Firstly, the binary bits are converted into decimal fraction value.
We iterated n iterations, where n is the length of the sequence, over the symbols to know the exact multiplication of symbols that gives the fraction value.

B) Arithmetic Decoder 

            1) To design a Arithmetic code for an the given character set, the probability of each character in the language is needed. 
            2) Probabilities are obtained using the probability table

            3) Functions used for this task are:
             a) Find_Ranger: This function is a helper function to be used in Arithmetic_Encoder and takes the charcters along with their probabilities and finds L and H.
             
             b) Arithmetic_Encoder: This function finds the encoded signal based on the block of bits to be contained within the range of L and H.

## The frequencies for English Language characters were obtained from: 
https://pi.math.cornell.edu/~mec/2003-2004/cryptography/subs/frequencies.html 

![image](https://user-images.githubusercontent.com/58476343/220161644-982e4b8d-f837-44a1-afc0-c5c10a4e47d5.png)
