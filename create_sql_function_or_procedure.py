function_or_procedure = input('Please select option 1 for procedure or option 2 for function:')

if function_or_procedure == '1':
    function_name = input('Please provide the name of the function:')
    print(f"""
CREATE OR REPLACE FUNCTION {function_name}()
RETURNS
AS
$$
    DECLARE
    BEGIN
    END;
$$
LANGUAGE plpgsql;
    """)
elif function_or_procedure == '2':
    procedure_name = input('Please provide the name of the procedure:')
    print(f"""
CREATE OR REPLACE PROCEDURE {procedure_name}()
AS
$$  DECLARE
    BEGIN

    END;
$$
LANGUAGE  plpgsql;    
""")