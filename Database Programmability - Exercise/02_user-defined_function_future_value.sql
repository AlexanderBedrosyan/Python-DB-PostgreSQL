CREATE OR REPLACE FUNCTION fn_calculate_future_value(initial_sum INTEGER, yearly_interest_rate DECIMAL, number_of_years INTEGER)
RETURNS DECIMAL
AS
$$
    DECLARE
        future_value DECIMAL;
    BEGIN
        future_value := initial_sum * ((1 + yearly_interest_rate)^number_of_years);
        RETURN trunc(future_value, 4);
    END;
$$
LANGUAGE plpgsql;