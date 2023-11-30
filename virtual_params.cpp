#include "virtual_params.h"

Virtual_Params::Virtual_Params(QObject *parent)
    : QObject{parent}
    , m_weatherValue{"sun"}
    , m_tempertureValue{30}
{

}

QString Virtual_Params::weatherValue() const
{
    return m_weatherValue;
}

void Virtual_Params::setWeatherValue(const QString &newWeatherValue)
{
    if (m_weatherValue == newWeatherValue)
        return;
    m_weatherValue = newWeatherValue;
    emit weatherValueChanged();
}

qreal Virtual_Params::tempertureValue() const
{
    return m_tempertureValue;
}

void Virtual_Params::setTempertureValue(qreal newTempertureValue)
{
    if (qFuzzyCompare(m_tempertureValue, newTempertureValue))
        return;
    m_tempertureValue = newTempertureValue;
    emit tempertureValueChanged();
}
