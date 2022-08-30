SELECT 
    COUNT(game) AS GAMES,
    ROUND(AVG(mp), 2) AS MP_PG,
    ROUND(AVG(fg), 2) AS FG_PG,
    ROUND(AVG(fga), 2) AS FGA_PG,
    ROUND(AVG(three), 2) AS THREE_PG,
    ROUND(AVG(threeatt), 2) AS THREE_ATT_PG,
    ROUND(AVG(ft), 2) AS FT_PG,
    ROUND(AVG(fta), 2) AS FTA_PG,
    ROUND(AVG(orb), 2) AS ORB_PG,
    ROUND(AVG(drb), 2) AS DRB_PG,
    ROUND(AVG(trb), 2) AS TRB_PG,
    ROUND(AVG(ast), 2) AS AST_PG,
    ROUND(AVG(stl), 2) AS STL_PG,
    ROUND(AVG(blk), 2) AS BLK_PG,
    ROUND(AVG(tov), 2) AS TOV_PG,
    ROUND(AVG(pts), 2) AS PTS_PG,
    ROUND(AVG(game_score), 2) AS AVG_GAME_SCORE,
    CASE
        WHEN LEFT(result, 1) = 'W' THEN 'W'
        WHEN LEFT(result, 1) = 'L' THEN 'L'
    END AS results
FROM
    jordan_playoffs
GROUP BY results;