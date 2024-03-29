<?php
session_start();
include("../../connection.php");
 if (!isset($_SESSION["login"])) {
   header("Location: ../masuk/umkm/login.php");
   exit;
 } 

 if(isset($_SESSION["login"])) {
  // Ambil username dari session
  $email = $_SESSION["email"];

  // Query untuk mendapatkan data pengguna
  $query = "SELECT * FROM umkm WHERE email = '$email'";
  $result = mysqli_query($conn, $query);

  if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);

    $poto_profil_umkm = $row["foto_profil"];
    // Gunakan $id_konsultan untuk query atau tampilkan data ajuan sesuai kebutuhan
    // ...

} else {
    // Data konsultan tidak ditemukan
    echo "Data umkm tidak ditemukan.";
}

}
 

 
?>

<!DOCTYPE html>
<html :class="{ 'theme-dark': dark }" x-data="data()" lang="en">
  <head>
    
  <script src="/cdn-cgi/apps/head/lmplkzhV3pH6fdNUw6kpmpBQ68Q.js"></script><link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="true"><link rel="preload" as="style" onload="this.rel='stylesheet'" href="https://fonts.googleapis.com/css2?family=Inter&#38;display=swap">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/solid.js" integrity="sha384-/BxOvRagtVDn9dJ+JGCtcofNXgQO/CCCVKdMfL115s3gOgQxWaX/tSq5V8dRgsbc" crossorigin="anonymous"></script>
  <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/fontawesome.js" integrity="sha384-dPBGbj4Uoy1OOpM4+aRGfAOc0W37JkROT+3uynUgTHZCHZNMHfGXsmmvYTffZjYO" crossorigin="anonymous"></script>
  <script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>
  <script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/charts.css/dist/charts.min.css">
<script defer src="https://unpkg.com/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cari Konsultan</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="./assets/css/tailwind.output.css" />
    <script
      src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"
      defer
    ></script>
    <script src="../assets/js/init-alpine.js"></script>
  </head>
  <body>
    <div
      class="flex h-screen bg-gray-50 dark:bg-gray-900"
      :class="{ 'overflow-hidden': isSideMenuOpen}"
    >
      <!-- Desktop sidebar -->
      <aside
        class="z-20 hidden w-64 overflow-y-auto bg-white dark:bg-gray-800 md:block flex-shrink-0"
      >
        <div class="py-4 text-gray-500 dark:text-gray-400">
          <a
            class="ml-6 text-lg font-bold text-gray-800 dark:text-gray-200"
            href="#"
          >
            RizkiKU
          </a>
          <ul class="mt-6">
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="home.php"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"
                  ></path>
                </svg>
                <span class="ml-4">Beranda</span>
              </a>
            </li>
          </ul>
          <ul>
            <li class="relative px-6 py-3">
              <span
                class="absolute inset-y-0 left-0 w-1 bg-purple-600 rounded-tr-lg rounded-br-lg"
                aria-hidden="true"
              ></span>
              <a
                class="inline-flex items-center w-full text-sm font-semibold text-gray-800 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200 dark:text-gray-100"
                href="home.php"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"
                  ></path>
                </svg>
                <span class="ml-4">Cari Konsultan</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="agenda.php"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10"
                  ></path>
                </svg>
                <span class="ml-4">Agenda</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="artikel.php"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z"
                  ></path>
                  <path d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z"></path>
                </svg>
                <span class="ml-4">Artikel</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="videos.php"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M15 15l-2 5L9 9l11 4-5 2zm0 0l5 5M7.188 2.239l.777 2.897M5.136 7.965l-2.898-.777M13.95 4.05l-2.122 2.122m-5.657 5.656l-2.12 2.122"
                  ></path>
                </svg>
                <span class="ml-4">Videos</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="riwayatpembayaran.php"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z"
                  ></path>
                </svg>
                <span class="ml-4">Riwayat Pembayaran</span>
              </a>
            </li>
           
          </ul>
          <!-- <div class="px-6 my-6">
            <button
              class="flex items-center justify-between w-full px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"
            >
              Create account
              <span class="ml-2" aria-hidden="true">+</span>
            </button>
          </div> -->
        </div>
      </aside>
      <!-- Mobile sidebar -->
      <!-- Backdrop -->
      <div
        x-show="isSideMenuOpen"
        x-transition:enter="transition ease-in-out duration-150"
        x-transition:enter-start="opacity-0"
        x-transition:enter-end="opacity-100"
        x-transition:leave="transition ease-in-out duration-150"
        x-transition:leave-start="opacity-100"
        x-transition:leave-end="opacity-0"
        class="fixed inset-0 z-10 flex items-end bg-black bg-opacity-50 sm:items-center sm:justify-center"
      ></div>
      <aside
        class="fixed inset-y-0 z-20 flex-shrink-0 w-64 mt-16 overflow-y-auto bg-white dark:bg-gray-800 md:hidden"
        x-show="isSideMenuOpen"
        x-transition:enter="transition ease-in-out duration-150"
        x-transition:enter-start="opacity-0 transform -translate-x-20"
        x-transition:enter-end="opacity-100"
        x-transition:leave="transition ease-in-out duration-150"
        x-transition:leave-start="opacity-100"
        x-transition:leave-end="opacity-0 transform -translate-x-20"
        @click.away="closeSideMenu"
        @keydown.escape="closeSideMenu"
      >
        <div class="py-4 text-gray-500 dark:text-gray-400">
          <a
            class="ml-6 text-lg font-bold text-gray-800 dark:text-gray-200"
            href="#"
          >
            RizkiKu
          </a>
          <ul class="mt-6">
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="home.php"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6"
                  ></path>
                </svg>
                <span class="ml-4">Beranda</span>
              </a>
            </li>
          </ul>
          <ul>
            <li class="relative px-6 py-3">
              <span
                class="absolute inset-y-0 left-0 w-1 bg-purple-600 rounded-tr-lg rounded-br-lg"
                aria-hidden="true"
              ></span>
              <a
                class="inline-flex items-center w-full text-sm font-semibold text-gray-800 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200 dark:text-gray-100"
                href="carikonsultan.php"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2m-3 7h3m-3 4h3m-6-4h.01M9 16h.01"
                  ></path>
                </svg>
                <span class="ml-4">Cari Konsultan</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="agenda.php"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M19 11H5m14 0a2 2 0 012 2v6a2 2 0 01-2 2H5a2 2 0 01-2-2v-6a2 2 0 012-2m14 0V9a2 2 0 00-2-2M5 11V9a2 2 0 012-2m0 0V5a2 2 0 012-2h6a2 2 0 012 2v2M7 7h10"
                  ></path>
                </svg>
                <span class="ml-4">Agenda</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="artikel.php"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M11 3.055A9.001 9.001 0 1020.945 13H11V3.055z"
                  ></path>
                  <path d="M20.488 9H15V3.512A9.025 9.025 0 0120.488 9z"></path>
                </svg>
                <span class="ml-4">Artikel</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="videos.php"
              >
                <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path
                    d="M15 15l-2 5L9 9l11 4-5 2zm0 0l5 5M7.188 2.239l.777 2.897M5.136 7.965l-2.898-.777M13.95 4.05l-2.122 2.122m-5.657 5.656l-2.12 2.122"
                  ></path>
                </svg>
                <span class="ml-4">Videos</span>
              </a>
            </li>
            <li class="relative px-6 py-3">
              <a
                class="inline-flex items-center w-full text-sm font-semibold transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200"
                href="riwayatpembayaran.php"
              >
              <svg
                  class="w-5 h-5"
                  aria-hidden="true"
                  fill="none"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                  stroke-width="2"
                  viewBox="0 0 24 24"
                  stroke="currentColor"
                >
                  <path d="M4 6h16M4 10h16M4 14h16M4 18h16"></path>
                </svg>
                <span class="ml-4">Riwayat Pembayaran</span>
              </a>
            </li>
            </li>
            
            
          
          </ul>
          <!-- <div class="px-6 my-6">
            <button
              class="flex items-center justify-between px-4 py-2 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-lg active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple"
            >
              Create account
              <span class="ml-2" aria-hidden="true">+</span>
            </button>
          </div> -->
        </div>
      </aside>
      <div class="flex flex-col flex-1">
        <header class="z-10 py-4 bg-white shadow-md dark:bg-gray-800">
          <div
            class="container flex items-center justify-between h-full px-6 mx-auto text-purple-600 dark:text-purple-300"
          >
            <!-- Mobile hamburger -->
            <button
              class="p-1 -ml-1 mr-5 rounded-md md:hidden focus:outline-none focus:shadow-outline-purple"
              @click="toggleSideMenu"
              aria-label="Menu"
            >
              <svg
                class="w-6 h-6"
                aria-hidden="true"
                fill="currentColor"
                viewBox="0 0 20 20"
              >
                <path
                  fill-rule="evenodd"
                  d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
                  clip-rule="evenodd"
                ></path>
              </svg>
            </button>
            <!-- Search input -->
            <div class="flex justify-center flex-1 lg:mr-32">
              <div
                class="relative w-full max-w-xl mr-6 focus-within:text-purple-500"
              >
                <div class="absolute inset-y-0 flex items-center pl-2">
                  <svg
                    class="w-4 h-4"
                    aria-hidden="true"
                    fill="currentColor"
                    viewBox="0 0 20 20"
                  >
                    <path
                      fill-rule="evenodd"
                      d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                      clip-rule="evenodd"
                    ></path>
                  </svg>
                </div>
                <input
                  class="w-full pl-8 pr-2 text-sm text-gray-700 placeholder-gray-600 bg-gray-100 border-0 rounded-md dark:placeholder-gray-500 dark:focus:shadow-outline-gray dark:focus:placeholder-gray-600 dark:bg-gray-700 dark:text-gray-200 focus:placeholder-gray-500 focus:bg-white focus:border-purple-300 focus:outline-none focus:shadow-outline-purple form-input"
                  type="text"
                  placeholder="Cari konsultan"
                  aria-label="Search"
                />
              </div>
            </div>
            <ul class="flex items-center flex-shrink-0 space-x-6">
              <!-- Theme toggler -->
              <li class="flex">
                <button
                  class="rounded-md focus:outline-none focus:shadow-outline-purple"
                  @click="toggleTheme"
                  aria-label="Toggle color mode"
                >
                </button>
              </li>
              <!-- Notifications menu -->
              <li class="relative">
                <button
                  class="relative align-middle rounded-md focus:outline-none focus:shadow-outline-purple"
                  @click="toggleNotificationsMenu"
                  @keydown.escape="closeNotificationsMenu"
                  aria-label="Notifications"
                  aria-haspopup="true"
                >
                  <svg
                    class="w-5 h-5"
                    aria-hidden="true"
                    fill="currentColor"
                    viewBox="0 0 20 20"
                  >
                    <path
                      d="M10 2a6 6 0 00-6 6v3.586l-.707.707A1 1 0 004 14h12a1 1 0 00.707-1.707L16 11.586V8a6 6 0 00-6-6zM10 18a3 3 0 01-3-3h6a3 3 0 01-3 3z"
                    ></path>
                  </svg>
                  <!-- Notification badge -->
                  <span
                    aria-hidden="true"
                    class="absolute top-0 right-0 inline-block w-3 h-3 transform translate-x-1 -translate-y-1 bg-red-600 border-2 border-white rounded-full dark:border-gray-800"
                  ></span>
                </button>
                <template x-if="isNotificationsMenuOpen">
                  <ul
                    x-transition:leave="transition ease-in duration-150"
                    x-transition:leave-start="opacity-100"
                    x-transition:leave-end="opacity-0"
                    @click.away="closeNotificationsMenu"
                    @keydown.escape="closeNotificationsMenu"
                    class="absolute right-0 w-56 p-2 mt-2 space-y-2 text-gray-600 bg-white border border-gray-100 rounded-md shadow-md dark:text-gray-300 dark:border-gray-700 dark:bg-gray-700"
                    aria-label="submenu"
                  >
                    <li class="flex">
                      <a
                        class="inline-flex items-center justify-between w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                        href="#"
                      >
                        <span>Messages</span>
                        <span
                          class="inline-flex items-center justify-center px-2 py-1 text-xs font-bold leading-none text-red-600 bg-red-100 rounded-full dark:text-red-100 dark:bg-red-600"
                        >
                          1
                        </span>
                      </a>
                    </li>
                    <!-- <li class="flex">
                      <a
                        class="inline-flex items-center justify-between w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                        href="#"
                      >
                        <span>Sales</span>
                        <span
                          class="inline-flex items-center justify-center px-2 py-1 text-xs font-bold leading-none text-red-600 bg-red-100 rounded-full dark:text-red-100 dark:bg-red-600"
                        >
                          2
                        </span>
                      </a>
                    </li>
                    <li class="flex">
                      <a
                        class="inline-flex items-center justify-between w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                        href="#"
                      >
                        <span>Alerts</span>
                      </a>
                    </li> -->
                  </ul>
                </template>
              </li>
              <!-- Profile menu -->
              <li class="relative">
                <button
                  class="align-middle rounded-full focus:shadow-outline-purple focus:outline-none"
                  @click="toggleProfileMenu"
                  @keydown.escape="closeProfileMenu"
                  aria-label="Account"
                  aria-haspopup="true"
                >
                <img
                    class="object-cover w-8 h-8 rounded-full"
                    src="../assets/img/profil/<?=  $poto_profil_umkm; ?>"
                    alt=""
                    aria-hidden="true"
                  />
                </button>
                <template x-if="isProfileMenuOpen">
                  <ul
                    x-transition:leave="transition ease-in duration-150"
                    x-transition:leave-start="opacity-100"
                    x-transition:leave-end="opacity-0"
                    @click.away="closeProfileMenu"
                    @keydown.escape="closeProfileMenu"
                    class="absolute right-0 w-56 p-2 mt-2 space-y-2 text-gray-600 bg-white border border-gray-100 rounded-md shadow-md dark:border-gray-700 dark:text-gray-300 dark:bg-gray-700"
                    aria-label="submenu"
                  >
                    <li class="flex">
                      <a
                        class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                        href="#"
                      >
                        <svg
                          class="w-4 h-4 mr-3"
                          aria-hidden="true"
                          fill="none"
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="2"
                          viewBox="0 0 24 24"
                          stroke="currentColor"
                        >
                          <path
                            d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"
                          ></path>
                        </svg>
                        <span>Profile</span>
                      </a>
                    </li>
                    <li class="flex">
                      <a
                        class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                        href="#"
                      >
                        <svg
                          class="w-4 h-4 mr-3"
                          aria-hidden="true"
                          fill="none"
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="2"
                          viewBox="0 0 24 24"
                          stroke="currentColor"
                        >
                          <path
                            d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z"
                          ></path>
                          <path d="M15 12a3 3 0 11-6 0 3 3 0 016 0z"></path>
                        </svg>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li class="flex">
                      <a
                        class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200"
                        href="../masuk/umkm/logout.php"
                      >
                        <svg
                          class="w-4 h-4 mr-3"
                          aria-hidden="true"
                          fill="none"
                          stroke-linecap="round"
                          stroke-linejoin="round"
                          stroke-width="2"
                          viewBox="0 0 24 24"
                          `stroke="currentColor"
                        >
                          <path
                            d="M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1"
                          ></path>
                        </svg>
                        <span>Log out</span>
                      </a>
                    </li>
                  </ul>
                </template>
              </li>
            </ul>
          </div>
        </header>
        <main class="h-full overflow-y-auto">

        	<div class="container my-8 px-6 mx-auto grid">

        		<h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">
        			Cari Konsultan
        		</h4>

        		<!-- Pencarian -->
        		<form action="" method="post" class="flex max-w-md bg-gray-100 rounded-lg overflow-hidden">
        			<div class="ml-2">
        				<input autofocus autocomplete="off" type="text" name="keyword" class="py-2 px-4 w-full text-gray-700 focus:outline-none" placeholder="Nama..." />
        			</div>
        			<div class="ml-2">
        				<select name="kategori" class="py-2 px-4 text-gray-700 focus:outline-none">
        					<option value="">Semua Spesialisasi</option>
        					<?php
             // Query untuk mengambil data spesialisasi dari tabel
             $query = "SELECT * FROM spesialisasi";
             $result = $conn->query($query);

             // Loop untuk menampilkan setiap kategori sebagai opsi dropdown
             while ($row = $result->fetch_assoc()) {

                 $idSpesialisasi = $row["ID_Spesialisasi"];
                 $namaSpesialisasi = $row["Nama_Spesialisasi"];
                 ?>
        					<option value="<?php echo $namaSpesialisasi; ?>"><?php echo $namaSpesialisasi; ?></option>
        					<?php
             }
             ?>
        				</select>

        			</div>
        			<div class="ml-2">
        				<input autofocus autocomplete="off" type="text" name="kota" class="py-2 px-4 w-full text-gray-700 focus:outline-none" placeholder="Kota..." />
        			</div>
        			<button type="submit" name="cari" class="flex items-center justify-center px-4 bg-gray-200">
        				<svg class="h-5 w-5 text-gray-600" fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24" stroke="currentColor">
        					<circle cx="11" cy="11" r="8" />
        					<path d="M21 21l-4.35-4.35" />
        				</svg>
        			</button>
        		</form>
        		<!-- Batas Pencarian -->

        		<!-- coba -->
        		<?php
          // Kode untuk mengambil data konsultan dari database
          // Kode untuk mengambil data artikel dari database
          if (isset($_POST["cari"])) {
              $cari = $_POST["keyword"];
              $cariKategori = $_POST["kategori"];
              $cariKota = $_POST["kota"];
              $_SESSION["keyword"] = $cari;
              $_SESSION["kategori"] = $cariKategori;
              $_SESSION["kota"] = $cariKota;
          } else {
              $cari = "";
              $cariKategori = "";
              $cariKota = "";
          }

          // Membuat query SQL untuk mengambil data konsultan
          $sql = "SELECT konsultan.*, spesialisasi.Nama_Spesialisasi
          FROM konsultan
          JOIN spesialisasi ON konsultan.ID_Spesialisasi = spesialisasi.ID_Spesialisasi
          WHERE konsultan.Nama LIKE '%$cari%'
          AND konsultan.status_akun_konsultan = 'Sudah Diverifikasi'";
          
          if (!empty($cariKategori)) {
          $sql .= " AND konsultan.ID_Spesialisasi = '$cariKategori'";
          }
          
          if (!empty($cariKota)) {
          $sql .= " AND konsultan.kota_konsultan = '$cariKota'";
          }
          
          $result = $conn->query($sql);

          //Konfigurasi Pagination
          $jumlahData = 12;
          $totalData = mysqli_num_rows($result);
          $jumlahPagination = ceil($totalData / $jumlahData);

          if (isset($_GET["halaman"])) {
              $halamanAktif = $_GET["halaman"];
          } else {
              $halamanAktif = 1;
          }

          $dataAwal = ($halamanAktif - 1) * $jumlahData;

          $sqlPerHalaman = "SELECT konsultan.*, spesialisasi.Nama_Spesialisasi 
          FROM konsultan 
          JOIN spesialisasi ON konsultan.ID_Spesialisasi = spesialisasi.ID_Spesialisasi 
          WHERE konsultan.Nama LIKE '%$cari%'
          AND konsultan.status_akun_konsultan = 'Sudah Diverifikasi'";
          

          if (!empty($cariKategori)) {
              $sqlPerHalaman .= " AND spesialisasi.Nama_Spesialisasi = '$cariKategori'";
          }

          if (!empty($cariKota)) {
              $sqlPerHalaman .= " AND konsultan.kota_konsultan = '$cariKota'";
          }

          $jumlahLink = 4;
          if ($halamanAktif > $jumlahLink) {
              $start_number = $halamanAktif - $jumlahLink;
          } else {
              $start_number = 1;
          }

          if ($halamanAktif < $jumlahPagination - $jumlahLink) {
              $end_number = $halamanAktif + $jumlahLink;
          } else {
              $end_number = $jumlahPagination;
          }

          $sqlPerHalaman .= " LIMIT $dataAwal, $jumlahData";

          $ambildata_perhalaman = $conn->query($sqlPerHalaman);

          echo '<div class="grid md:grid-cols-3 ltablet:grid-cols-2 lg:grid-cols-6 gap-x-6 ptablet:gap-x-4 gap-y-16 pt-10">';
          while ($row = $ambildata_perhalaman->fetch_assoc()) {

              $idKonsultan = $row["ID_Konsultan"];
              $namaKonsultan = $row["Nama"];
              $kotaKonsultan = $row["kota_konsultan"];
              $deskripsiKonsultan = $row["Deskripsi"];
              $idSpesialisasi = $row["ID_Spesialisasi"];
              $potoKonsultan = $row["konsultan_poto"];
              // $thumbnail = $row["thumbnail"];
              $statusKonsultan = $row["Status"];
              $ratingKonsultan = $row["Rating"];
              $spesialisasiKonsultan = $row["Nama_Spesialisasi"];

              // Menggunakan substr() untuk memotong teks isi artikel
              $potonganDeskripsi = substr($deskripsiKonsultan, 0, 100); // Ambil hanya 100 karakter pertama

              // Jika teks isi artikel lebih panjang dari 100 karakter, tambahkan tanda '...' di akhir
              if (strlen($deskripsiKonsultan) > 100) {
                  $potonganDeskripsi .= "...";
              }

              $potonganNama = substr($namaKonsultan, 0, 20); // Ambil hanya 100 karakter pertama

              // Jika teks isi artikel lebih panjang dari 100 karakter, tambahkan tanda '...' di akhir
              if (strlen($namaKonsultan) > 15) {
                  $potonganNama .= "...";
              }

              $statusColor = '';
if ($statusKonsultan == 'Available') {
    $statusColor = 'text-green-700 bg-green-100 dark:bg-green-700 dark:text-green-100';
} elseif ($statusKonsultan == 'Not Available') {
    $statusColor = 'text-red-700 bg-red-100 dark:bg-red-700 dark:text-red-100';
}
              ?>
        		<!-- ini card -->
        		<div class="relative rounded-lg border border-muted-200 dark:border-muted-800 bg-white dark:bg-muted-900 transition-all duration-300" :class="'p-4'">
        			<div class="relative w-50 h-40 rounded-lg bg-muted-200 dark:bg-muted-800">
        				<div class="transition-transform duration-500 transform h-40 ease-in-out hover:scale-110 w-full">
        					<img class="object-cover h-full w-full rounded" src="../assets/img/profil/<?= $potoKonsultan ?>" alt="">
        				</div>
        			</div>
        			<div class="font-sans mt-3">
        				<h4 class="font-semibold text-muted-800 dark:text-muted-100">
        					<?= $potonganNama ?>
        				</h4>
        				<p class="text-sm text-muted-400"><?= $spesialisasiKonsultan ?></p>

        				<p class="text-sm text-muted-400"><span><i style="display: inline;" class="iconify w-4 h-4" data-icon="typcn:location-outline"> </i>&NonBreakingSpace;<?= $kotaKonsultan ?></span></p>
                <p class="text-sm mt-4 text-muted-400">
    <span class="<?= $statusColor ?> rounded-lg p-1">
        <?= $statusKonsultan ?>
    </span>
</p>
        			</div>
        			<div class="mt-2">
        				<p class="text-sm ptablet:text-xs text-muted-500 dark:text-muted-400">
        					<?= $potonganDeskripsi ?>
        				</p>
        			</div>
        			<div class="flex items-center justify-between font-sans mt-3">
        				<div class="flex items-center gap-2">
        					<a href="detail.php?id=<?= $idKonsultan ?>"> <button tooltip="Book appointment" class="text-blue-700 bg-blue-100 dark:bg-blue-700 dark:text-blue-100 border rounded-lg border-blue-700  p-1 h-8 w-full rounded-full text-muted-400 hover:text-primary-500 hover:enabled:bg-muted-100 dark:hover:enabled:bg-muted-800 flex items-center justify-center tw-accessiblity transition-colors duration-300">
        							<i class="iconify w-4 h-4" data-icon="ph:eye-duotone"> </i>&NonBreakingSpace; Detail
        						</button></a>
        					<!-- <button tooltip="Send message" class="h-8 w-8 rounded-full text-muted-400 hover:text-primary-500 hover:enabled:bg-muted-100 dark:hover:enabled:bg-muted-800 flex items-center justify-center tw-accessiblity transition-colors duration-300">
            <i class="iconify w-4 h-4" data-icon="ph:chat-circle-duotone"></i>
          </button>
          <button tooltip="View profile" class="h-8 w-8 rounded-full text-muted-400 hover:text-primary-500 hover:enabled:bg-muted-100 dark:hover:enabled:bg-muted-800 flex items-center justify-center tw-accessiblity transition-colors duration-300">
            <i class="iconify w-4 h-4" data-icon="ph:user-duotone"></i> -->
        					</button>
        				</div>
        				<div class="flex items-center justify-end gap-2">
        					<i class="iconify w-4 h-4 text-yellow-400" data-icon="uiw:star-on"></i>
        					<span class="font-semibold text-xs text-muted-500 dark:text-muted-400"><?= $ratingKonsultan ?>/5</span>
        				</div>
        			</div>
        		</div>
        		<!-- batas card -->
        		<?php
          }
          ?>
        	</div>

        	<!-- paggination -->
        	<br>
        	<div class="grid px-4 py-3 text-xs font-semibold tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
        		<span class="flex items-center col-span-3">
        			Showing 1 of 100
        		</span>
        		<span class="col-span-2"></span>
        		<!-- Pagination -->
        		<span class="flex col-span-4 mt-2 sm:mt-auto sm:justify-end">
        			<nav aria-label="Table navigation">
        				<ul class="inline-flex items-center">
        					<?php if ($halamanAktif > 1): ?>
        					<li>
        						<button class="px-3 py-1 rounded-md rounded-l-lg focus:outline-none focus:shadow-outline-purple" aria-label="Previous"><a href="?halaman=<?= $halamanAktif -
                  1 ?>">
        								<svg aria-hidden="true" class="w-4 h-4 fill-current" viewBox="0 0 20 20">
        									<path d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z" clip-rule="evenodd" fill-rule="evenodd"></path>
        								</svg>
        							</a>
        						</button>
        					</li>
        					<?php endif; ?>
        					<?php for ($i = $start_number; $i <= $end_number; $i++): ?>
        					<li>
        						<?php if ($i == $halamanAktif): ?>
        						<button class="px-3 py-1 text-white transition-colors duration-150 bg-purple-600 border border-r-0 border-purple-600 rounded-md focus:outline-none focus:shadow-outline-purple">
        							<a href="?halaman=<?= $i ?>"><?= $i ?></a>
        						</button>
        						<?php else: ?>
        						<button class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple">
        							<a href="?halaman=<?= $i ?>"><?= $i ?></a>
        						</button>

        						<?php endif; ?>
        					</li>
        					<li>
        						<?php endfor; ?>
        						<?php if ($halamanAktif < $jumlahPagination): ?>
        					<li>
        						<button class="px-3 py-1 rounded-md rounded-r-lg focus:outline-none focus:shadow-outline-purple" aria-label="Next"><a href="?halaman=<?= $halamanAktif +
                  1 ?>">
        								<svg class="w-4 h-4 fill-current" aria-hidden="true" viewBox="0 0 20 20">
        									<path d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd" fill-rule="evenodd"></path>
        								</svg>
        							</a>
        						</button>
        					</li>
        					<?php endif; ?>
        				</ul>
        			</nav>
        		</span>
        	</div>

        	</div>
        </main>
      </div>
    </div>
  </body>
</html>