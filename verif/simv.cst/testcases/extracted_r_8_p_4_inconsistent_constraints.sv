class c_8_4;
    integer ntrans = 10;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (./multiplexer_pkg.svh:898)
    {
       (ntrans == 1);
    }
endclass

program p_8_4;
    c_8_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z1101z01001111xx0z0xzzx0z11x10zxzzzxxxzxzxzzxzzxxxzzxzxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
