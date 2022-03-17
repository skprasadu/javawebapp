<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="javax.persistence.EntityManager,
javax.persistence.EntityManagerFactory,
javax.persistence.EntityTransaction,
javax.persistence.Persistence,
javax.persistence.Query,
com.hcl.javaservletjsp.User2,
java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!--  this is where your JSP block started -->
<%
EntityManagerFactory emf = null;
EntityManager entityManager = null;
EntityTransaction transaction = null;

try {
	emf = Persistence.createEntityManagerFactory("jbd-pu");
	entityManager = emf.createEntityManager();
	transaction = entityManager.getTransaction();
	
	transaction.begin();
	
	entityManager.persist(new User2( "krishna", "k@p.com", "sfo"));
	entityManager.persist(new User2( "kart", "k@k.com", "seattle"));

	Query readAll1 = entityManager.createQuery("select s from User2 s");

	List<User2> resultListAll1 = readAll1.getResultList();

	for(User2 u: resultListAll1) {
%>

<!--  this is where your HTML block started -->

Welcome User: <%= u%> <br/>  

<!--  this is where your JSP block again started -->
<%	}
	transaction.commit();
} catch (Exception e) {
	System.out.println(e);
	if (transaction != null) {
		transaction.rollback();
	}
} finally {
	if (entityManager != null) {
		entityManager.close();
	}
	if (emf != null) {
		emf.close();
	}
}

%>

</body>
</html>