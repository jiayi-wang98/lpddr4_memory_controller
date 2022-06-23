class c_5_4;
    integer ntrans = 10;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (./multiplexer_pkg.svh:889)
    {
       (ntrans == 1);
    }
endclass

program p_5_4;
    c_5_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1z1x1zzx1x11z010zz001z01zxxz0xzxzzzzxxzxxzxxxxxzzzzzxzxxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
