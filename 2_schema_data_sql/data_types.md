1. Both are character types. `VARCHAR(n)` will allow text up to a specified length (n). Maximum of 255 characters. `text` will allow unlimited length.


2. These are all numeric types:
	* `integer` specifies whole numbers between -2147483648 and +2147483647.
	*  `decimal(precision, scale)` will specify a number with precision being the amount of whole number digits and scale being the amount of digits to the right of the decimal point.
	*  `real` allows  floating point numbers up to 6 decimal digits. It's precision is variable. Note- the storage of these numbers can cause inaccuracies in calculations. Best to use other numeric types for these purposes.


3.  +2147483647


4. `date` will include day, month, and year. `timestamp` will have the time of day as well as the date.


5. No, need to use `timestamp with timezone` or `timestamptz`.
