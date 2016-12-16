function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

for i=1:m
    h = sigmoid(X(i,:)*theta);
    J = J + (-y(i)*log(h)-(1-y(i))*log(1-h));
end

[n,~] = size(theta);


h = sigmoid(X*theta);
for j=1:n
    if j~=1;
        J = J + (lambda/2)*(theta(j))^2;
    end
    if j==1
        grad(j) = dot((h - y),(X(:,j)));
    else
        grad(j) = dot((h - y),(X(:,j))) + lambda*theta(j);
    end
end

J = J/m;
grad = grad/m;
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
