<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
    <title>Admin</title>
</head>
<body>
<div class = "admin_body_section">
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>

    <!-- sidebar -->
    <div x-data="{ sidebarOpen: false }" class="flex h-screen bg-gray-200">
        <div :class="sidebarOpen ? 'block' : 'hidden'" @click="sidebarOpen = false" class="fixed z-20 inset-0 bg-black opacity-50 transition-opacity lg:hidden"></div>

        <div :class="sidebarOpen ? 'translate-x-0 ease-out' : '-translate-x-full ease-in'" class="fixed z-30 inset-y-0 left-0 w-64 transition duration-300 transform bg-gray-900 overflow-y-auto lg:translate-x-0 lg:static lg:inset-0">
            <div class="flex items-center justify-center mt-8">
                <div class="flex items-center">
                    <svg class="h-12 w-12" viewBox="0 0 512 512" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M364.61 390.213C304.625 450.196 207.37 450.196 147.386 390.213C117.394 360.22 102.398 320.911 102.398 281.6C102.398 242.291 117.394 202.981 147.386 172.989C147.386 230.4 153.6 281.6 230.4 307.2C230.4 256 256 102.4 294.4 76.7999C320 128 334.618 142.997 364.608 172.989C394.601 202.981 409.597 242.291 409.597 281.6C409.597 320.911 394.601 360.22 364.61 390.213Z" fill="#4C51BF" stroke="#4C51BF" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                        <path d="M201.694 387.105C231.686 417.098 280.312 417.098 310.305 387.105C325.301 372.109 332.8 352.456 332.8 332.8C332.8 313.144 325.301 293.491 310.305 278.495C295.309 263.498 288 256 275.2 230.4C256 243.2 243.201 320 243.201 345.6C201.694 345.6 179.2 332.8 179.2 332.8C179.2 352.456 186.698 372.109 201.694 387.105Z" fill="white"></path>
                    </svg>

                    <span class="text-white text-2xl mx-2 font-semibold">Dashboard</span>
                </div>
            </div>

            <nav class="mt-10">
                <a class="flex items-center mt-4 py-2 px-6 bg-gray-700 bg-opacity-25 text-gray-100" href="/">
                    <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                         stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z"></path>
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z"></path>
                    </svg>

                    <span class="mx-3">Dashboard</span>
                </a>

                <a class="flex items-center mt-4 py-2 px-6 text-gray-500 hover:bg-gray-700 hover:bg-opacity-25 hover:text-gray-100"
                   href="/admin/userdetails">
                    <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                         stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M17 14v6m-3-3h6M6 10h2a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v2a2 2 0 002 2zm10 0h2a2 2 0 002-2V6a2 2 0 00-2-2h-2a2 2 0 00-2 2v2a2 2 0 002 2zM6 20h2a2 2 0 002-2v-2a2 2 0 00-2-2H6a2 2 0 00-2 2v2a2 2 0 002 2z">
                        </path>
                    </svg>

                    <span class="mx-3">User Details</span>
                </a>

                <a class="flex items-center mt-4 py-2 px-6 text-gray-500 hover:bg-gray-700 hover:bg-opacity-25 hover:text-gray-100"
                   href="/admin/bookings">
                    <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                         stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10">
                        </path>
                    </svg>

                    <span class="mx-3">Booking Details</span>
                </a>

                <a class="flex items-center mt-4 py-2 px-6 text-gray-500 hover:bg-gray-700 hover:bg-opacity-25 hover:text-gray-100"
                   href="/admin/addRooms">
                    <svg class="h-6 w-6" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                         stroke="currentColor">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                              d="M11 5H6a2 2 0 00-2 2v11a2 2 0 002 2h11a2 2 0 002-2v-5m-1.414-9.414a2 2 0 112.828 2.828L11.828 15H9v-2.828l8.586-8.586z">
                        </path>
                    </svg>

                    <span class="mx-3">Rooms</span>
                </a>
            </nav>
        </div>

        <!-- Top Bar -->
        <div class="flex-1 flex flex-col overflow-hidden">
            <header class="flex justify-between items-center py-4 px-6 bg-white border-b-4 border-indigo-600">
                <div class="flex items-center">
                    <button @click="sidebarOpen = true" class="text-gray-500 focus:outline-none lg:hidden">
                        <svg class="h-6 w-6" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M4 6H20M4 12H20M4 18H11" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                    </button>

                    <div class="relative mx-4 lg:mx-0">
                            <span class="absolute inset-y-0 left-0 pl-3 flex items-center">
                                <svg class="h-5 w-5 text-gray-500" viewBox="0 0 24 24" fill="none">
                                    <path d="M21 21L15 15M17 10C17 13.866 13.866 17 10 17C6.13401 17 3 13.866 3 10C3 6.13401 6.13401 3 10 3C13.866 3 17 6.13401 17 10Z" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                </svg>
                            </span>
                        <input class="form-input w-32 sm:w-64 rounded-md pl-10 pr-4 focus:border-indigo-600" type="text" placeholder="Search" style = "outline: none;">
                    </div>
                </div>

                <div class="flex items-center">
                    <div x-data="{ notificationOpen: false }" class="relative">
                        <button @click="notificationOpen = ! notificationOpen"
                                class="flex mx-4 text-gray-600 focus:outline-none">
                            <svg class="h-6 w-6" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M15 17H20L18.5951 15.5951C18.2141 15.2141 18 14.6973 18 14.1585V11C18 8.38757 16.3304 6.16509 14 5.34142V5C14 3.89543 13.1046 3 12 3C10.8954 3 10 3.89543 10 5V5.34142C7.66962 6.16509 6 8.38757 6 11V14.1585C6 14.6973 5.78595 15.2141 5.40493 15.5951L4 17H9M15 17V18C15 19.6569 13.6569 21 12 21C10.3431 21 9 19.6569 9 18V17M15 17H9" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                </path>
                            </svg>
                        </button>

                        <div x-show="notificationOpen" @click="notificationOpen = false"
                             class="fixed inset-0 h-full w-full z-10" style="display: none;"></div>

                        <div x-show="notificationOpen"
                             class="absolute right-0 mt-2 w-80 bg-white rounded-lg shadow-xl overflow-hidden z-10"
                             style="width: 20rem; display: none;">
                            <a href="#"
                               class="flex items-center px-4 py-3 text-gray-600 hover:text-white hover:bg-indigo-600 -mx-2">
                                <img class="h-8 w-8 rounded-full object-cover mx-1"
                                     src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=334&amp;q=80"
                                     alt="avatar">
                                <p class="text-sm mx-2">
                                    <span class="font-bold" href="#">Sara Salah</span> replied on the <span
                                        class="font-bold text-indigo-400" href="#">Upload Image</span> artical . 2m
                                </p>
                            </a>
                            <a href="#"
                               class="flex items-center px-4 py-3 text-gray-600 hover:text-white hover:bg-indigo-600 -mx-2">
                                <img class="h-8 w-8 rounded-full object-cover mx-1"
                                     src="https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=634&amp;q=80"
                                     alt="avatar">
                                <p class="text-sm mx-2">
                                    <span class="font-bold" href="#">Slick Net</span> start following you . 45m
                                </p>
                            </a>
                            <a href="#"
                               class="flex items-center px-4 py-3 text-gray-600 hover:text-white hover:bg-indigo-600 -mx-2">
                                <img class="h-8 w-8 rounded-full object-cover mx-1"
                                     src="https://images.unsplash.com/photo-1450297350677-623de575f31c?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=334&amp;q=80"
                                     alt="avatar">
                                <p class="text-sm mx-2">
                                    <span class="font-bold" href="#">Jane Doe</span> Like Your reply on <span
                                        class="font-bold text-indigo-400" href="#">Test with TDD</span> artical . 1h
                                </p>
                            </a>
                            <a href="#"
                               class="flex items-center px-4 py-3 text-gray-600 hover:text-white hover:bg-indigo-600 -mx-2">
                                <img class="h-8 w-8 rounded-full object-cover mx-1"
                                     src="https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=398&amp;q=80"
                                     alt="avatar">
                                <p class="text-sm mx-2">
                                    <span class="font-bold" href="#">Abigail Bennett</span> start following you . 3h
                                </p>
                            </a>
                        </div>
                    </div>

                    <div x-data="{ dropdownOpen: false }" class="relative">
                        <button @click="dropdownOpen = ! dropdownOpen"
                                class="relative block h-8 w-8 rounded-full overflow-hidden shadow focus:outline-none" style="display: flex; justify-content: center; align-items: center;">
                            <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1" />
                            </svg>
                        </button>

                        <div x-show="dropdownOpen" @click="dropdownOpen = false" class="fixed inset-0 h-full w-full z-10"
                             style="display: none;"></div>

                        <div x-show="dropdownOpen"
                             class="absolute right-0 mt-2 w-48 bg-white rounded-md overflow-hidden shadow-xl z-10"
                             style="display: none;">
                            <a href="/login"
                               class="block px-4 py-2 text-sm text-gray-700 hover:bg-indigo-600 hover:text-white">Logout</a>
                        </div>
                    </div>
                </div>
            </header>

            <!-- Top content -->
            <main class="flex-1 overflow-x-hidden overflow-y-auto bg-gray-200">
                <div class="bg-gray-50" style="margin-top: 20px; margin-left: 20px; margin-right: 20px;">
                    <div class="max-w-7xl mx-auto py-12 px-4 sm:px-6 lg:py-16 lg:px-8 lg:flex lg:items-center lg:justify-between">
                        <h2 class="text-3xl font-extrabold tracking-tight text-gray-900 sm:text-4xl">
                            <span class="block">Ready to Manage?</span>
                            <span class="block text-indigo-600">Managing entire hotel in one place</span>
                        </h2>
                        <div class="mt-8 flex lg:mt-0 lg:flex-shrink-0">
                            <div class="inline-flex rounded-md shadow">
                                <a href = "#section_div" class="inline-flex items-center justify-center px-5 py-3 border border-transparent text-base font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-700 add_animation">
                                    Get started
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Dashboard -->
                <div class="container mx-auto px-6 py-8">
                    <h3 class="text-gray-700 text-3xl font-medium">Dashboard</h3>
                    <div class="mt-4">
                        <div class="flex flex-wrap -mx-6" style = "align-items: center;display: flex;justify-content: space-around;">
                            <div class="w-full px-6 sm:w-1/2 xl:w-1/3">
                                <div class="flex items-center px-5 py-6 shadow-sm rounded-md bg-white hover:shadow-xl transform hover:scale-110 transition duration-500">
                                    <div class="p-3 rounded-full bg-indigo-600 bg-opacity-75">
                                        <svg class="h-8 w-8 text-white" viewBox="0 0 28 30" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
                                            <path d="M18.2 9.08889C18.2 11.5373 16.3196 13.5222 14 13.5222C11.6804 13.5222 9.79999 11.5373 9.79999 9.08889C9.79999 6.64043 11.6804 4.65556 14 4.65556C16.3196 4.65556 18.2 6.64043 18.2 9.08889Z" fill="currentColor"></path>
                                            <path d="M25.2 12.0444C25.2 13.6768 23.9464 15 22.4 15C20.8536 15 19.6 13.6768 19.6 12.0444C19.6 10.4121 20.8536 9.08889 22.4 9.08889C23.9464 9.08889 25.2 10.4121 25.2 12.0444Z" fill="currentColor"></path>
                                            <path d="M19.6 22.3889C19.6 19.1243 17.0927 16.4778 14 16.4778C10.9072 16.4778 8.39999 19.1243 8.39999 22.3889V26.8222H19.6V22.3889Z" fill="currentColor"></path>
                                            <path d="M8.39999 12.0444C8.39999 13.6768 7.14639 15 5.59999 15C4.05359 15 2.79999 13.6768 2.79999 12.0444C2.79999 10.4121 4.05359 9.08889 5.59999 9.08889C7.14639 9.08889 8.39999 10.4121 8.39999 12.0444Z" fill="currentColor"></path>
                                            <path d="M22.4 26.8222V22.3889C22.4 20.8312 22.0195 19.3671 21.351 18.0949C21.6863 18.0039 22.0378 17.9556 22.4 17.9556C24.7197 17.9556 26.6 19.9404 26.6 22.3889V26.8222H22.4Z" fill="currentColor"></path>
                                            <path d="M6.64896 18.0949C5.98058 19.3671 5.59999 20.8312 5.59999 22.3889V26.8222H1.39999V22.3889C1.39999 19.9404 3.2804 17.9556 5.59999 17.9556C5.96219 17.9556 6.31367 18.0039 6.64896 18.0949Z" fill="currentColor"></path>
                                        </svg>
                                    </div>

                                    <div class="mx-5">
                                        <h4 class="text-2xl font-semibold text-gray-700">how many user</h4>
                                        <div class="text-gray-500">New Users</div>
                                    </div>
                                </div>
                            </div>

                            <div class="w-full mt-6 px-6 sm:w-1/2 xl:w-1/3 xl:mt-6">
                                <div class="flex items-center px-5 py-6 shadow-sm rounded-md bg-white hover:shadow-xl transform hover:scale-110 transition duration-500" style="margin-bottom: 20px;">
                                    <div class="p-3 rounded-full bg-pink-600 bg-opacity-75">
                                        <svg class="h-8 w-8 text-white" xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" viewBox="0 0 20 20" fill="currentColor">
                                            <path d="M7 3a1 1 0 000 2h6a1 1 0 100-2H7zM4 7a1 1 0 011-1h10a1 1 0 110 2H5a1 1 0 01-1-1zM2 11a2 2 0 012-2h12a2 2 0 012 2v4a2 2 0 01-2 2H4a2 2 0 01-2-2v-4z"
                                                  stroke="currentColor" stroke-width="2" stroke-linejoin="round" />
                                            <path d="M9.79999 8.4C9.79999 6.08041 11.6804 4.2 14 4.2C16.3196 4.2 18.2 6.08041 18.2 8.4V12.6C18.2 14.9197 16.3196 16.8 14 16.8C11.6804 16.8 9.79999 14.9197 9.79999 12.6V8.4Z"
                                                    stroke="currentColor" stroke-width="2"></path>
                                        </svg>
                                    </div>

                                    <div class="mx-5">
                                        <h4 class="text-2xl font-semibold text-gray-700">How many rooms</h4>
                                        <div class="text-gray-500">Hotel Rooms</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="flex flex-col mt-8">
                        <h3 class="text-gray-700 text-3xl font-medium" style="margin-top: 10px; margin-bottom: 40px;">Recent Users</h3>
                        <div class="-my-2 py-2 overflow-x-auto sm:-mx-6 sm:px-6 lg:-mx-8 lg:px-8">
                            <div class="align-middle inline-block min-w-full shadow overflow-hidden sm:rounded-lg border-b border-gray-200">
                                <table class="min-w-full">
                                    <thead>
                                        <tr>
                                            <th class="px-6 py-3 border-b border-gray-200 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">Name</th>
                                            <th class="px-6 py-3 border-b border-gray-200 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">Title</th>
                                            <th class="px-6 py-3 border-b border-gray-200 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">Status</th>
                                            <th class="px-6 py-3 border-b border-gray-200 bg-gray-50 text-left text-xs leading-4 font-medium text-gray-500 uppercase tracking-wider">Role</th>
                                        </tr>
                                    </thead>
                                    <tbody class="bg-white">
                                        <tr>
                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="flex items-center">
                                                    <div class="flex-shrink-0 h-10 w-10" style="display: flex; justify-content: center; align-items: center;">
                                                        <span class="material-icons-outlined">
                                                            badge
                                                        </span>
                                                    </div>
                                                    <div class="ml-4">
                                                        <div class="text-sm leading-5 font-medium text-gray-900">Name
                                                        </div>
                                                        <div class="text-sm leading-5 text-gray-500">Email</div>
                                                    </div>
                                                </div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="text-sm leading-5 text-gray-900"></div>
                                                <div class="text-sm leading-5 text-gray-500">Web dev</div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">Active</span>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200 text-sm leading-5 text-gray-500">Owner</td>
                                        </tr>
                                        <tr>
                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="flex items-center">
                                                    <div class="flex-shrink-0 h-10 w-10" style="display: flex; justify-content: center; align-items: center;">
                                                        <span class="material-icons-outlined">
                                                            badge
                                                        </span>
                                                    </div>
                                                    <div class="ml-4">
                                                        <div class="text-sm leading-5 font-medium text-gray-900">Name
                                                        </div>
                                                        <div class="text-sm leading-5 text-gray-500">Email</div>
                                                    </div>
                                                </div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="text-sm leading-5 text-gray-900"></div>
                                                <div class="text-sm leading-5 text-gray-500">Web dev</div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">Active</span>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200 text-sm leading-5 text-gray-500">Owner</td>
                                        </tr>
                                        <tr>
                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="flex items-center">
                                                    <div class="flex-shrink-0 h-10 w-10" style="display: flex; justify-content: center; align-items: center;">
                                                        <span class="material-icons-outlined">
                                                            badge
                                                        </span>
                                                    </div>
                                                    <div class="ml-4">
                                                        <div class="text-sm leading-5 font-medium text-gray-900">Name
                                                        </div>
                                                        <div class="text-sm leading-5 text-gray-500">Email</div>
                                                    </div>
                                                </div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="text-sm leading-5 text-gray-900"></div>
                                                <div class="text-sm leading-5 text-gray-500">Web dev</div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">Active</span>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200 text-sm leading-5 text-gray-500">Owner</td>
                                        </tr>
                                        <tr>
                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="flex items-center">
                                                    <div class="flex-shrink-0 h-10 w-10" style="display: flex; justify-content: center; align-items: center;">
                                                        <span class="material-icons-outlined">
                                                            badge
                                                        </span>
                                                    </div>
                                                    <div class="ml-4">
                                                        <div class="text-sm leading-5 font-medium text-gray-900">Name
                                                        </div>
                                                        <div class="text-sm leading-5 text-gray-500">Email</div>
                                                    </div>
                                                </div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="text-sm leading-5 text-gray-900"></div>
                                                <div class="text-sm leading-5 text-gray-500">Web dev</div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">Active</span>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200 text-sm leading-5 text-gray-500">Owner</td>
                                        </tr>
                                        <tr>
                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="flex items-center">
                                                    <div class="flex-shrink-0 h-10 w-10" style="display: flex; justify-content: center; align-items: center;">
                                                        <span class="material-icons-outlined">
                                                            badge
                                                        </span>
                                                    </div>
                                                    <div class="ml-4">
                                                        <div class="text-sm leading-5 font-medium text-gray-900">Name
                                                        </div>
                                                        <div class="text-sm leading-5 text-gray-500">Email</div>
                                                    </div>
                                                </div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="text-sm leading-5 text-gray-900"></div>
                                                <div class="text-sm leading-5 text-gray-500">Web dev</div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">Active</span>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200 text-sm leading-5 text-gray-500">Owner</td>
                                        </tr>
                                        <tr>
                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="flex items-center">
                                                    <div class="flex-shrink-0 h-10 w-10" style="display: flex; justify-content: center; align-items: center;">
                                                        <span class="material-icons-outlined">
                                                            badge
                                                        </span>
                                                    </div>
                                                    <div class="ml-4">
                                                        <div class="text-sm leading-5 font-medium text-gray-900">Name
                                                        </div>
                                                        <div class="text-sm leading-5 text-gray-500">Email</div>
                                                    </div>
                                                </div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="text-sm leading-5 text-gray-900"></div>
                                                <div class="text-sm leading-5 text-gray-500">Web dev</div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">Active</span>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200 text-sm leading-5 text-gray-500">Owner</td>
                                        </tr>
                                        <tr>
                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="flex items-center">
                                                    <div class="flex-shrink-0 h-10 w-10" style="display: flex; justify-content: center; align-items: center;">
                                                        <span class="material-icons-outlined">
                                                            badge
                                                        </span>
                                                    </div>
                                                    <div class="ml-4">
                                                        <div class="text-sm leading-5 font-medium text-gray-900">Name
                                                        </div>
                                                        <div class="text-sm leading-5 text-gray-500">Email</div>
                                                    </div>
                                                </div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="text-sm leading-5 text-gray-900"></div>
                                                <div class="text-sm leading-5 text-gray-500">Web dev</div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">Active</span>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200 text-sm leading-5 text-gray-500">Owner</td>
                                        </tr>
                                        <tr>
                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="flex items-center">
                                                    <div class="flex-shrink-0 h-10 w-10" style="display: flex; justify-content: center; align-items: center;">
                                                        <span class="material-icons-outlined">
                                                            badge
                                                        </span>
                                                    </div>
                                                    <div class="ml-4">
                                                        <div class="text-sm leading-5 font-medium text-gray-900">Name
                                                        </div>
                                                        <div class="text-sm leading-5 text-gray-500">Email</div>
                                                    </div>
                                                </div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="text-sm leading-5 text-gray-900"></div>
                                                <div class="text-sm leading-5 text-gray-500">Web dev</div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">Active</span>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200 text-sm leading-5 text-gray-500">Owner</td>
                                        </tr>
                                        <tr>
                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="flex items-center">
                                                    <div class="flex-shrink-0 h-10 w-10" style="display: flex; justify-content: center; align-items: center;">
                                                        <span class="material-icons-outlined">
                                                            badge
                                                        </span>
                                                    </div>
                                                    <div class="ml-4">
                                                        <div class="text-sm leading-5 font-medium text-gray-900">Name
                                                        </div>
                                                        <div class="text-sm leading-5 text-gray-500">Email</div>
                                                    </div>
                                                </div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="text-sm leading-5 text-gray-900"></div>
                                                <div class="text-sm leading-5 text-gray-500">Web dev</div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">Active</span>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200 text-sm leading-5 text-gray-500">Owner</td>
                                        </tr>
                                        <tr>
                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="flex items-center">
                                                    <div class="flex-shrink-0 h-10 w-10" style="display: flex; justify-content: center; align-items: center;">
                                                        <span class="material-icons-outlined">
                                                            badge
                                                        </span>
                                                    </div>
                                                    <div class="ml-4">
                                                        <div class="text-sm leading-5 font-medium text-gray-900">Name
                                                        </div>
                                                        <div class="text-sm leading-5 text-gray-500">Email</div>
                                                    </div>
                                                </div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <div class="text-sm leading-5 text-gray-900"></div>
                                                <div class="text-sm leading-5 text-gray-500">Web dev</div>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200">
                                                <span class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">Active</span>
                                            </td>

                                            <td class="px-6 py-4 whitespace-no-wrap border-b border-gray-200 text-sm leading-5 text-gray-500">Owner</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div id = "section_div">
                    <div class="py-14">
                        <h1 class="mt-8 text-center text-5xl text-green-600 font-bold">Services</h1>

                        <!-- Box -->
                        <div class="md:flex md:justify-center md:space-x-8 md:px-14">
                            <!-- box-1 -->
                            <div class="mt-16 py-4 px-4 bg-whit w-72 bg-white rounded-xl shadow-lg hover:shadow-xl transform hover:scale-110 transition duration-500 mx-auto md:mx-0">
                                <div class="w-sm">
                                    <img class="w-64" src="https://images01.nicepage.com/c461c07a441a5d220e8feb1a/a17abde8d83650a582a28432/users-with-speech-bubbles-vector_53876-82250.jpg" alt="" />
                                    <div class="mt-4 text-green-600 text-center">
                                        <h1 class="text-xl font-bold">Booking Details</h1>
                                        <p class="mt-4 text-gray-600">It shows the booking details in your hotel.</p>
                                        <a href = "/admin/bookings"><button class="mt-8 mb-4 py-2 px-14 rounded-full bg-green-600 text-white tracking-widest hover:bg-green-500 transition duration-200">Go</button></a>
                                    </div>
                                </div>
                            </div>

                            <!-- box-2 -->
                            <div class="mt-16 py-4 px-4 bg-whit w-72 bg-white rounded-xl shadow-lg hover:shadow-xl transform hover:scale-110 transition duration-500 mx-auto md:mx-0">
                                <div class="w-sm">
                                    <img class="w-64" src="https://images01.nicepage.com/c461c07a441a5d220e8feb1a/3b242447f922540fbe750cab/fdf.jpg" alt="" />
                                    <div class="mt-4 text-green-600 text-center">
                                        <h1 class="text-xl font-bold">User Details</h1>
                                        <p class="mt-4 text-gray-600">It shows the registered user details in your hotel.</p>
                                        <a href = "/admin/userdetails"><button class="mt-8 mb-4 py-2 px-14 rounded-full bg-green-600 text-white tracking-widest hover:bg-green-500 transition duration-200">Go</button></a>
                                    </div>
                                </div>
                            </div>

                            <!-- box-3 -->
                            <div class="mt-16 py-4 px-4 bg-whit w-72 bg-white rounded-xl shadow-lg hover:shadow-xl transform hover:scale-110 transition duration-500 mx-auto md:mx-0">
                                <div class="w-sm">
                                    <img class="w-64" src="https://images01.nicepage.com/c461c07a441a5d220e8feb1a/8cc47b39e719570b996d9879/dsds.jpg" alt="" />
                                    <div class="mt-4 text-green-600 text-center">
                                        <h1 class="text-xl font-bold">Room Details</h1>
                                        <p class="mt-4 text-gray-600">It shows the available room details in your hotel.</p>
                                        <a href = "/admin/addRooms"><button class="mt-8 mb-4 py-2 px-14 rounded-full bg-green-600 text-white tracking-widest hover:bg-green-500 transition duration-200">Go</button></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <footer class="text-center py-16 bg-gray-900 text-sm" style="display: flex; align-items: center; justify-content: center">
                        <p class="mt-20 text-white"><span class="underline text-green-200 cursor-pointer">@Copyrights 2021 - </span>created by<span class="underline text-green-200 cursor-pointer"> citadel</span></p>
                    </footer>
                </div>
            </main>
        </div>
    </div>
</div>
</body>
</html>
