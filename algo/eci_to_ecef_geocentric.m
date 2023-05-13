function r_out = eci_to_ecef_geocentric(r_in,t)
    % r_in is a horizontal vector
    omega = 7.292115e-5;
    n = omega*t;
    M = [cos(n),sin(n),0;-sin(n),cos(n),0;0,0,1]';
    r_out = r_in * M;
end

