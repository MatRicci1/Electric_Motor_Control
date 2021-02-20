function [v0] = Pwm(tint, tr, tf, E)

  v0 = -E; 
  if (tint > tr) && ((tint) < tf)
        v0 = E; 
  end
  
end