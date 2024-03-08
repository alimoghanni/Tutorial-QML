#include "Person.h"

Person::Person(QObject *parent) :
    QObject{parent}
{
    m_age = 0;
}

Person::Person(const QString &name, int age, QObject *parent) : QObject{parent}
{
    m_name = name;
    m_age = age;
}

const QString &Person::name() const
{
    return m_name;
}

int Person::age() const
{
    return m_age;
}

void Person::setAge(int newAge)
{
    if (m_age == newAge)
        return;
    m_age = newAge;
    emit AgeChanged();
}

void Person::setName(const QString &newName)
{
    if (m_name == newName)
        return;
    m_name = newName;
    emit NameChanged();
}
