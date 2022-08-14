metainfo = imfinfo('./testImages/ohMusium.jpg');
lat_dms = metainfo.GPSInfo.GPSLatitude;
lat = dms2degrees(lat_dms);
lon_dms = metainfo.GPSInfo.GPSLongitude;
lon = dms2degrees(lon_dms);
figure;geoscatter(lat,lon,30,'red','filled')
geobasemap 'satellite'
geolimits('auto')