var xmlhttp1 = new XMLHttpRequest();
var TotalPages;



xmlhttp1.onload = function() {
  if (this.readyState === 4 && this.status === 200) {
    var responseText = this.responseText;
    responseText = responseText.toLowerCase();
    var data = JSON.parse(responseText);

    var table = document.createElement("table");

    var thead = document.createElement("thead");

    var tr = document.createElement("tr");

    var th1 = document.createElement("th");
    th1.textContent = "Book Name";
    th1.setAttribute("data-column", "title");

    var th2 = document.createElement("th");
    th2.textContent = "Author";
    th2.setAttribute("data-column", "author");

    var th3 = document.createElement("th");
    th3.textContent = "Publish Date";
    th3.setAttribute("data-column", "publish_date");

    var th4 = document.createElement("th");
    th4.textContent = "Subject";
    th4.setAttribute("data-column", "subject");

    tr.appendChild(th1);
    tr.appendChild(th2);
    tr.appendChild(th3);
    tr.appendChild(th4);

    thead.appendChild(tr);

    var currentPage = 1;
    TotalPages = Math.ceil(data.length/10);
    table.appendChild(thead);

    var tbody = document.createElement("tbody");

    var filterDropdown = document.createElement("select");
    filterDropdown.id = "filterDropdown";
    filterDropdown.style.marginRight = "10px";
    filterDropdown.addEventListener("change", filterTable);

    var filterOptions = [
      { label: "Filter by", value: "" },
      { label: "Title", value: "title" },
      { label: "Author", value: "author" },
      { label: "Subject", value: "subject" },
      { label: "Publish Date", value: "publish_date" },
    ];

    filterOptions.forEach(function(option) {
      var filterOption = document.createElement("option");
      filterOption.textContent = option.label;
      filterOption.value = option.value;
      filterDropdown.appendChild(filterOption);
    });

    var filterInput = document.createElement("input");
    filterInput.type = "text";
    filterInput.id = "filterInput";
    filterInput.style.marginRight = "10px";
    filterInput.addEventListener("input", filterTable);

    var startDateInput = document.createElement("input");
    startDateInput.type = "date";
    startDateInput.id = "startDateInput";
    startDateInput.style.marginRight = "10px";
    startDateInput.addEventListener("input", filterTable);

    var endDateInput = document.createElement("input");
    endDateInput.type = "date";
    endDateInput.id = "endDateInput";
    endDateInput.style.marginRight = "10px";
    endDateInput.addEventListener("input", filterTable);

    var filterCountLabel = document.createElement("label");
    filterCountLabel.textContent = "Count: "+data.length;

    var navigation = document.createElement("div");
    navigation.className = "button-container";

    var prevButton = document.createElement("button");
    prevButton.textContent = "Previous";
    prevButton.id = "prev";
    prevButton.addEventListener("click", prev);
    prevButton.style.marginRight = "10px";

    var nextButton = document.createElement("button");
    nextButton.textContent = "Next";
    nextButton.id = "next";
    nextButton.addEventListener("click", next);
    nextButton.style.marginLeft = "10px";

    navigation.appendChild(filterDropdown);
    navigation.appendChild(filterInput);
    navigation.appendChild(startDateInput);
    navigation.appendChild(endDateInput);
    navigation.appendChild(filterCountLabel);
    navigation.appendChild(prevButton);
    navigation.appendChild(nextButton);

    function showPage(pageNumber) {
      tbody.innerHTML = "";

      var start = (pageNumber - 1) * 10;
      var end = start + 10;
      var filteredData = data;

      var column = filterDropdown.value;
      var filterValue = filterInput.value.toLowerCase();
      var startDate = formatDate(startDateInput.value);
      var endDate = formatDate(endDateInput.value);

      if (column) {
        filteredData = filterData();
      }

      for (var i = start; i < end && i < filteredData.length; i++) {
        var tr = document.createElement("tr");

        var book = filteredData[i];

        for (var key in book) {
          var td = document.createElement("td");
          td.textContent = book[key];
          tr.appendChild(td);
        }

        tbody.appendChild(tr);
      }
    }

    function formatDate(dateString) {
      var date = new Date(dateString);
      var year = date.getFullYear();
      var month = (date.getMonth() + 1).toString().padStart(2, '0');
      var day = date.getDate().toString().padStart(2, '0');
      return `${year}-${month}-${day}`;
    }
    

    function pagenumberdisablecheck() {
      prevButton.disabled = currentPage === 1;
      nextButton.disabled = currentPage === TotalPages;
    }

    function prev() {
      if (currentPage > 1) {
        currentPage--;
        showPage(currentPage);
        pagenumberdisablecheck();
      }
    }

    function next() {
      if (currentPage < TotalPages) {
        currentPage++;
        showPage(currentPage);
        pagenumberdisablecheck();
      }
    }

    function filterData() {
      var column = filterDropdown.value;
      var filterValue = filterInput.value.toLowerCase();
      var startDate = formatDate(startDateInput.value);
      var endDate = formatDate(endDateInput.value);

      return data.filter(function(book) {
        if (column === "publish_date") {
          var bookDate = new Date(book[column]);
          var bookDateString = formatDate(bookDate);

          if (startDate && endDate) {
            return bookDateString >= startDate && bookDateString <= endDate;
          } else if (startDate) {
            return bookDateString >= startDate;
          } else if (endDate) {
            return bookDateString <= endDate;
          } else {
            return true;
          }
        } else {
          return book[column].toLowerCase().includes(filterValue);
        }
      });
    }

    function filterTable() {
      currentPage = 1;
      showPage(currentPage);
      pagenumberdisablecheck();

      var filteredData = filterData();
      console.log(filteredData);
      filterCountLabel.textContent = "Count: " + filteredData.length;

      TotalPages = Math.ceil(filteredData.length / 10); // Update the total number of pages
    } 
    

    table.appendChild(tbody);
    document.body.appendChild(table);
    document.body.appendChild(navigation);

    filterTable();
  }
};

xmlhttp1.open("GET", "db.php", true);
xmlhttp1.send();
