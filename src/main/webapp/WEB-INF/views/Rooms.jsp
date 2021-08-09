<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Details</title>
    <link rel = "stylesheet" href = "<%= request.getContextPath() %>/css/Rooms.css" />
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="<%= request.getContextPath() %>/js/Room.js" type="text/javascript"></script>
</head>

<body>

<!-- Title -->
<div class = "room__heading">
    <div class="lg:flex lg:items-center lg:justify-between">
        <div class="flex-1 min-w-0">
            <h2 class="text-2xl font-bold leading-10 text-gray-900 sm:text-3xl sm:truncate">
                Room Details
            </h2>
        </div>
        <div class="mt-5 flex lg:mt-1 lg:ml-4">
        <span class="sm:ml-3">
          <button type="button" onclick="toggleModal('modal-id')" class="inline-flex items-center px-4 py-2 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-indigo-600 hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
            <svg class="-ml-1 mr-2 h-5 w-5" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
              <path fill-rule="evenodd" d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" clip-rule="evenodd" />
            </svg>
            Add Rooms
          </button>
        </span>
        </div>
    </div>
</div>

<!-- Search Bar -->
<div class="search__container">
    <form action = "/rooms/getDetailsById" method="GET">
        <div class="bg-white shadow p-4 flex">
        <span class="w-auto flex justify-end items-center text-gray-500 p-2">
            <i class="material-icons text-3xl">search</i>
        </span>
            <input class="w-full rounded p-2" type="text" name = "roomNumber" placeholder="Search Room Number">
            <button class="bg-red-400 hover:bg-red-300 rounded text-white p-2 pl-4 pr-4" type = "submit">
                <p class="font-semibold text-xs">Search</p>
            </button>
        </div>
    </form>
</div>

<!-- Notification -->
<div class = "message__alert__div">
    <div class = "message__alert">
        <div class = "error__alert">
            <%
                if (session.getAttribute("message") != null) {
            %>
            <div>
                <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative" role="alert">
                    <strong class="font-bold">${message}</strong>
                </div>
            </div>
        </div>
        <%
            }
            session.removeAttribute("message");
        %>
    </div>
</div>

<!-- Table -->
<div class = "table__content">
    <div class="flex flex-col">
        <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-0">
            <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
                <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
                        <%
                            if (session.getAttribute("rooms") != null && session.getAttribute("room") == null && session.getAttribute("message1") != "Invalid") {
                        %>
                    <table class="min-w-full divide-y divide-gray-200">
                        <thead class="bg-gray-50">
                        <tr>
                            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                ROOM NUMBER
                            </th>
                            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                ROOM SECTION
                            </th>
                            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                ROOM TYPE
                            </th>
                            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                AVAILABILITY
                            </th>
                            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                ACTION
                            </th>
                        </tr>
                        </thead>
                        <tbody class="bg-white divide-y divide-gray-200">
                            <c:forEach items = '<%= session.getAttribute("rooms") %>' var = "room">
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <div class="flex items-center">
                                            <div class="ml-4">
                                                <div class="text-sm font-medium text-gray-900 text-center">
                                                        ${room.roomNumber}
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-purple-800">
                                            ${room.roomSection}
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <div class="text-sm text-gray-900" id = "roomTyp">${room.roomType}</div>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <c:choose>
                                            <c:when test="${room.roomAvailability}">
                                                 <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">
                                                     Available
                                                 </span>
                                            </c:when>
                                            <c:otherwise>
                                                 <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-red-100 text-red-800">
                                                     Not Available
                                                 </span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-center text-sm font-medium">
                                        <button  class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                                            <a href = "/admin/updateRooms?roomNumber=${room.roomNumber}">Edit</a>
                                        </button>
                                        <button  class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                                            <a href = "/admin/deleteRooms?roomNumber=${room.roomNumber}">Delete</a>
                                        </button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                        <%
                            } else if(session.getAttribute("room") != null && session.getAttribute("message1") != "Invalid"){
                        %>
                    <table class="min-w-full divide-y divide-gray-200">
                        <thead class="bg-gray-50">
                        <tr>
                            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                ROOM NUMBER
                            </th>
                            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                ROOM SECTION
                            </th>
                            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                ROOM TYPE
                            </th>
                            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                AVAILABILITY
                            </th>
                            <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                ACTION
                            </th>
                        </tr>
                        </thead>
                        <tbody class="bg-white divide-y divide-gray-200">
                            <tr>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="flex items-center">
                                        <div class="ml-4">
                                            <div class="text-sm font-medium text-gray-900 text-center">
                                                ${room.roomNumber}
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap text-sm font-medium text-purple-800">
                                    ${room.roomSection}
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <div class="text-sm text-gray-900">${room.roomType}</div>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap">
                                    <c:choose>
                                        <c:when test="${room.roomAvailability}">
                                                     <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">
                                                         Available
                                                     </span>
                                        </c:when>
                                        <c:otherwise>
                                                     <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-red-100 text-red-800">
                                                         Not Available
                                                     </span>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td class="px-6 py-4 whitespace-nowrap text-center text-sm font-medium">
                                    <button  class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
                                        <a href = "/admin/updateRooms?roomNumber=${room.roomNumber}">Edit</a>
                                    </button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                        <% } else {%>

                            <div class="data__message"> <h1>No data are Available...</h1></div>


                        <% } session.removeAttribute("rooms"); session.removeAttribute("room"); session.removeAttribute("message1"); %>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Add Room Modal -->

<div id = "modal-id" class="hidden fixed z-10 inset-0 overflow-y-auto" aria-labelledby="modal-title" role="dialog" aria-modal="true">
    <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
        <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>
        <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
        <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full">
            <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                <div class="sm:flex sm:items-start">
                    <div class="mt-3 text-center sm:mt-0 sm:ml-4 sm:text-left">
                        <h3 class="text-lg leading-6 font-medium text-gray-900" id="modal-title">
                            Add Rooms
                        </h3>
                        <div class="mt-2">
                            <div class = "modal__form" id = "modal-id" class="shadow overflow-hidden sm:rounded-md">
                                <div class="px-4 py-5 bg-white sm:p-6">
                                    <div class="grid grid-cols-4 gap-4">
                                        <form name = "login" action = "/rooms/addDetails" method="POST" class="w-full max-w-sm" Onsubmit="return validateForm();">
                                            <div class="md:flex md:items-center mb-6">
                                                <div class="md:w-1/3">
                                                    <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4" for="inline-full-name">
                                                        <p class = "" id = "demo">Room Number</p>
                                                    </label>
                                                </div>
                                                <div class="md:w-2/3">
                                                    <input class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500" id="roomNumber" type="text" name = "roomNumber" placeholder = "Room Number" aria-describedby="roomNumberHelp">
                                                    <span id = "roomNumberHelp"></span>
                                                </div>
                                            </div>
                                            <div class="md:flex md:items-center mb-6">
                                                <div class="md:w-1/3">
                                                    <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4" for="inline-password">
                                                        <p class = "" id = "demo1">Room Section</p>
                                                    </label>
                                                </div>
                                                <div class="md:w-2/3">
                                                    <select name = "roomSection" id = "roomSection" class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500" aria-describedby="roomNumberHelp">
                                                        <option selected value = "none">Sections</option>
                                                        <option value = "A">A</option>
                                                        <option value = "B">B</option>
                                                        <option value = "C">C</option>
                                                        <option value = "D">D</option>
                                                        <option value = "E">E</option>
                                                        <option value = "F">F</option>
                                                    </select>
                                                    <span id = "roomSectionHelp"></span>
                                                </div>
                                            </div>
                                            <div class="md:flex md:items-center mb-6">
                                                <div class="md:w-1/3">
                                                    <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4" for="inline-password">
                                                        <p class = "" id = "demo2">Room Type</p>
                                                    </label>
                                                </div>
                                                <div class="md:w-2/3">
                                                    <select name = "roomType" id = "roomType" class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500" aria-describedby="roomTypeHelp">
                                                        <option selected value = "none">Type</option>
                                                        <option value = "Single Cot / AC">Single Cot / AC</option>
                                                        <option value = "Single Cot / NON-AC">Single Cot / NON-AC</option>
                                                        <option value = "Double Cot / AC">Double Cot / AC</option>
                                                        <option value = "Double Cot / NON-AC">Double Cot / NON-AC</option>
                                                        <option value = "Triple Cot / AC">Triple Cot / AC</option>
                                                        <option value = "Triple Cot / NON-AC">Triple Cot / NON-AC</option>
                                                    </select>
                                                    <span id = "roomTypeHelp"></span>
                                                </div>
                                            </div>

                                            <div class = "action__button">
                                                <div class="md:flex md:items-center mb-6">
                                                    <div class="md:w-1/3"></div>
                                                    <div class="md:w-2/3">
                                                        <button type = "submit" class="shadow bg-purple-500 hover:bg-purple-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded">
                                                            Add
                                                        </button>
                                                    </div>
                                                    <div class="md:w-2/3">
                                                        <button onclick = "toggleModal('modal-id')" class="shadow bg-purple-500 hover:bg-purple-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded" type="button">
                                                            Cancel
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function toggleModal(modalID){
        document.getElementById(modalID).classList.toggle("hidden");
        document.getElementById(modalID).classList.toggle("flex");
    }

    setTimeout(function() {
        $('.error__alert').fadeOut(600);
    }, 1500);

</script>
</body>
</html>