class c_2_4;
    integer ntrans = 10;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (./multiplexer_pkg.svh:880)
    {
       (ntrans == 1);
    }
endclass

program p_2_4;
    c_2_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xzz0z0xxzzx01x0000xzxx0xxzz1xxzxxzzxzxxxzxzxzzzzzxzzzzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
