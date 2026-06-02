#!/ascldap/users/smturbe/.conda/envs/smt_met/bin/python

import numpy as np
from PIL import Image


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

    corners = find_rectangle_corners(filename)

    print("Rectangle corners:")
    for name, (x, y) in corners.items():
        print(f"{name:12s}: x={x:.6f}, y={y:.6f}")
