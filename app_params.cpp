#include "app_params.h"

App_Params::App_Params(QObject *parent)
    : QObject{parent}
    , m_app_Color{"#cd5c5c"}
    , m_mode1{true}
    , m_mode2{false}
    , m_mode3{false}
    , m_mode4{false}
    , m_mode5{false}
    , m_mode6{false}
    , m_mode7{false}
    , m_imgSource{"qrc:/ui/assets/cars/car-9276.png"}
    , m_musicTime{195}
{

}

QString App_Params::app_Color() const
{
    return m_app_Color;
}

void App_Params::setAppColor(const QString &newApp_Color)
{
    if (m_app_Color == newApp_Color)
        return;
    m_app_Color = newApp_Color;
    emit appColorChanged();
}

bool App_Params::mode1() const
{
    return m_mode1;
}

void App_Params::setMode1(bool newMode1)
{
    if (m_mode1 == newMode1)
        return;
    m_mode1 = newMode1;
    emit mode1Changed();
}

bool App_Params::mode2() const
{
    return m_mode2;
}

void App_Params::setMode2(bool newMode2)
{
    if (m_mode2 == newMode2)
        return;
    m_mode2 = newMode2;
    emit mode2Changed();
}

bool App_Params::mode3() const
{
    return m_mode3;
}

void App_Params::setMode3(bool newMode3)
{
    if (m_mode3 == newMode3)
        return;
    m_mode3 = newMode3;
    emit mode3Changed();
}

bool App_Params::mode4() const
{
    return m_mode4;
}

void App_Params::setMode4(bool newMode4)
{
    if (m_mode4 == newMode4)
        return;
    m_mode4 = newMode4;
    emit mode4Changed();
}

bool App_Params::mode5() const
{
    return m_mode5;
}

void App_Params::setMode5(bool newMode5)
{
    if (m_mode5 == newMode5)
        return;
    m_mode5 = newMode5;
    emit mode5Changed();
}

bool App_Params::mode6() const
{
    return m_mode6;
}

void App_Params::setMode6(bool newMode6)
{
    if (m_mode6 == newMode6)
        return;
    m_mode6 = newMode6;
    emit mode6Changed();
}

bool App_Params::mode7() const
{
    return m_mode7;
}

void App_Params::setMode7(bool newMode7)
{
    if (m_mode7 == newMode7)
        return;
    m_mode7 = newMode7;
    emit mode7Changed();
}

QString App_Params::imgSource() const
{
    return m_imgSource;
}

void App_Params::setImgSource(const QString &newImgSource)
{
    if (m_imgSource == newImgSource)
        return;
    m_imgSource = newImgSource;
    emit imgSourceChanged();
}

int App_Params::musicTime() const
{
    return m_musicTime;
}

void App_Params::setMusicTime(int newMusicTime)
{
    if (m_musicTime == newMusicTime)
        return;
    m_musicTime = newMusicTime;
    emit musicTimeChanged();
}
