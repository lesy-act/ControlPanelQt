#include"apiRest.h"
#include<QDebug>
ApiRest::ApiRest(QObject *parent):QObject(parent)
{
    QObject::connect(&m_NetWorkAccessManager,SIGNAL(finished(QNetworkReply*)),this,SLOT(onRestApiFinished(QNetworkReply*)));
}

QJsonObject ApiRest::JsonData()const
{
    return m_JsonData;
}
void ApiRest::setJsonData(const QJsonObject &data)
{
    m_JsonData = data;
    emit dataChanged(m_JsonData);
}
void ApiRest::restApiRequest()
{
    QNetworkRequest request;
    QUrl url("http://api.openweathermap.org/data/2.5/forecast?q=Hanoi&appid=8e27d8bfd51d22c89fbd5275734e4bed&units=metric");
    request.setHeader(QNetworkRequest::ContentTypeHeader,"application/json");
    request.setUrl(url);
    m_NetWorkAccessManager.get(request);
}

void ApiRest::onRestApiFinished(QNetworkReply*reply)
{

    QJsonDocument jsdoc = QJsonDocument::fromJson(reply->readAll());
    setJsonData(jsdoc.object());
    QByteArray docByteArr = jsdoc.toJson(QJsonDocument::Compact);
//    qDebug()<<QLatin1String(docByteArr);

}


