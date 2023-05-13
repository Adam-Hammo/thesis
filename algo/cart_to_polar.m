function aer = cart_to_polar(r_in)
    r = norm(r_in);
    az = atan2(r_in(2),r_in(1));
    el = atan(-r_in(3)/sqrt(r_in(1)^2+r_in(2)^2));
    aer = [az, el, r];
end