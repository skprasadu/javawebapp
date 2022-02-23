<jsp:useBean id="obj" class="com.hcl.javaservletjsp.Calculator"/>  
  
<%  
int m=obj.cube(5);  
out.print("cube of 5 is "+m);  
%>  