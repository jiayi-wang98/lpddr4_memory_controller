class c_1_4;
    integer ntrans = 10;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (./multiplexer_pkg.svh:877)
    {
       (ntrans == 1);
    }
endclass

program p_1_4;
    c_1_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z10z10z0z1zzz1x1x1zz10xzz11x101zzzxzzxzzxxxzzxxzzxzzxzzxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
