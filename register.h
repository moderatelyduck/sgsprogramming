#ifndef REGISTER_H
#define REGISTER_H

#include <QDialog>
#include "student.h"
#include <QtSql>

namespace Ui {
class Register;
}

class Register : public QDialog
{
    Q_OBJECT

public:
    explicit Register(QWidget *parent = nullptr);
    ~Register();

private slots:
    void on_signUpNextButton_clicked();

    void on_backSignUpButton_clicked();

    void on_cancelSignUpButton_clicked();

    void on_studentRadioButton_clicked();

    void on_lecturerRadioButton_clicked();

    void on_middleNamecheckBox_stateChanged(int arg1);

    void on_signUpButton_clicked();

    void recieveQuestion(QSqlQuery);

    void on_programSequenceTable_registerTableWidget_cellClicked(int row, int column);


    void on_filterSearchButton_clicked();

    void on_createLectureButton_clicked();

private:
    Ui::Register *ui;
    users * user;
    int userRole;
    QSqlQuery * queries;
};

#endif // REGISTER_H
