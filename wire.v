wire ws0,ws1,ws2;

gate U1(.Y(ws0),.A(SW[0]),.B(SW[1]),.C(SW[2]),.D(SW[2]));
gate U2(.Y(ws1),.A(ws0),.B(SW[0]),.C(SW[2]),.D(SW[2]));
gate U3(.Y(ws2),.A(ws0),.B(SW[2]),.C(SW[0]),.D(ws1));

MUX5to1 U4(.M(LEDG[9:8]),.S({ws2,ws1,ws0}),.U(2'b10),.V(2'b01),.W(2'b10),.X(2'b00),.Y(2'b11));
