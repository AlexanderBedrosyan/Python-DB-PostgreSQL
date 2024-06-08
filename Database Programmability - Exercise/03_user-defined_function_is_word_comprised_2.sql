CREATE OR REPLACE FUNCTION fn_is_word_comprised(set_of_letters VARCHAR(50), word VARCHAR(50))
RETURNS BOOLEAN
AS
    $$
    BEGIN
        FOR i IN 1..LENGTH(word) LOOP
            IF POSITION(LOWER(SUBSTRING(word, i, 1)) IN LOWER(set_of_letters)) > 0 THEN
                CONTINUE;
            ELSE
                RETURN FALSE;
            END IF;

        END LOOP;
        RETURN TRUE;
    END;
    $$
LANGUAGE plpgsql;