clc;
close;
clear all;

% In the current example white is true, black is false
% Letter - A
a = imread('A.png');
a = imresize(a, [200, 200]); % Resizing both the image to same dimension to perform operation 
ImComplement_a = imcomplement(a); %complementing for better understanding
subplot(4, 3, 1);
imshow(ImComplement_a);
title('A');

% Letter - B
b = imread('B.png');
b = imresize(b, [200, 200]);
ImComplement_b = imcomplement(b);
subplot(4, 3, 2);
imshow(ImComplement_b);
title('B');

% Addition(adds both the image)
addition_comp = ImComplement_a + ImComplement_b;
subplot(4, 3, 3);
imshow(addition_comp);
title('Addition');

% Subtraction(removes the image that subtracts)
subtraction = ImComplement_a - ImComplement_b;
subplot(4, 3, 4);
imshow(subtraction);
title('Subtraction');

% Multiplication(only shows the common part)
multiplication = ImComplement_a.*ImComplement_b; %
subplot(4, 3, 5);
imshow(multiplication);
title('Multiplication');

% Division 
division = ImComplement_a./ImComplement_b;
subplot(4, 3, 6);
imshow(division);
title('Division');

% Making images logical to perform logical operations
logical_A = im2bw(ImComplement_a);
logical_A = imresize(logical_A, [220, 220]);

logical_B = im2bw(ImComplement_b);
logical_B = imresize(logical_B, [220, 220]);

% Logical OR(adds both the image)
logical_OR = logical_A | logical_B;
subplot(4, 3, 7);
imshow(logical_OR);
title('Logical OR');

% Logical AND(only the common part)
logical_AND = logical_A & logical_B;
subplot(4, 3, 8);
imshow(logical_AND);
title('Logical AND');

% Logical XOR(only shows the part which is not common for both)
logical_XOR = xor(logical_A, logical_B);
subplot(4, 3, 9);
imshow(logical_XOR);
title('Logical XOR');

% Logical NOT
% Only applicable if the image is logical
logical_NOT_A = ~logical_A; 
subplot(4, 3, 10);
imshow(logical_NOT_A);
title('Logical NOT - A');

logical_NOT_B = ~logical_B;
subplot(4, 3, 11);
imshow(logical_NOT_B);
title('Logical NOT - B');

% Logical ImComplement
% Works for grayscale images also
logical_InComplement = imcomplement(logical_B);
subplot(4, 3, 12);
imshow(logical_InComplement);
title('Logical ImComplement');

% If no image format is given, 200 is maximum
% If jpeg is given then maximum value is 255