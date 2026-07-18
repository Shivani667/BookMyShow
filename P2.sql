SELECT m.title, s.show_time
FROM Shows s
JOIN Movie m ON s.movie_id = m.movie_id
JOIN Theatre t ON s.theatre_id = t.theatre_id
WHERE t.name = 'PVR Saket'
  AND s.show_date = '2026-07-20';
