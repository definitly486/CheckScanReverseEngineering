.class public final Lio/appmetrica/analytics/push/internal/notification/DefaultPushNotificationFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/settings/PushNotificationFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildNotification(Landroid/content/Context;Lio/appmetrica/analytics/push/model/PushMessage;)Landroid/app/Notification;
    .locals 10

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotification()Lio/appmetrica/analytics/push/model/PushNotification;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/model/PushNotification;->getContentTitle()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotification()Lio/appmetrica/analytics/push/model/PushNotification;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lio/appmetrica/analytics/push/model/PushNotification;->getContentText()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-static {p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_4

    invoke-static {v1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object v4

    sget-object p0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    new-array p1, v2, [Ljava/lang/Object;

    const-string v1, "Push filtered out. PushMessage does not contain content title and content text"

    invoke-virtual {p0, v1, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object v3, Lio/appmetrica/analytics/push/impl/X1;->b:Lio/appmetrica/analytics/push/impl/X1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getPayload()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getTransport()Ljava/lang/String;

    move-result-object v8

    const-string v5, "Push data format is invalid"

    const-string v6, "Not all required fields were set"

    invoke-virtual/range {v3 .. v8}, Lio/appmetrica/analytics/push/impl/X1;->onNotificationIgnored(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    new-instance p0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lio/appmetrica/analytics/push/impl/t0;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/push/impl/t0;-><init>(Landroid/content/Context;)V

    sget-object p1, Lio/appmetrica/analytics/push/impl/q1;->a:Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->getBeforeCustomizer()Lio/appmetrica/analytics/push/notification/NotificationCustomizer;

    move-result-object v1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->getCustomizers()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->getAfterCustomizer()Lio/appmetrica/analytics/push/notification/NotificationCustomizer;

    move-result-object v4

    if-nez v1, :cond_5

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_8

    :cond_5
    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object v5

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lb36;

    const-string v8, "pushId"

    invoke-direct {v7, v8, v6}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x1

    if-eqz v1, :cond_6

    move v1, v6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v8, Lb36;

    const-string v9, "useBeforeCustomizer"

    invoke-direct {v8, v9, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lb36;

    const-string v9, "useCustomizers"

    invoke-direct {v3, v9, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v4, :cond_7

    move v2, v6

    :cond_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lb36;

    const-string v4, "useAfterCustomizer"

    invoke-direct {v2, v4, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v7, v8, v3, v2}, [Lb36;

    move-result-object v1

    invoke-static {v1}, Ln05;->e([Lb36;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "DefaultPushNotificationFactory.buildNotification"

    invoke-virtual {v5, v2, v1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_8
    iget-object v0, v0, Lio/appmetrica/analytics/push/impl/t0;->a:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ln05;->l(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->getCustomizers()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Ln05;->g(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->getBeforeCustomizer()Lio/appmetrica/analytics/push/notification/NotificationCustomizer;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1, p0, p2}, Lio/appmetrica/analytics/push/notification/NotificationCustomizer;->invoke(Landroidx/core/app/NotificationCompat$Builder;Lio/appmetrica/analytics/push/model/PushMessage;)V

    :cond_9
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/push/notification/NotificationCustomizer;

    invoke-interface {v1, p0, p2}, Lio/appmetrica/analytics/push/notification/NotificationCustomizer;->invoke(Landroidx/core/app/NotificationCompat$Builder;Lio/appmetrica/analytics/push/model/PushMessage;)V

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;->getAfterCustomizer()Lio/appmetrica/analytics/push/notification/NotificationCustomizer;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-interface {p1, p0, p2}, Lio/appmetrica/analytics/push/notification/NotificationCustomizer;->invoke(Landroidx/core/app/NotificationCompat$Builder;Lio/appmetrica/analytics/push/model/PushMessage;)V

    :cond_b
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method
