#include "telescope.h"
#include <QDebug>

Telescope::Telescope(QObject *parent) : QObject(parent)
{

}

void Telescope::goUp()
{
    qDebug() << "go up";
}

void Telescope::goLeft()
{
    qDebug() << "go left";
}

void Telescope::goRight()
{
    qDebug() << "go right";
}

void Telescope::goDown()
{
    qDebug() << "go down";
}

float Telescope::speed() const
{
    return m_speed;
}

void Telescope::setSpeed(float speed)
{
    qDebug() << "set speed" << speed;

    if (!qFuzzyCompare(speed, m_speed)) {
        m_speed = speed;
        emit speedChanged();
    }
}
