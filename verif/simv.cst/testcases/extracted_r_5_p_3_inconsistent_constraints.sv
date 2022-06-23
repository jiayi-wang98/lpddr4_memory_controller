class c_5_3;
    bit[30:0] ras_size_ = 31'h0;
    rand integer col_cmd_num; // rand_mode = ON 
    rand bit[30:0] col_address_size_; // rand_mode = ON 

    constraint col_address_size_cst_this    // (constraint_mode = ON) (./multiplexer_pkg.svh:164)
    {
       (col_address_size_ == col_cmd_num);
       (ras_size_ == (col_cmd_num + 2));
    }
endclass

program p_5_3;
    c_5_3 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxz00x1zz00zxz01101z10xz1x000xzzxxxxxzxxxzxzxxxzzxzzxzzxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
