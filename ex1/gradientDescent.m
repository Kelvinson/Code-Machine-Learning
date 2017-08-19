function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
%     new_theta = zeros(2, 1);
%     new_theta(1) = theta(1) - sum((X * theta - y) .* X(:,1)) / m * alpha;
%     new_theta(2) = theta(2) - sum((X * theta - y) .* X(:,2)) / m * alpha;
%     theta = new_theta;

%     theta(1) - sum((X * theta - y) .* X(:,1)) / m * alpha;
%     theta(2) - sum((X * theta - y) .* X(:,2)) / m * alpha;
%      theta = theta - transpose(transpose(X * theta - y) * X) / m * alpha;
    
    % ============================================================

    % Save the cost J in every iteration    
    theta = theta - X'*(X*theta - y)*alpha / m;
    J_history(iter) = computeCost(X, y, theta);

end

end
