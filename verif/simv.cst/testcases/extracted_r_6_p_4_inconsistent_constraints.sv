class c_6_4;
    integer ntrans = 10;

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (./multiplexer_pkg.svh:892)
    {
       (ntrans == 1);
    }
endclass

program p_6_4;
    c_6_4 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z01011z011xz10zz0z1xx11xzzzzz0zzzzxzzxzzxzxxzxxxxxzzxxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
