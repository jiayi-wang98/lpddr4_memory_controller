class c_7_2;
    bit[30:0] is_read_size_ = 31'h0;
    rand bit[30:0] col_address_size_; // rand_mode = ON 

    constraint col_address_size_cst_this    // (constraint_mode = ON) (./multiplexer_pkg.svh:156)
    {
       (is_read_size_ == (col_address_size_ + 2));
    }
endclass

program p_7_2;
    c_7_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11zzz01x010z11z0z0zzxz110zzz1x0xxxzzxzzxxzxzxxxxzxxxzzzxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
