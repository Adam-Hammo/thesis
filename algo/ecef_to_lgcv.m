function r_out = ecef_to_lgcv(r_in, lat, long, alt)
    r_gs = llh_to_ecef_geocentric(lat,long,alt);
    C = [-sin(lat)*cos(long),-sin(long),-cos(lat)*cos(long);
         -sin(lat)*sin(long), cos(long),-cos(lat)*sin(long);
                    cos(lat),         0,         -sin(lat)];
    r_out = C'*(r_in-r_gs)';
end