#ifndef PERSON_H
#define PERSON_H

#include <QObject>

class Person : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY NameChanged)
    Q_PROPERTY(int age READ age WRITE setAge NOTIFY AgeChanged)
public:
    explicit Person(QObject *parent = nullptr);

    Person(const QString &name, int age, QObject *parent = nullptr);

    const QString &name() const;

    int age() const;
    void setAge(int newAge);

    void setName(const QString &newName);

private:
    QString m_name;
    int m_age;

signals:
    void NameChanged();
    void AgeChanged();

};

#endif // PERSON_H
