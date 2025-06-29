-- Query to get the full description of the books table
SELECT COLUMN_NAME AS 'Column Name',
       COLUMN_TYPE AS 'Column Type',
       IS_NULLABLE AS 'Is Nullable',
       COLUMN_KEY AS 'Key',
       EXTRA AS 'Extra'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store'
  AND TABLE_NAME = 'books';

