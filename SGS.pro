QT       += core gui sql printsupport charts

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    forgotpassword.cpp \
    register.cpp \
    main.cpp \
    sgsapp.cpp \
    databaseconnection.cpp \
    lecture.cpp \
    users.cpp \
    student.cpp \
    activate_deactivateuser.cpp

HEADERS += \
    forgotpassword.h \
    register.h \
    sgsapp.h \
    databaseconnection.h \
    lecture.h \
    users.h \
    student.h \
    activate_deactivateuser.h

FORMS += \
    forgotpassword.ui \
    register.ui \
    sgsapp.ui \
    activate_deactivateuser.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    images.qrc \
    translation.qrc

DISTFILES +=

TRANSLATIONS += language_es.ts
