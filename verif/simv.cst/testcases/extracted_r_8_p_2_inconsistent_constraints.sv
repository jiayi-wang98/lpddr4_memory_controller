class c_8_2;
    bit[30:0] is_read_size_ = 31'h0;
    rand bit[30:0] col_address_size_; // rand_mode = ON 

    constraint col_address_size_cst_this    // (constraint_mode = ON) (./multiplexer_pkg.svh:156)
    {
       (is_read_size_ == (col_address_size_ + 2));
    }
endclass

program p_8_2;
    c_8_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00z0xz1z0xxz0xzzxxxxzxzx101xzxxzzxxxzzzzxzxzzxzxxxzxzzxzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
