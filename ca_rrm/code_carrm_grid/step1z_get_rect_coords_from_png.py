#!/ascldap/users/smturbe/.conda/envs/smt_met/bin/python

import numpy as np
from PIL import Image
from geopy.distance import geodesic
import numpy as np
from metpy.units import units


def pixel_to_lonlat(x_pix, y_pix, width, height):
    """
    Convert image pixel coordinates to:
        x -> [0, 360]
        y -> [-90, 90]

    Assumes:
      x=0 is left edge
      x=360 is right edge
      y=90 is top edge
      y=-90 is bottom edge
    """

    x = (360.0 * x_pix / (width - 1)) - 180
    y = 90.0 - 180.0 * y_pix / (height - 1)

    return x, y

def find_center_latlon_numdxdy(ul, lr):
    """
    ul, lr: (lat, lon) of upper left and lower right corners (assuming a rectangle)

    Compute center lat/lon and number of grid points to cover a rectangle
    using MetPy's lat_lon_grid_spacing (1.5 km target spacing).

    Returns central lat,lon and num points at 1.5 km from center to edge of latlon box.
    """
    center_lat = (ul[0] + lr[0]) / 2.0
    center_lon = (ul[1] + lr[1]) / 2.0

    # get geodesic distance along meridian (approx NS) and along parallel (approx EW at center lat)
    ns_dist = geodesic((center_lat, center_lon), (ul[0], center_lon)).km * units.km # distance in km
    ew_dist = geodesic((center_lat, center_lon), (center_lat, lr[1])).km * units.km # distance in km
    print(ns_dist)
    spacing_km = 1.5 * units.km
    ns_intervals = (ns_dist//spacing_km).magnitude
    ew_intervals = (ew_dist//spacing_km).magnitude
    print(ns_intervals)
    n_points_lat = int(ns_intervals) + 1
    n_points_lon = int(ew_intervals) + 1

    print("center lat,lon:", (center_lat, center_lon))
    print("distance from center to edge (y, x direction):", ns_dist, ew_dist)
    print("points lat, lon from center:", n_points_lat, n_points_lon)
    print("lat,lon points in rectangle:", n_points_lat*2, n_points_lon*2)
    return (center_lat, center_lon), (n_points_lat, n_points_lon)

def find_rectangle_corners(filename, threshold=128):
    # Load image and convert to grayscale
    img = Image.open(filename).convert("L")
    arr = np.array(img)

    height, width = arr.shape

    # Black pixels
    black = arr < threshold

    if not np.any(black):
        raise ValueError("No black pixels found.")

    rows, cols = np.where(black)

    xmin_pix = cols.min()
    xmax_pix = cols.max()
    ymin_pix = rows.min()
    ymax_pix = rows.max()

    corners_pix = {
        "upper_left":  (xmin_pix, ymin_pix),
        "upper_right": (xmax_pix, ymin_pix),
        "lower_right": (xmax_pix, ymax_pix),
        "lower_left":  (xmin_pix, ymax_pix),
    }

    corners_lonlat = {}

    for name, (xp, yp) in corners_pix.items():
        x, y = pixel_to_lonlat(xp, yp, width, height)
        corners_lonlat[name] = (x, y)

    return corners_lonlat


if __name__ == "__main__":
    filename = "CA_v1_input.png"

    # corners = find_rectangle_corners(filename)

    # print("Rectangle corners:")
    # for name, (x, y) in corners.items():
    #    print(f"{name:12s}: x={x:.6f}, y={y:.6f}")

    find_center_latlon_numdxdy((42.,-124.8),(32.,-114.4))

