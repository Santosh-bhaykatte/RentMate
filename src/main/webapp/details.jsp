<!-- Item detail + “Book Now” -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="includes/header.jsp" %>
<%@ page import="com.rentmate.model.Item" %>

<%
    Item item = (Item) request.getAttribute("item");
%>
<div class="container my-5">
  <div class="row">
    <div class="col-md-6">
      <img src="${pageContext.request.contextPath}/${item.imagePath}" class="img-fluid rounded" alt="${item.name}">
    </div>
    <div class="col-md-6">
      <h2>${item.name}</h2>
      <h4>${item.category}</h4>
      <p>${item.description}</p>
      <h4>₹${item.pricePerMonth} / month</h4>

      <form action="${pageContext.request.contextPath}/auth/BookingServlet" method="post" class="mt-4">
        <input type="hidden" name="itemId" value="${item.id}" />
        <div class="mb-3">
          <label>Start Date</label>
          <input type="date" name="startDate" class="form-control" required />
        </div>
        <div class="mb-3">
          <label>End Date</label>
          <input type="date" name="endDate" class="form-control" required />
        </div>
        <div class="mb-3">
          <label>Total Amount</label>
          <input type="text" id="totalAmount" class="form-control" readonly />
        </div>
        <button type="submit" class="btn btn-success">Proceed to Payment</button>
      </form>
    </div>
  </div>
</div>

<script>
  // Calculate total based on date difference
  const price = parseFloat('<%= item.getPricePerMonth() %>');
  const start = document.querySelector('input[name="startDate"]');
  const end = document.querySelector('input[name="endDate"]');
  const totalField = document.getElementById('totalAmount');

  function calcTotal() {
    if (start.value && end.value) {
      const sd = new Date(start.value), ed = new Date(end.value);
      const days = (ed - sd) / (1000*60*60*24) + 1;
      totalField.value = '₹' + (price * days).toFixed(2);
    }
  }
  start.addEventListener('change', calcTotal);
  end.addEventListener('change', calcTotal);
</script>

<%@ include file="includes/footer.jsp" %>
    