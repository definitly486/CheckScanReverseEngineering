.class public Lio/appmetrica/analytics/push/notification/providers/TimeoutProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/notification/NotificationValueProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/push/notification/NotificationValueProvider<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/notification/providers/TimeoutProvider;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Long;
    .locals 9

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotification()Lio/appmetrica/analytics/push/model/PushNotification;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/appmetrica/analytics/push/model/PushNotification;->getNotificationTtl()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Lio/appmetrica/analytics/push/model/PushNotification;->getTimeToHideMillis()Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :cond_2
    :goto_1
    const/16 v0, 0x1a

    invoke-static {v0}, Lio/appmetrica/analytics/push/impl/h;->a(I)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    iget-object v0, p0, Lio/appmetrica/analytics/push/notification/providers/TimeoutProvider;->a:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotification()Lio/appmetrica/analytics/push/model/PushNotification;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v3, v1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotification()Lio/appmetrica/analytics/push/model/PushNotification;

    move-result-object v3

    invoke-virtual {v3}, Lio/appmetrica/analytics/push/model/PushNotification;->getNotificationId()Ljava/lang/Integer;

    move-result-object v3

    :goto_2
    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotification()Lio/appmetrica/analytics/push/model/PushNotification;

    move-result-object v4

    if-nez v4, :cond_5

    move-object v4, v1

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotification()Lio/appmetrica/analytics/push/model/PushNotification;

    move-result-object v4

    invoke-virtual {v4}, Lio/appmetrica/analytics/push/model/PushNotification;->getNotificationTag()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getPayload()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lio/appmetrica/analytics/push/notification/providers/TimeoutProvider;->a:Landroid/content/Context;

    const-class v8, Lio/appmetrica/analytics/push/internal/receiver/TtlBroadcastReceiver;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "io.appmetrica.analytics.push.action.EXPIRED_BY_TTL_ACTION"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "io.appmetrica.analytics.push.extra.PUSH_ID"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v3, :cond_6

    move v3, v7

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_4
    const-string v8, "io.appmetrica.analytics.push.extra.NOTIFICATION_ID"

    invoke-virtual {v6, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const-string v6, "io.appmetrica.analytics.push.extra.NOTIFICATION_TAG"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "io.appmetrica.analytics.push.extra.PAYLOAD"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getTransport()Ljava/lang/String;

    move-result-object p1

    const-string v4, "io.appmetrica.analytics.push.extra.TRANSPORT"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v3, p0, Lio/appmetrica/analytics/push/notification/providers/TimeoutProvider;->a:Landroid/content/Context;

    invoke-static {v3}, Lio/appmetrica/analytics/push/impl/g2;->a(Landroid/content/Context;)I

    move-result v3

    iget-object p0, p0, Lio/appmetrica/analytics/push/notification/providers/TimeoutProvider;->a:Landroid/content/Context;

    invoke-static {v7}, Lio/appmetrica/analytics/push/impl/E1;->a(Z)I

    move-result v4

    invoke-static {p0, v3, p1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v3

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v5, v6, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_7
    :goto_5
    return-object v1

    :cond_8
    return-object v2
.end method

.method public bridge synthetic get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/notification/providers/TimeoutProvider;->get(Lio/appmetrica/analytics/push/model/PushMessage;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
