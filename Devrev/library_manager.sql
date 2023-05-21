-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2023 at 12:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `library_manager`
--

CREATE TABLE `library_manager` (
  `Title` varchar(200) NOT NULL,
  `Author` varchar(50) NOT NULL,
  `Publish_Date` date NOT NULL,
  `Subject` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library_manager`
--

INSERT INTO `library_manager` (`Title`, `Author`, `Publish_Date`, `Subject`) VALUES
('To Kill a Mockingbird', 'Harper Lee', '1960-07-11', 'Set in the 1930s, this classic novel explores racial injustice and loss of innocence in a small Southern town through the eyes of Scout Finch.'),
('1984', 'George Orwell', '1949-06-08', 'A dystopian novel portraying a totalitarian regime where Big Brother watches citizens\' every move, exploring themes of government control and surveillance.'),
('Pride and Prejudice', 'Jane Austen', '1813-01-28', 'This beloved novel follows the spirited Elizabeth Bennet as she navigates societal expectations, love, and misconceptions in Georgian-era England.'),
('The Great Gatsby', 'F. Scott Fitzgerald', '1925-04-10', 'Set in the Jazz Age, this literary masterpiece explores themes of wealth, love, and the American Dream through the enigmatic millionaire Jay Gatsby.'),
('To the Lighthouse', 'Virginia Woolf', '1927-05-05', 'A pioneering modernist novel that delves into the complexities of human relationships and the passage of time, set against the backdrop of a family\'s vacation.'),
('The Catcher in the Rye', 'J.D. Salinger', '1951-07-16', 'Narrated by Holden Caulfield, this influential novel explores themes of teenage angst, alienation, and the loss of innocence in post-World War II America.'),
('Moby-Dick', 'Herman Melville', '1851-10-18', 'A literary epic that follows the vengeful Captain Ahab in his quest to hunt down the legendary white whale, exploring themes of obsession, fate, and human nature.'),
('The Lord of the Rings', 'J.R.R. Tolkien', '1954-07-29', 'A fantasy trilogy set in the world of Middle-earth, where a diverse group of characters embarks on a perilous journey to destroy the One Ring and save their world.'),
('The Odyssey', 'Homer', '0000-00-00', 'An ancient Greek epic poem that chronicles the adventures of Odysseus as he tries to return home after the Trojan War, showcasing themes of heroism and perseverance.'),
('Brave New World', 'Aldous Huxley', '1932-10-17', 'Set in a dystopian future, this novel explores a society where individuality is suppressed and conformity is enforced, tackling themes of technology and social control.'),
('The Picture of Dorian Gray', 'Oscar Wilde', '1890-07-01', 'A Gothic novel that follows the story of a young man who remains eternally youthful while his portrait ages, delving into themes of morality, beauty, and corruption.'),
('Crime and Punishment', 'Fyodor Dostoevsky', '1866-01-14', 'This psychological novel delves into the mind of a troubled ex-student, exploring themes of guilt, redemption, and the moral consequences of one\'s actions.'),
('The Hobbit', 'J.R.R. Tolkien', '1937-09-21', 'A fantasy adventure set in Middle-earth, it follows Bilbo Baggins as he accompanies a group of dwarves on a quest to reclaim their homeland from a fearsome dragon.'),
('Frankenstein', 'Mary Shelley', '1818-01-01', 'Often considered the first science fiction novel, it explores the moral and ethical implications of creating life and the consequences of unchecked ambition.'),
('The Alchemist', 'Paulo Coelho', '1988-06-01', 'A philosophical novel following a young Andalusian shepherd named Santiago on his journey to find his personal legend, imparting lessons about following one\'s dreams.'),
('The Chronicles of Narnia', 'C.S. Lewis', '1950-10-16', 'A series of fantasy novels that transport children to the magical world of Narnia, where they encounter mythical creatures and experience adventures with biblical undertones.'),
('Fahrenheit 451', 'Ray Bradbury', '1953-10-19', 'Set in a future society where books are banned and burned, this novel explores themes of censorship, knowledge, and the power of literature.'),
('The Count of Monte Cristo', 'Alexandre Dumas', '1844-08-28', 'A tale of revenge and redemption, it follows the story of Edmond Dantès, who escapes prison to seek justice against those who wronged him, highlighting themes of justice and forgiveness.'),
('One Hundred Years of Solitude', 'Gabriel García Márquez', '1967-05-30', 'A landmark work of magical realism, it tells the multi-generational story of the Buendía family in the fictional town of Macondo, exploring themes of love, time, and the cyclical nature of history.'),
('The Kite Runner', 'Khaled Hosseini', '2003-05-29', 'Set against the backdrop of Afghanistan\'s turbulent history, this novel follows the lives of two childhood friends and explores themes of friendship, guilt, and redemption.'),
('The Handmaid\'s Tale', 'Margaret Atwood', '1985-09-01', 'A dystopian novel set in the near future, where women are subjugated and fertile ones are used for reproduction, exploring themes of gender oppression and power.'),
('The Adventures of Huckleberry Finn', 'Mark Twain', '1884-12-10', 'A classic American novel that follows the journey of Huck Finn and Jim, an escaped slave, down the Mississippi River, addressing themes of race, freedom, and morality.'),
('The Scarlet Letter', 'Nathaniel Hawthorne', '1850-03-16', 'Set in 17th-century Puritan New England, this novel explores the consequences of an adulterous affair and examines themes of sin, guilt, and redemption.'),
('The Book Thief', 'Markus Zusak', '2005-09-01', 'Narrated by Death, this novel tells the story of Liesel Meminger, a young girl in Nazi Germany who steals books to find solace, emphasizing the power of words and the resilience of the human spirit.'),
('Jane Eyre', 'Charlotte Brontë', '1847-10-16', 'A bildungsroman following the life of Jane Eyre, a strong-willed governess, as she faces societal constraints, love, and her own search for identity, exploring themes of independence and morality.'),
('The Grapes of Wrath', 'John Steinbeck', '1939-04-14', 'Set during the Great Depression, this novel chronicles the journey of the Joad family as they migrate from Oklahoma to California, highlighting themes of poverty, injustice, and resilience.'),
('The Little Prince', 'Antoine de Saint-Exupéry', '1943-04-06', 'A poetic novella that explores the nature of human relationships and the importance of imagination and friendship, as seen through the encounters of a young prince from another planet.'),
('Beloved', 'Toni Morrison', '1987-09-02', 'Inspired by the true story of an enslaved African-American woman, this novel delves into the psychological impact of slavery and the enduring legacy of trauma, addressing themes of memory, identity, and freedom.'),
('Lord of the Flies', 'William Golding', '1954-09-17', 'A chilling allegorical novel depicting the descent into savagery of a group of British boys stranded on a deserted island, exploring the inherent darkness of human nature and the loss of civilization.'),
('Slaughterhouse-Five', 'Kurt Vonnegut', '1969-03-31', 'A satirical novel that blurs the boundaries of time and reality, following the experiences of Billy Pilgrim, an American soldier in World War II, addressing themes of war, fate, and the destructiveness of humanity.'),
('Wuthering Heights', 'Emily Brontë', '1847-12-19', 'A tale of passion and revenge set in the Yorkshire moors, this novel delves into the destructive love affair between Heathcliff and Catherine Earnshaw, exploring themes of social class, love, and vengeance.'),
('The Diary of a Young Girl', 'Anne Frank', '1947-06-25', 'The poignant diary of Anne Frank, a Jewish girl hiding with her family during the Holocaust, offering a firsthand account of the horrors of Nazi persecution and the strength of the human spirit.'),
('The Hitchhiker\'s Guide to the Galaxy', 'Douglas Adams', '1979-10-12', 'A humorous science fiction series that follows the misadventures of an ordinary human, Arthur Dent, as he travels through space after Earth is demolished to make way for a hyperspace bypass.'),
('The Color Purple', 'Alice Walker', '1982-03-01', 'Set in the early 20th century, this novel explores the lives of African-American women in the Southern United States, addressing themes of race, gender, identity, and the power of sisterhood.'),
('A Tale of Two Cities', 'Charles Dickens', '1859-11-26', 'Set in London and Paris before and during the French Revolution, this historical novel weaves together the lives of various characters, exploring themes of sacrifice, redemption, and the contrast between injustice and hope.'),
('The Stranger', 'Albert Camus', '1942-06-01', 'A philosophical novel that follows Meursault, a detached and apathetic French Algerian, as he reflects on the absurdity of life and grapples with the concepts of morality, meaning, and existentialism.'),
('Gone with the Wind', 'Margaret Mitchell', '1936-06-30', 'Set in the American South during the Civil War and Reconstruction era, this epic novel tells the story of Scarlett O\'Hara and explores themes of love, survival, and the consequences of societal upheaval.'),
('Anna Karenina', 'Leo Tolstoy', '1877-03-01', 'A Russian novel that delves into the complexities of love, marriage, and societal expectations through the story of Anna Karenina and her tragic affair, while also examining themes of morality and forgiveness.'),
('The Secret History', 'Donna Tartt', '1992-09-05', 'A psychological mystery novel that follows a group of classics students at an elite New England college and delves into the consequences of their dark secrets, exploring themes of guilt, obsession, and the nature of truth.'),
('The Brothers Karamazov', 'Fyodor Dostoevsky', '1880-11-26', 'A philosophical novel that delves into the moral and existential dilemmas faced by the Karamazov brothers, examining themes of faith, free will, and the nature of God and humanity.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
