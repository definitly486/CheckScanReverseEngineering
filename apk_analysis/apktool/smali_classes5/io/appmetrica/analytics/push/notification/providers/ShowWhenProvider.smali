.class public Lio/appmetrica/analytics/push/notification/providers/ShowWhenProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/notification/NotificationValueProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/push/notification/NotificationValueProvider<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Boolean;
    .locals 1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotification()Lio/appmetrica/analytics/push/model/PushNotification;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushNotification;->getShowWhen()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushNotification;->getShowWhen()Ljava/lang/Boolean;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/notification/providers/ShowWhenProvider;->get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
