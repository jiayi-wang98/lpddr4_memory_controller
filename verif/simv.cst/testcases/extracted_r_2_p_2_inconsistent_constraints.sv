class c_2_2;
    bit[30:0] is_read_size_ = 31'h0;
    rand bit[30:0] col_address_size_; // rand_mode = ON 

    constraint col_address_size_cst_this    // (constraint_mode = ON) (./multiplexer_pkg.svh:156)
    {
       (is_read_size_ == (col_address_size_ + 2));
    }
endclass

program p_2_2;
    c_2_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxzxxzz01x00x1xx011x0000100zx10zzzxzzzzzxxzzzzzzzzxzzzzzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
