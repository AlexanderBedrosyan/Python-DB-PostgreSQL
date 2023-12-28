SELECT
    start_point,
    end_point,
    leader_id,
    CONCAT(first_name, ' ', last_name) as leader_name
FROM
    routes as r JOIN campers c on c.id = r.leader_id