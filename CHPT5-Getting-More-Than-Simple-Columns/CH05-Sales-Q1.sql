SELECT ProductNumber, VendorID, WholesalePrice AS OriginalWholesalePrice, (WholesalePrice*0.95) AS AdjustedWholesalePrice
FROM Product_Vendors;