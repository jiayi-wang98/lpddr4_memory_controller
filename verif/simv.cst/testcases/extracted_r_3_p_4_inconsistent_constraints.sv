class c_3_4;
    integer ntrans = 10;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (./multiplexer_pkg.svh:883)
    {
       (ntrans == 1);
    }
endclass

program p_3_4;
    c_3_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0z0101xxx1x1x01z11z0xxzz1zx00zxzzzxxzzzxzxzzzxzxzxxzzzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
