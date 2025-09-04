CREATE OR ALTER PROCEDURE dbo.UpdateDimAisle
    @aisle_id INT,
    @aisle_name NVARCHAR(100)
AS
BEGIN
    IF NOT EXISTS (
        SELECT aisle_SK
        FROM dbo.DimAisle
        WHERE aisle_id = @aisle_id
    )
    BEGIN
        INSERT INTO dbo.DimAisle (aisle_id, aisle_name)
        VALUES (@aisle_id, @aisle_name);
    END

    ELSE
    BEGIN
        UPDATE dbo.DimAisle
        SET aisle_name = @aisle_name
        WHERE aisle_id = @aisle_id;
    END
END;