\d fourm_posts

-- Pull posts from April 2048
SELECT author, date, content FROM forum_posts where date between '2048-04-01' and '2048-04-30';

\d forum_accounts

-- Pull name for the username that had the taxi post
SELECT first_name, last_name FROM forum_accounts WHERE username = 'smart-money-44';

\d emptystack_accounts

--Looks for password for forum account but forgot that this is the son of the person that works at emptystack.
SELECT password FROM emptystack_accounts WHERE username = 'smart-money-44';

-- Pulls the first names of people who have emptystack accounts that have the last name 'Steele'
-- This pulled 2 accounts. The first one I tried logged me in. name was Andrew Steele.
SELECT first_name FROM emptystack_accounts WHERE last_name = 'Steele';

-- See details of the messsages table
\d emptystack_messages

-- Looks for a message in the new SQL file that contains the self driving taxi message
SELECT id, "to", "from", subject, body FROM emptystack_messages WHERE body ILIKE '%taxi%';

-- Get admin account data from emptystack
SELECT username, password FROM emptystack_accounts WHERE username = 'your-boss-99';

-- Get ID of the project
SELECT * FROM emptystack_projects WHERE code = 'TAXI';

