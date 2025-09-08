---- ============================================
-- SQL Library Project - Practice Queries
-- Author: Michelle Nduku Munyao
-- Database: LibraryDB
-- ============================================

-- ===============================
-- LEVEL 1: Simple Queries
-- ===============================

-- 1. View all books
SELECT * FROM Books;

-- 2.View all Borrowers
SELECT * FROM Borrowers;

-- 3. Get only titles and authors
SELECT Title,Author
FROM Books;

-- 4. Find all books published after 2010
SELECT Title, Author
FROM Books
WHERE YearPublished > 2010;


-- ===========================================
-- level 2 : Sorting and Filtering 
-- ===========================================


-- 5. List all books ordered by year (newest year)
SELECT Title, YearPublished
FROM Books
ORDER BY YearPublished DESC;


-- 6. Find books with titles strating with 'The'
SELECT Title, Author
FROM Books
WHERE Title LIKE 'The%';


-- 7. Find borrowers who havent returned books yet 
SELECT BorrowerName, BorrowDate
FROM Borrowers
WHERE ReturnDate is NULL;

-- ==================================
-- Level 3: Aggregation
-- ===================================

-- 8. Count how many books are in genre 
SELECT Genre, COUNT(*) AS TotalBooks
FROM Books
GROUP BY Genre;

-- 9. Find the average publication year
SELECT AVG(YearPublished) AS AvgPublicationYear
FROM Books;

-- =========================================
-- Level 5: Joins
-- =========================================

-- 10. List all borrowers with each book borrowed
SELECT br.BorrowerName,b.Title,br.BorrowDate
FROM Books b
INNER JOIN Borrowers br ON b.BookID=br.BookID;


-- 11. Show books that are currently borrowed (not returned)
SELECT b.Title,br.BorrowDate
FROM Books b
INNER JOIN Borrowers br ON b.BookID=br.BookID
WHERE ReturnDate IS NULL;

-- ==========================================
-- level 6. Advanced Queries
-- ==========================================


-- 12. Find the most borrowed book 
SELECT b.Title, COUNT(*) AS TimesBorrowed
FROM Books b
JOIN Borrowers br ON b.BookID = br.BookID
GROUP BY b.Title
ORDER BY TimesBorrowed DESC
LIMIT 1;

-- 13. Find borrowers who borrowed more than on book 
SELECT BorrowerName, COUNT(*) AS BooksBorrowed
FROM Borrowers
GROUP BY BorrowerName
HAVING COUNT(*) > 1;


