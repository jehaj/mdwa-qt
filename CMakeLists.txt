cmake_minimum_required(VERSION 3.16)

project(mdwa-qt VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appmdwa-qt
    main.cpp
)

qt_add_qml_module(appmdwa-qt
    URI mdwa-qt
    VERSION 1.0
    QML_FILES
        Main.qml
)

qt_add_resources(appmdwa-qt imageresources
    PREFIX "/"
    FILES icon.png
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appmdwa-qt PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appmdwa-qt
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appmdwa-qt
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appmdwa-qt
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
