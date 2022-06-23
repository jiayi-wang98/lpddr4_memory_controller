class c_4_4;
    integer ntrans = 10;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (./multiplexer_pkg.svh:886)
    {
       (ntrans == 1);
    }
endclass

program p_4_4;
    c_4_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01z0zzx00zz1xxx10zzz101x10xz0zzxzxzzzxzzxxxzxzxzxxzxzxzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
