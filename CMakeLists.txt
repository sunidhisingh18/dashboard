cmake_minimum_required(VERSION 3.16)

project(pp VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(apppp
    main.cpp
)

qt_add_qml_module(apppp
    URI pp
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES Resources.qrc
        QML_FILES Component/Navbar.qml
        QML_FILES Pages/Profile.qml
        QML_FILES Component/Footer.qml
        QML_FILES Component/Sidebar.qml
        QML_FILES Pages/About.qml
        QML_FILES Pages/Sounds.qml
        QML_FILES Pages/Mytrip.qml
        QML_FILES Pages/Blutooth.qml
        QML_FILES Pages/Display.qml
        QML_FILES Pages/Notification.qml
        QML_FILES Pages/SystemUpdate.qml
        QML_FILES Pages/Keypad.qml
        QML_FILES Pages/Music.qml
        QML_FILES Pages/Callings.qml




)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(apppp PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.apppp
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(apppp
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS apppp
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
