using LinearAlgebra
using Statistics

#Q1, Minh
function linreg(x, y, lambda)
    m, n = size(x)
    z = x' * x + lambda * Matrix(I, n, n)  # the regularized matrix1
    lin_reg_param = inv(z) * x' * y
    return lin_reg_param
end
# Tu Pham
# Questions 2, 3 (linreg)
# Function to calculate predicted responses
function predict(linregparam, x)
    predicted_responses = x * linregparam
    return predicted_responses
end

# Function to calculate R^2
function rsq(predicted_responses, true_responses, mean_prediction)
    predictive_model_error = 0
    for i in eachindex(true_responses)
        predictive_model_error += ((true_responses[i] - predicted_responses[i]) ^ 2)
    end
    baseline_model_error = 0
    for i in eachindex(true_responses)
        baseline_model_error += ((true_responses[i] - mean_prediction) ^ 2)
    end
    r_squared = 1 - (predictive_model_error / baseline_model_error)
    return r_squared
end