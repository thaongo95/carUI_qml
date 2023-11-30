#ifndef VIRTUAL_PARAMS_H
#define VIRTUAL_PARAMS_H

#include <QObject>

class Virtual_Params : public QObject   // this class include params that provide by sensor or hardware
{
    Q_OBJECT
    Q_PROPERTY(QString weatherValue READ weatherValue WRITE setWeatherValue NOTIFY weatherValueChanged)
    Q_PROPERTY(qreal tempertureValue READ tempertureValue WRITE setTempertureValue NOTIFY tempertureValueChanged)
public:
    explicit Virtual_Params(QObject *parent = nullptr);

    QString weatherValue() const;


    qreal tempertureValue() const;


signals:

    void weatherValueChanged();
    void tempertureValueChanged();

public slots:
    void setWeatherValue(const QString &newWeatherValue);
    void setTempertureValue(qreal newTempertureValue);
private:
    QString m_weatherValue;
    qreal m_tempertureValue;
};

#endif // VIRTUAL_PARAMS_H
