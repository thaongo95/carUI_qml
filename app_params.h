#ifndef APP_PARAMS_H
#define APP_PARAMS_H

#include <QObject>

class App_Params : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString app_Color READ app_Color WRITE setAppColor NOTIFY appColorChanged)
    Q_PROPERTY(bool mode1 READ mode1 WRITE setMode1 NOTIFY mode1Changed)
    Q_PROPERTY(bool mode2 READ mode2 WRITE setMode2 NOTIFY mode2Changed)
    Q_PROPERTY(bool mode3 READ mode3 WRITE setMode3 NOTIFY mode3Changed)
    Q_PROPERTY(bool mode4 READ mode4 WRITE setMode4 NOTIFY mode4Changed)
    Q_PROPERTY(bool mode5 READ mode5 WRITE setMode5 NOTIFY mode5Changed)
    Q_PROPERTY(bool mode6 READ mode6 WRITE setMode6 NOTIFY mode6Changed)
    Q_PROPERTY(bool mode7 READ mode7 WRITE setMode7 NOTIFY mode7Changed)
    Q_PROPERTY(QString imgSource READ imgSource WRITE setImgSource NOTIFY imgSourceChanged)
    Q_PROPERTY(int musicTime READ musicTime WRITE setMusicTime NOTIFY musicTimeChanged)
public:
    explicit App_Params(QObject *parent = nullptr);

    QString app_Color() const;
    bool mode1() const;
    bool mode2() const;
    bool mode3() const;
    bool mode4() const;
    bool mode5() const;
    bool mode6() const;
    bool mode7() const;


    QString imgSource() const;


    int musicTime() const;


signals:
    void appColorChanged();
    void mode1Changed();
    void mode2Changed();
    void mode3Changed();
    void mode4Changed();
    void mode5Changed();
    void mode6Changed();
    void mode7Changed();

    void imgSourceChanged();

    void musicTimeChanged();

public slots:
    void setAppColor(const QString &newApp_Color);
    void setMode1(bool newMode1);
    void setMode2(bool newMode2);
    void setMode3(bool newMode3);
    void setMode4(bool newMode4);
    void setMode5(bool newMode5);
    void setMode6(bool newMode6);
    void setMode7(bool newMode7);
    void setImgSource(const QString &newImgSource);
    void setMusicTime(int newMusicTime);
private:
    QString m_app_Color;
    bool m_mode1;
    bool m_mode2;
    bool m_mode3;
    bool m_mode4;
    bool m_mode5;
    bool m_mode6;
    bool m_mode7;
    QString m_imgSource;
    int m_musicTime;
};

#endif // APP_PARAMS_H
