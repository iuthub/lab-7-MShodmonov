1. SELECT name FROM movies m WHERE year=1995;
2. SELECT COUNT(a.id  FROM actors a
									JOIN roles r ON r.actor_id=a.id
                                    JOIN movies m ON m.id=r.movie_id
                                    WHERE m.name='Lost in Translation';
3. SELECT a.first_name,a.last_name   FROM actors a
									JOIN roles r ON r.actor_id=a.id
                                    JOIN movies m ON m.id=r.movie_id
                                    WHERE m.name='Lost in Translation';
4. SELECT directors.first_name,directors.last_name  FROM directors 
													JOIN movies_directors ON movies_directors.director_id=directors.id
                                                    JOIN movies ON movies.id=movies_directors.movie_id
                                                    WHERE movies.name='Fight Club';
5. SELECT COUNT(movies.id)  FROM movies
						JOIN movies_directors ON movies_directors.movie_id=movies.id
                        JOIN directors ON directors.id=movies_directors.director_id
                        WHERE directors.first_name='Clint' AND directors.last_name='Eastwood';
             
6. SELECT movies.name  FROM movies
						JOIN movies_directors ON movies_directors.movie_id=movies.id
                        JOIN directors ON directors.id=movies_directors.director_id
                        WHERE directors.first_name='Clint' AND directors.last_name='Eastwood';
7. SELECT directors.first_name, directors.last_name FROM directors
												JOIN movies_directors ON movies_directors.director_id=directors.id
                                                JOIN movies ON movies.id=movies_directors.movie_id
                                                JOIN movies_genres ON movies_genres.movie_id=movies.id
                                                WHERE movies_genres.genre='Horror';
             

8. SELECT actors.first_name, actors.last_name FROM actors
											JOIN roles ON roles.actor_id=actors.id
                                            JOIN movies ON movies.id=roles.movie_id
                                            JOIN movies_directors ON movies_directors.movie_id=movies.id
                                            JOIN directors ON directors.id=movies_directors.director_id
                                            WHERE directors.first_name='Christopher' AND directors.last_name='Nolan';
