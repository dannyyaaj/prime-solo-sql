	-- 1.	Get all users from Chicago.
	SELECT "username" FROM "accounts"
	WHERE "city" LIKE 'chicago';
	
	-- 2.	Get all users with usernames that contain the letter a.
	SELECT * FROM "accounts"
	WHERE "username" LIKE '%a%';
	
	-- 3.	The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.
    UPDATE "accounts" SET "account_balance" = '10'
    WHERE "account_balance" = 0 and "transactions_attempted" = 0;
	
	-- 4.	Select all users that have attempted 9 or more transactions.
	SELECT * FROM "accounts"
	WHERE "transactions_attempted" >= 9;
	
	-- 5.	Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT
	SELECT "username", "account_balance" FROM "accounts"
	WHERE "account_balance" BETWEEN 0 AND (SELECT MAX("account_balance") from "accounts")
	ORDER BY "account_balance" DESC LIMIT 3;