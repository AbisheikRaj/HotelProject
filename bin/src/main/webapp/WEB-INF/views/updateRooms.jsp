<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Rooms</title>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <link rel="stylesheet" href = "<%= request.getContextPath() %>/css/update.css" />
    <script src="<%= request.getContextPath() %>/js/Room.js" type="text/javascript"></script>
</head>
<body>
<div class = "update__room">
    <div class = "message__alert__div">
        <div class = "message__alert">
            <div class = "update__error__alert">
                <%
                    if (session.getAttribute("valid_message") == "valid") {
                %>
                <div>
                    <div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative" role="alert">
                        <strong class="font-bold">Room Details are successfully updated</strong>
                    </div>
                </div>
                <%
                    } else if (session.getAttribute("valid_message") == "invalid") {
                %>
                <div>
                    <div class="bg-red-100 border border-red-400 text-red-700 px-4 py-3 rounded relative" role="alert">
                        <strong class="font-bold">${output_message}</strong>
                    </div>
                </div>
            </div>
            <%
                }
                session.removeAttribute("Invalid_message"); session.removeAttribute("valid_message");
            %>
        </div>
    </div>
    <div class = "room__heading">
        <div class="flex-1 min-w-0">
            <h2 class="text-2xl font-bold leading-10 text-gray-900 sm:text-3xl sm:truncate">
                Update Room
            </h2>
        </div>
    </div>
    <div class = "main__update__form">
        <div class = "update__form">

            <div class="px-4 py-5 bg-white sm:p-6">
                <div class="grid grid-cols-4 gap-4">
                    <form name = "login" action = "<%= request.getContextPath() %>/rooms/updateDetails" method="POST" class="w-full max-w-sm" Onsubmit="return validateForm();">
                        <div class="md:flex md:items-center mb-6">
                            <div class="md:w-1/3">
                                <label class="block text-gray-500 font-bold md:text-right mb-1 md:mb-0 pr-4" for="inline-full-name">
                                    <p class = "" id = "demo">Room Number</p>
                                </label>
                            </div>
                            <div class="md:w-2/3">
                                <input class="bg-gray-200 appearance-none border-2 border-gray-200 rounded w-full py-2 px-4 text-gray-700 leading-tight focus:outline-none focus:bg-white focus:border-purple-500" id="roomNumber" type="text" name = "roomNumber" value = ${roomNumber} placeholder = "Room Number" aria-describedby="roomNumberHelp">
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
                                        Update
                                    </button>
                                </div>
                                <div class="md:w-2/3">
                                    <button onclick = "toggleModal('modal-id')" class="shadow bg-purple-500 hover:bg-purple-400 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded" type="button">
                                        <a href = "/admin/addRooms">Back</a>
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
<script>
    setTimeout(function() {
        $('.update__error__alert').fadeOut(600);
    }, 1500);
</script>
</body>
</html>



