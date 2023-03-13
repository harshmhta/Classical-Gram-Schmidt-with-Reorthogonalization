# Classical Gram-Schmidt with Reorthogonalization in MATLAB
This is a MATLAB function called cgs2 that implements Classical Gram-Schmidt with reorthogonalization.

## Function Signature
The function takes in one input parameter and returns two output parameters.

function [Q, R] = cgs2(X)

## Input Parameters
X is a matrix that needs to be factorized.

## Output Parameters
Q and R are matrices such that X = Q * R, where Q is an orthogonal matrix and R is an upper-triangular matrix.

## Testing
Two test problems have been provided with the code.

### Problem 1
The first test problem involves a 6 × 5 L ̈auchli matrix.

### Problem 2
The second test problem involves finding a polynomial that fits the function f(x) = e^x on the interval [0, 1/2(ln 2)].

## How to Use
To use this function, simply call the function cgs2 with your input matrix as the argument. The function will return Q and R, which can be used to solve for the solution to your problem.

## Academic Integrity Statement
Please note that all work included in this project is the original work of the author, and any external sources or references have been properly cited and credited. It is strictly prohibited to copy, reproduce, or use any part of this work without proper attribution and permission from the author.

If you choose to use any part of this work as a reference or resource, you are responsible for ensuring that you do not plagiarize or violate any academic integrity policies or guidelines. The author of this work cannot be held liable for any legal or academic consequences resulting from the misuse or misappropriation of this work.

In summary, any unauthorized copying or use of this work may result in serious consequences, including but not limited to academic penalties, legal action, and damage to personal and professional reputation. Therefore, please use this work only as a reference and always ensure that you properly cite and attribute any sources or references used.
