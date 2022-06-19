SELECT 
	contacts.id, 
    contacts.name
FROM contacts
JOIN contact_friends ON contacts.id = contact_friends.contanct_id
GROUP BY contacts.id
HAVING COUNT(contact_friends.friend_contanct_id) > 5
