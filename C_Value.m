% function for finding c value (rate at which hits are occuring)
function c = C_Value (SearcherPosition_X, SearcherPosition_Y, SourcePosition_X, SourcePosition_Y,Lamda)
%#codegen
    z = abs(sqrt((SearcherPosition_X - SourcePosition_X)^2+(SearcherPosition_Y - SourcePosition_Y)^2))/Lamda;    % using for bessel function we need this
    K = besselk(0,z);  % bessel function of second kind zero order
    c = K;  % concentration equation
    
    
end