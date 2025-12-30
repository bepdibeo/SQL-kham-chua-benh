CREATE OR ALTER PROCEDURE sp_ThongKeBenhPhoBien
    @TuNgay DATE,
    @DenNgay DATE
AS
BEGIN
    SELECT TOP 5 
        (SELECT TenBenh FROM Benh WHERE MaBenh = HoSoKham.MaBenh) AS TenBenh,
        COUNT(MaBenh) AS SoLuot
    FROM HoSoKham
    WHERE NgayKham BETWEEN @TuNgay AND @DenNgay
    GROUP BY MaBenh
    ORDER BY SoLuot DESC;
END;
GO