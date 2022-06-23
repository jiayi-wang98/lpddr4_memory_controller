class c_7_4;
    integer ntrans = 10;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (./multiplexer_pkg.svh:895)
    {
       (ntrans == 1);
    }
endclass

program p_7_4;
    c_7_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zz1z0z10zzz0xzzzx011z11zxz100xzxxxzzxxzxxxxzxxxzxzzxxzzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
