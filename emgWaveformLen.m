function output = emgWaveformLen(X)
%% Returns the waveform length as a row vector for the signal X calculated column wise
    op1=0;
    op2=0;
    op3=0;
    op4=0;
    op5=0;
    op6=0;
    op7=0;
    op8=0;
    len = length(X);
        for j = 2:len
            op1 = op1 + abs(X(j,1) - X(j-1,1));
            op2 = op2 + abs(X(j,2) - X(j-1,2));
            op3 = op3 + abs(X(j,3) - X(j-1,3));
            op4 = op4 + abs(X(j,4) - X(j-1,4));
            op5 = op5 + abs(X(j,5) - X(j-1,5));
            op6 = op6 + abs(X(j,6) - X(j-1,6));
            op7 = op7 + abs(X(j,7) - X(j-1,7));
            op8 = op8 + abs(X(j,8) - X(j-1,8));
        end
    output = [op1,op2,op3,op4,op5,op6,op7,op8];
end