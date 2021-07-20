#ifndef TELESCOPE_H
#define TELESCOPE_H

#include <QObject>

class Telescope : public QObject
{
    Q_OBJECT
    Q_PROPERTY(float speed READ speed WRITE setSpeed NOTIFY speedChanged)

public:
    explicit Telescope(QObject *parent = nullptr);

    Q_INVOKABLE void goUp();
    Q_INVOKABLE void goLeft();
    Q_INVOKABLE void goRight();
    Q_INVOKABLE void goDown();

    float speed() const;
    void setSpeed(float speed);

signals:
    void speedChanged();

private:
    float m_speed = 0.5;

};

#endif // TELESCOPE_H
