DELIMITTER//

CREATE procedure CancelOrder(IN orderid INT) 
BEGIN 
DELETE FROM Orders WHERE OrderID= orderid; 


END // 

DELIMITTER ; 


CALL CancelOrder(5); 