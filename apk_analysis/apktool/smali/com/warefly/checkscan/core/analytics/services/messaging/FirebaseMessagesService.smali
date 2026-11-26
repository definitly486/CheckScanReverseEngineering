.class public final Lcom/warefly/checkscan/core/analytics/services/messaging/FirebaseMessagesService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "SourceFile"


# instance fields
.field public final b:Lib3;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    new-instance v0, Lib3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Lvp5;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvp5;

    invoke-direct {v0, v1}, Ly17;-><init>(Lvp5;)V

    iput-object v0, p0, Lcom/warefly/checkscan/core/analytics/services/messaging/FirebaseMessagesService;->b:Lib3;

    return-void
.end method


# virtual methods
.method public final onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/push/provider/firebase/AppMetricaMessagingService;->isNotificationRelatedToSDK(Lcom/google/firebase/messaging/RemoteMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/push/provider/firebase/AppMetricaMessagingService;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/provider/firebase/AppMetricaMessagingService;-><init>()V

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/push/provider/firebase/AppMetricaMessagingService;->processPush(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/core/analytics/services/messaging/FirebaseMessagesService;->b:Lib3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getMessageId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v2, Lk57$a;

    invoke-direct {v2, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_0
    nop

    instance-of v2, v0, Lk57$a;

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    check-cast v0, Ljava/lang/Integer;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_4

    move-object v2, v1

    goto :goto_6

    :cond_4
    new-instance v2, Ly17$a;

    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v1

    :goto_3
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    move-object v4, v1

    :goto_4
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getNotification()Lcom/google/firebase/messaging/RemoteMessage$Notification;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getImageUrl()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_7
    move-object v5, v1

    :goto_5
    invoke-direct {v2, v0, v3, v4, v5}, Ly17$a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_8

    iget-object p1, v2, Ly17$a;->b:Ljava/lang/String;

    goto :goto_7

    :cond_8
    move-object p1, v1

    :goto_7
    const-string v0, "Received"

    const/4 v3, 0x1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_b

    :cond_9
    if-eqz v2, :cond_a

    iget-object v1, v2, Ly17$a;->c:Ljava/lang/String;

    :cond_a
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_b

    goto :goto_9

    :cond_b
    new-instance p1, Lkd$u$a$b;

    if-eqz v2, :cond_c

    iget-object v1, v2, Ly17$a;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_8

    :cond_c
    move v1, v3

    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lb36;

    invoke-direct {v5, v0, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v1, v5}, Lkd$u$a;-><init>(ILb36;)V

    invoke-virtual {p1}, Lkd;->a()V

    goto :goto_b

    :cond_d
    :goto_9
    new-instance p1, Lae;

    if-eqz v2, :cond_e

    iget-object v1, v2, Ly17$a;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_a

    :cond_e
    move v1, v3

    :goto_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lb36;

    invoke-direct {v5, v0, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p1, v1, v5}, Lkd$u$a;-><init>(ILb36;)V

    invoke-virtual {p1}, Lkd;->a()V

    :goto_b
    if-eqz v2, :cond_15

    iget-object p1, v2, Ly17$a;->c:Ljava/lang/String;

    iget-object v0, v2, Ly17$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    goto :goto_c

    :cond_10
    const-string v1, "default"

    goto :goto_d

    :cond_11
    :goto_c
    const-string v1, "silentPush"

    :goto_d
    iget-object v4, p0, Ly17;->a:Lvp5;

    iget-object p0, v2, Ly17$a;->a:Ljava/lang/Integer;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_12
    move v5, v3

    if-nez v0, :cond_13

    const-string v0, "\u0427\u0435\u043a\u0421\u043a\u0430\u043d"

    :cond_13
    move-object v6, v0

    if-nez p1, :cond_14

    const-string p1, "\u2764\ufe0f"

    :cond_14
    move-object v7, p1

    iget-object p0, v2, Ly17$a;->d:Ljava/lang/String;

    const-string p1, "deeplink"

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x0

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v10}, Lvp5;->a(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz p0, :cond_15

    iget-object p1, v3, Lvp5;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/bumptech/glide/a;->b(Landroid/content/Context;)Lq37;

    move-result-object v0

    invoke-virtual {v0, p1}, Lq37;->c(Landroid/content/Context;)Lp37;

    move-result-object p1

    invoke-virtual {p1}, Lp37;->b()Lh37;

    move-result-object p1

    invoke-virtual {p1, p0}, Lh37;->N(Ljava/lang/Object;)Lh37;

    move-result-object p0

    move-object v7, v6

    move-object v6, v5

    move v5, v4

    move-object v4, v3

    new-instance v3, Lup5;

    move-object v10, v1

    invoke-direct/range {v3 .. v10}, Lup5;-><init>(Lvp5;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p0}, Lh37;->K(Lwk8;Lee0;)V

    :cond_15
    return-void
.end method

.method public final onNewToken(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/core/analytics/services/messaging/FirebaseMessagesService;->b:Lib3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
