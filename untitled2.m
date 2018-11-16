function [F] = func2(X,varargin)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Test functions number 2. Squared non-ridge function.
%
%   Inputs:
%          X: N-by-m matrix consisting of N samples of vectors in R^m
%          f: N-by-1 vector that contains the corresponding N evaluations
%          opts: (optional) 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isempty(varargin)
    opts = [];
elseif length(varargin) == 1
    opts = varargin{1};
    if ~isstruct(opts)
        error('ERROR: Inappropriate inputs passed')
    end
else
    error('ERROR: Too many inputs.')
end

%function evaluation
F = X(:,1).^2 + X(:,2).^2;
