.class public final Lio/appmetrica/analytics/push/impl/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/d2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lio/appmetrica/analytics/push/model/PushMessage;)V
    .locals 12

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/r;->f()Lio/appmetrica/analytics/push/impl/W1;

    move-result-object p0

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getPushIdToRemove()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/W1;->c()Ljava/util/LinkedList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appmetrica/analytics/push/impl/V1;

    iget-object v3, v2, Lio/appmetrica/analytics/push/impl/V1;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    const-string p0, "notification"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_5

    const/16 v0, 0x17

    invoke-static {v0}, Lio/appmetrica/analytics/push/impl/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Lio/appmetrica/analytics/push/impl/V1;->c:Ljava/lang/String;

    iget-object v1, v2, Lio/appmetrica/analytics/push/impl/V1;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/appmetrica/analytics/push/impl/o2;->a(Landroid/app/NotificationManager;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v3, Lio/appmetrica/analytics/push/impl/X1;->b:Lio/appmetrica/analytics/push/impl/X1;

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getPayload()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getTransport()Ljava/lang/String;

    move-result-object v8

    const-string v5, "Notification not found"

    const-string v6, "Removed by user"

    invoke-virtual/range {v3 .. v8}, Lio/appmetrica/analytics/push/impl/X1;->onRemovingSilentPushProcessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, v2, Lio/appmetrica/analytics/push/impl/V1;->c:Ljava/lang/String;

    iget-object v1, v2, Lio/appmetrica/analytics/push/impl/V1;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :goto_1
    sget-object v3, Lio/appmetrica/analytics/push/impl/X1;->b:Lio/appmetrica/analytics/push/impl/X1;

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getPayload()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getTransport()Ljava/lang/String;

    move-result-object v8

    const-string v5, "Ok"

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lio/appmetrica/analytics/push/impl/X1;->onRemovingSilentPushProcessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/r;->f()Lio/appmetrica/analytics/push/impl/W1;

    move-result-object p0

    iget-object p1, v2, Lio/appmetrica/analytics/push/impl/V1;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/impl/W1;->b(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/W1;->b()Ljava/util/LinkedList;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object v0, Lio/appmetrica/analytics/push/impl/X1;->b:Lio/appmetrica/analytics/push/impl/X1;

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getPayload()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getTransport()Ljava/lang/String;

    move-result-object v5

    const-string v2, "Notification not found"

    const-string v3, "Notification was replaced"

    invoke-virtual/range {v0 .. v5}, Lio/appmetrica/analytics/push/impl/X1;->onRemovingSilentPushProcessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    sget-object v6, Lio/appmetrica/analytics/push/impl/X1;->b:Lio/appmetrica/analytics/push/impl/X1;

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getPayload()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getTransport()Ljava/lang/String;

    move-result-object v11

    const-string v8, "Notification not found"

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Lio/appmetrica/analytics/push/impl/X1;->onRemovingSilentPushProcessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
