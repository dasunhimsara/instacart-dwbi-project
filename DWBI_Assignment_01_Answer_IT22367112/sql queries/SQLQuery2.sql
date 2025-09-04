CREATE OR ALTER PROCEDURE dbo.UpdateDimDepartment
    @department_id INT,
    @department_name NVARCHAR(50)
AS
BEGIN
    IF NOT EXISTS (
        SELECT department_SK
        FROM dbo.DimDepartment
        WHERE department_id = @department_id
    )
    BEGIN
        INSERT INTO dbo.DimDepartment (department_id, department_name)
        VALUES (@department_id, @department_name);
    END

    ELSE
    BEGIN
        UPDATE dbo.DimDepartment
        SET department_name = @department_name
        WHERE department_id = @department_id;
    END
END;