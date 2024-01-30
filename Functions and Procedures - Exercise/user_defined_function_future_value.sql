CREATE OR REPLACE FUNCTION fn_calculate_future_value(initial_sum INT, yearly_interest_rate DECIMAL, number_of_years INT)
RETURNS DECIMAL
AS
    $$
    DECLARE
        future_value DECIMAL;
    BEGIN
        future_value := (initial_sum * POWER((1 + yearly_interest_rate), number_of_years));
        RETURN TRUNC(future_value::numeric, 4);
    END;
    $$
LANGUAGE plpgsql;