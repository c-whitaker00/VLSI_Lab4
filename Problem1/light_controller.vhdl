entity light_controller is
    port(
        clk : in std_logic;
        sa, sb : in std_logic;
        ga, rb, ya, ra, gb, yb : out std_logic);
end light_controller;

architecture archi of light_controller is
    type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12);
    signal state : state_type;
begin 
    process(clk)
    begin
        if (clk'event and clk = '1') then
            case state is
                when s0 => 
                    state <= s1; 
                when s1 =>
                    state <= s2;
                when s2 =>
                    state <= s3;
                when s3 =>
                    state <= s4;
                when s4 =>
                    state <= s5;
                when s5 => 
                    if sb = '0' then
                        state <= s5;
                    elsif sb = '1' then
                        state <= s6;
                    end if;
                when s6 => 
                    state <= s7;
                when s7 => 
                    state <= s8;
                when s8 =>
                    state <= s9;
                when s9 =>
                    state <= s10;
                when s10 => 
                    state <= s11;
                when s11 => 
                    if (sa = '0' and sb = '1') then
                        state <= s11;
                    elsif (sa = '1' or sb = '0') then
                        state <= s12;
                    end if;
                when s12 => 
                    state <= s0;
            end case;
        end if;
    end process;
    process(state)
    begin
        case state is
            when s0 =>
                ga <= '1';
                ya <= '0';
                ra <= '0';
                gb <= '0';
                yb <= '0';
                rb <= '1';
            when s1 => 
                ga <= '1';
                ya <= '0';
                ra <= '0';
                gb <= '0';
                yb <= '0';
                rb <= '1';
            when s2 => 
                ga <= '1';
                ya <= '0';
                ra <= '0';
                gb <= '0';
                yb <= '0';
                rb <= '1';
            when s3 => 
                ga <= '1';
                ya <= '0';
                ra <= '0';
                gb <= '0';
                yb <= '0';
                rb <= '1';
            when s4 => 
                ga <= '1';
                ya <= '0';
                ra <= '0';
                gb <= '0';
                yb <= '0';
                rb <= '1';
            when s5 => 
                ga <= '1';
                ya <= '0';
                ra <= '0';
                gb <= '0';
                yb <= '0';
                rb <= '1';
            when s6 => 
                ga <= '0';
                ya <= '1';
                ra <= '0';
                gb <= '0';
                yb <= '0';
                rb <= '1';
            when s7 => 
                ga <= '0';
                ya <= '0';
                ra <= '1';
                gb <= '1';
                yb <= '0';
                rb <= '0';
            when s8 => 
                ga <= '0';
                ya <= '0';
                ra <= '1';
                gb <= '1';
                yb <= '0';
                rb <= '0';
            when s9 => 
                ga <= '0';
                ya <= '0';
                ra <= '1';
                gb <= '1';
                yb <= '0';
                rb <= '0';
            when s10 => 
                ga <= '0';
                ya <= '0';
                ra <= '1';
                gb <= '1';
                yb <= '0';
                rb <= '0';
            when s11 => 
                ga <= '0';
                ya <= '0';
                ra <= '1';
                gb <= '1';
                yb <= '0';
                rb <= '0';
            when s12 => 
                ga <= '0';
                ya <= '0';
                ra <= '1';
                gb <= '0';
                yb <= '1';
                rb <= '0';
        end case;
    end process;
end archi;















 
