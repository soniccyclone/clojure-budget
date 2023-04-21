select * from public.user
select * from public.budget;
select * from public.budget_value;
select * from transaction

insert into public.timeframe (name) values ('monthly');
insert into public.user (name, password, salt, budget_timeframe_id) values ('nathan', 'TEST', 'TEST', 1)
insert into public.budget (user_id, name, amount, default_message) values (1, 'test_budget3', 200.00, '')
insert into public.budget_value (budget_id, value) values (1, 0.00)
select * from NOW()
insert into public.transaction (budget_id, amount, date, description, automated) values (6, -1, NOW(), 'spent one dollah', false)

update budget_value set value = value + value where budget_id = 6

delete from public.budget
update transaction set amount = 30 where id = 10
delete from transaction where id = 10