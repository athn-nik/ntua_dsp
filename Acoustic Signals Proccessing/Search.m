function [button] = Search (n1,n2)
switch n1
    case 86
        switch n2
            case 149
                button = 1;
            case 164
                button = 2;
            case 181 
                button = 3;
            otherwise button = 'wrong';
        end;
    case 95
        switch n2
            case 149
                button = 4;
            case 164
                button = 5;
            case 181 
                button = 6;
            otherwise button = 'wrong';
        end;
    case 105
        switch n2
            case 149
                button= 7;
            case 164
                button = 8;
            case 181 
                button = 9;
            otherwise button = 'wrong';
        end;
    case 116
        button = 0;
    otherwise button = 'wrong';
end
end