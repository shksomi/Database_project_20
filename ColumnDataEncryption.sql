
use marketplace;
-- Create Master KEY
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'masterkey@1';

-- Create a self - signed certificate for Column level SQL encyrption
CREATE CERTIFICATE Certificate_test WITH SUBJECT = 'Protect My Data';

--Configure a symmetric key for column level SQL Server encryption
CREATE SYMMETRIC KEY SymKey_test WITH ALGORITHM = AES_256 ENCRYPTION BY CERTIFICATE Certificate_test;

-- Open the symmetric key and decrypt using the certficate 
OPEN SYMMETRIC KEY SymKey_test DECRYPTION BY CERTIFICATE Certificate_test;
--Data Encryption
UPDATE [Customer] 
SET [Customer_Password] = CONVERT(VARCHAR(255), HASHBYTES('SHA2_512', [Customer_Password]), 2);

-- Close Symmetric key
-- If we do  not close the key , it remains open untill the session is terminated
CLOSE SYMMETRIC KEY SymKey_test;
-- Output
-- SELECT * FROM [User];
