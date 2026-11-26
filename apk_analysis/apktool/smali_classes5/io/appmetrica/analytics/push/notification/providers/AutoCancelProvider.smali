.class public Lio/appmetrica/analytics/push/notification/providers/AutoCancelProvider;
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
    .locals 0

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotification()Lio/appmetrica/analytics/push/model/PushNotification;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/model/PushNotification;->getAutoCancel()Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_1
    return-object p0
.end method

.method public bridge synthetic get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/notification/providers/AutoCancelProvider;->get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
