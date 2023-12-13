-- Create the trigger function for updating storage
CREATE OR REPLACE FUNCTION update_storage()
RETURNS TRIGGER AS
$$
DECLARE
current_cheese_quantity		integer;
BEGIN

	current_cheese_quantity := (
		SELECT quantity FROM cheese WHERE cheese.id = NEW.cheese_id
	);

	IF current_cheese_quantity - NEW.quantity  > 0 THEN
	  UPDATE cheese
	  SET quantity = quantity - NEW.quantity
	  WHERE id = NEW.cheese_id;
	END IF;

  RETURN NEW;
END;
$$
LANGUAGE PLPGSQL;


-- Create the storage trigger on database
CREATE TRIGGER update_storage
AFTER INSERT
ON order_items
FOR EACH ROW
EXECUTE PROCEDURE update_storage();



-- Create a function for the trigger that handles the customer points
CREATE OR REPLACE FUNCTION earn_points()
RETURNS TRIGGER AS
$$
declare
customer_id			uuid;
BEGIN
	customer_id := (
		select c.id from customer_address ca
			join customer c on
				c.id = ca.customer_id
		where ca.id = new.customer_address_id
	);

  INSERT INTO customer_points VALUES(uuid_generate_v4(), NOW(), customer_id, new.id, NEW.total_value / 10 );

  RETURN NEW;
END;
$$
LANGUAGE PLPGSQL;


-- Create the trigger onto database
CREATE TRIGGER earn_points
AFTER INSERT
ON "order"
FOR EACH ROW
EXECUTE PROCEDURE earn_points();

