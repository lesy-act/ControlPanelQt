#ifndef APIREST_H
#define APIREST_H
#include<QObject>
#include<QNetworkAccessManager>
#include<QNetworkReply>
#include<QJsonDocument>
#include<QJsonObject>
#include<QJsonArray>
#include <qqml.h>
#include<QString>

class ApiRest:public QObject
{
    Q_OBJECT
    Q_PROPERTY(QJsonObject JsonData READ JsonData WRITE setJsonData NOTIFY dataChanged)
public:
    explicit ApiRest(QObject *parent = nullptr);
    QJsonObject JsonData()const;
    void setJsonData(const QJsonObject &data);
private:
    QNetworkAccessManager m_NetWorkAccessManager;
    QJsonObject m_JsonData;
signals:
    void dataChanged(QJsonObject);
public slots:
    void restApiRequest();
    void onRestApiFinished(QNetworkReply*);
public:
    QString m_tempMax[7];
};

#endif // APIREST_H
