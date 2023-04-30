module traffic_lights(
  input sayac,
  input reset,
  output reg kirmiziRenk,
  output reg maviRenk,
  output reg yesilRenk
);

  reg [23:0] counter;
  integer saniye;

  always @(posedge sayac or negedge reset) begin
    if (!reset) begin
      counter <= 24'd0;
      kirmizi <= 1'b1;
      mavi <= 1'b0;
      yesil <= 1'b0;
    end else begin
      if (saniye < 10) begin 
        kirmizi <= 1'b0;
        mavi <= 1'b1;
        yesil <= 1'b1;
      end 

      else if (saniye < 19) begin 
        kirmizi <= 1'b0;
        mavi <= 1'b1;
        yesil <= 1'b0;
      end 

      else if (saniye < 50) begin 
        kirmizi <= 1'b1;
        mavi <= 1'b1;
        yesilf <= 1'b0;
      end 
      counter <= counter + 1;
      if (counter == 24'd2400_0000) begin
        counter <= 24'd0;

        saniye <= saniye + 1;
        if (saniye > 60 )begin
        saniye <= 0;
    end
      end
    end
  end
endmodule