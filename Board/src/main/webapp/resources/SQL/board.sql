    --- *** 스프링 게시판 *** ---
        
    show user;
    -- USER이(가) "MYORAUSER"입니다.
    
    create table spring_test1
    ( no             number
    , name         varchar2(100)
    , writeday      date default sysdate
    );
    
    select *
    from spring_test1
    order by writeday desc;
    
    delete from spring_test1;
    commit;
    
    ----------------------------------------------------------------------------------------------------------------------
    -- 7/10
    show user;
    -- USER이(가) "HR"입니다.
    
    select employee_id, first_name || ' ' || last_name AS ename, salary
            , nvl ( salary + (salary * commission_pct), salary) * 12 AS yearsal
            
    from employees;
    
    select employee_id, first_name || ' ' || last_name AS ename, salary,
           nvl ( salary*12 + (salary * commission_pct), salary ) AS yearsal,
           case substr(jubun, 7, 1) 
           when '1' then '남'
           when '3' then '남'
           when '2' then '여'
           when '4' then '여'
           end AS gender,
           case when substr(jubun,1,2) >= 50 then extract(year from sysdate) - (1900+to_number(substr(jubun,1,2)))+1
           else extract(year from sysdate) - (2000+to_number(substr(jubun,1,2)))+1 end
           AS age
    from employees;
    
    
    select employee_id
         , first_name || ' ' || last_name AS ename
         , nvl(salary*12+salary*commission_pct, salary*12) AS yearpay
         , case when substr(jubun,7,1) in('1','3') then '남' else '여' end  AS gender
         , extract(year from sysdate) - (case when substr(jubun,7,1) in('1','2') then 1900 else 2000 end + to_number(substr(jubun,1,2)) ) + 1 AS age 
    from employees;


    select *
    from employees;
    
    http://localhost:9090/test/employees.action
    -- datatables 페이징처리
    -- tiles1 View단
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    