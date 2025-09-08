INSERT INTO Books (Title, Author, Genre, YearPublished) VALUES
('Pride and Prejudice', 'Jane Austen', 'Romance', 1813),
('Dune', 'Frank Herbert', 'Science Fiction', 1965),
('The Catcher in the Rye', 'J.D. Salinger', 'Classic', 1951),
('The Alchemist', 'Paulo Coelho', 'Philosophical', 1988),
('Becoming', 'Michelle Obama', 'Biography', 2018),
('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Non-Fiction', 2011),
('The Silent Patient', 'Alex Michaelides', 'Thriller', 2019),
('Things Fall Apart', 'Chinua Achebe', 'Historical Fiction', 1958),
('Educated', 'Tara Westover', 'Memoir', 2018),
('Atomic Habits', 'James Clear', 'Self-Help', 2018);


INSERT INTO Borrowers (BookID, BorrowerName, BorrowDate, ReturnDate) VALUES
(1, 'Samuel Ochieng', '2025-08-25', '2025-09-02'),
(3, 'Mary Kamau', '2025-08-28', NULL),
(5, 'James Kariuki', '2025-09-01', '2025-09-04'),
(6, 'Grace Wambui', '2025-09-02', NULL),
(8, 'Kevin Otieno', '2025-09-03', '2025-09-07'),
(10, 'Lydia Mwangi', '2025-09-05', NULL);
