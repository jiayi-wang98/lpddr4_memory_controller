class c_4_2;
    bit[30:0] is_read_size_ = 31'h0;
    rand bit[30:0] col_address_size_; // rand_mode = ON 

    constraint col_address_size_cst_this    // (constraint_mode = ON) (./multiplexer_pkg.svh:156)
    {
       (is_read_size_ == (col_address_size_ + 2));
    }
endclass

program p_4_2;
    c_4_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x11100xz0z0z0zz11z1x0101z0011x0xzzzxzzzxzxxxzxxzxxzzzzzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
