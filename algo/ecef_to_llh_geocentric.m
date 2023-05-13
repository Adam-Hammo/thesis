function [lat, long, alt] = ecef_to_llh_geocentric(r_in)
    % r_in is a horizontal vector
    % lat, long are in rads
    R_earth = 6378137;
    R = norm(r_in);
    lat = asin(r_in(3)/R);
    long = atan2(r_in(2),r_in(1 ));
    alt = R-R_earth;
end