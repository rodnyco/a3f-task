SELECT 
	DISTINCT greatest(c1.id, c2.id) as first_contact_id, 
    least(c1.id, c2.id) as second_contact_id
FROM contact_friends first_contact
JOIN contact_friends second_contact on first_contact.friend_contanct_id = second_contact.contanct_id
JOIN contacts c1 on first_contact.contanct_id = c1.id
JOIN contacts c2 on second_contact.contanct_id = c2.id
WHERE first_contact.contanct_id = second_contact.friend_contanct_id and first_contact.friend_contanct_id = second_contact.contanct_id