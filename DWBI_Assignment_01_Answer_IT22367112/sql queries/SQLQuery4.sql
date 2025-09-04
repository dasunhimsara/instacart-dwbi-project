CREATE OR ALTER PROCEDURE dbo.UpdateDimProduct
    @product_id INT,
    @product_name NVARCHAR(255),
    @department_SK INT,
    @aisle_SK INT,
    @rating_SK INT,
    @date_listed DATE
AS
BEGIN
    IF NOT EXISTS (
        SELECT product_SK
        FROM dbo.DimProduct
        WHERE product_id = @product_id
    )
    BEGIN
        INSERT INTO dbo.DimProduct (
            product_id, product_name, department_SK, aisle_SK, rating_SK, date_listed
        )
        VALUES (
            @product_id, @product_name, @department_SK, @aisle_SK, @rating_SK, @date_listed
        );
    END

    ELSE
    BEGIN
        UPDATE dbo.DimProduct
        SET product_name = @product_name,
            department_SK = @department_SK,
            aisle_SK = @aisle_SK,
            rating_SK = @rating_SK,
            date_listed = @date_listed
        WHERE product_id = @product_id;
    END
END;