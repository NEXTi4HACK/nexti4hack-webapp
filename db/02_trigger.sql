

DELIMITER |

CREATE TRIGGER insert_trigger_users BEFORE INSERT ON users
  FOR EACH ROW BEGIN
    SET NEW.create_date = now();
	SET NEW.update_date = now();
    SET NEW.create_user = user();
    SET NEW.update_user = user();
  END;
|
CREATE TRIGGER update_trigger_users BEFORE UPDATE ON users
  FOR EACH ROW BEGIN
    SET NEW.update_date = now();
    SET NEW.update_user = user();
  END;
|


DELIMITER ;