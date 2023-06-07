USE Video_Rental_DB;
GO

DROP VIEW IF EXISTS rental_item_fees_view;
GO
CREATE VIEW rental_item_fees_view
AS
    SELECT
        r.*,
        r_i.item_id,
        item_type_cd,
        CASE WHEN item_type_cd IN ('VdCam', 'VCR') THEN 'Equipment'
            WHEN item_type_cd IN ('Mov') THEN 'Movie'
            ELSE 'Other'
            END AS item_category,
        charge_per_day,
        late_charge_per_day,
        DATEDIFF(day, created_date, due_date) rent_days,
        DATEDIFF(day, created_date, return_date) rented_days,
        DATEDIFF(day, due_date, return_date) overdue_days,
        CASE WHEN return_date > due_date THEN DATEDIFF(day, due_date, return_date)*late_charge_per_day
			ELSE 0
			END AS overdue_fee,
        CASE WHEN return_date > due_date THEN DATEDIFF(day, created_date, due_date)*charge_per_day
            ELSE DATEDIFF(day, created_date, return_date)*charge_per_day
            END AS rental_fee
    FROM rentals r
        INNER JOIN rental_items r_i ON r.rental_id = r_i.rental_id
        INNER JOIN items i ON r_i.item_id = i.item_id
        INNER JOIN late_charges l ON i.late_charge_cd = l.late_charge_cd
    WHERE return_date IS NOT NULL;

GO

SELECT * FROM rental_item_fees_view