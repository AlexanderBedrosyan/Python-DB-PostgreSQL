CREATE OR REPLACE FUNCTION fn_is_word_comprised(set_of_letters VARCHAR(50), word VARCHAR(50))
RETURNS BOOLEAN
AS
$$
    DECLARE
        left_set_of_letters VARCHAR;
        curr_word VARCHAR;
        letter CHAR(1);
        curr_position INTEGER;
    BEGIN
        left_set_of_letters := lower(set_of_letters);
        curr_word := lower(word);
        WHILE TRUE LOOP
            letter := SUBSTRING(curr_word, 1, 1);
            curr_position := POSITION(letter IN left_set_of_letters);
            IF curr_position > 0 THEN
                left_set_of_letters := CONCAT(SUBSTRING(left_set_of_letters, 1, curr_position), SUBSTRING(left_set_of_letters, curr_position + 1));
                curr_word := LTRIM(curr_word, letter);
            ELSE
                RETURN FALSE;
            END IF;

            IF LENGTH(curr_word) = 0 THEN
                RETURN TRUE;
            END IF;
        END LOOP;
    END;
$$
LANGUAGE plpgsql;