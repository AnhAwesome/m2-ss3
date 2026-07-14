CREATE TABLE books (
    book_id VARCHAR(20) PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

CREATE TABLE readers (
    reader_id VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL
);

CREATE TABLE borrowings (
    borrowing_id INT AUTO_INCREMENT PRIMARY KEY,
    reader_id VARCHAR(20),
    book_id VARCHAR(20),
    borrow_date DATE,
    return_date DATE,

    CONSTRAINT fk_borrow_readers FOREIGN KEY (reader_id) REFERENCES readers(reader_id),
    CONSTRAINT fk_borrow_books FOREIGN KEY (book_id) REFERENCES books(book_id)
);

ALTER TABLE borrowings 
MODIFY borrow_date DATE NOT NULL;