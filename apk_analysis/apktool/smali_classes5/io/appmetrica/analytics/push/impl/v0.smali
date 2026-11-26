.class public final Lio/appmetrica/analytics/push/impl/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lio/appmetrica/analytics/push/model/PushMessage;)V
    .locals 7

    sget-object v0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Process push with notificationId = %s"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "Process push"

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "notification_Id"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object v1

    iget-object v1, v1, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lio/appmetrica/analytics/push/impl/v;->a()Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;->trackingReceiveAction:Z

    if-eqz v1, :cond_0

    sget-object v1, Lio/appmetrica/analytics/push/impl/X1;->b:Lio/appmetrica/analytics/push/impl/X1;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getPayload()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getTransport()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lio/appmetrica/analytics/push/impl/X1;->onMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lio/appmetrica/analytics/push/impl/z2;

    new-instance v2, Lio/appmetrica/analytics/push/impl/y2;

    invoke-direct {v2}, Lio/appmetrica/analytics/push/impl/y2;-><init>()V

    invoke-direct {v1, p0, v2}, Lio/appmetrica/analytics/push/impl/z2;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/push/impl/y2;)V

    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/push/impl/y2;->a(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/impl/C2;

    move-result-object p1

    iget-object v1, p1, Lio/appmetrica/analytics/push/impl/C2;->a:Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    invoke-virtual {v1}, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->isShow()Z

    move-result v1

    iget-object v2, p1, Lio/appmetrica/analytics/push/impl/C2;->b:Lio/appmetrica/analytics/push/model/PushMessage;

    if-eqz v1, :cond_7

    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object v1

    iget-object v1, v1, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    iget-object v3, v1, Lio/appmetrica/analytics/push/impl/v;->b:Lio/appmetrica/analytics/push/impl/u0;

    if-nez v3, :cond_2

    iget-object v3, v1, Lio/appmetrica/analytics/push/impl/v;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lio/appmetrica/analytics/push/impl/v;->b:Lio/appmetrica/analytics/push/impl/u0;

    if-nez v4, :cond_1

    new-instance v4, Lio/appmetrica/analytics/push/impl/u0;

    invoke-direct {v4}, Lio/appmetrica/analytics/push/impl/u0;-><init>()V

    iput-object v4, v1, Lio/appmetrica/analytics/push/impl/v;->b:Lio/appmetrica/analytics/push/impl/u0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v3

    goto :goto_2

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iget-object v1, v1, Lio/appmetrica/analytics/push/impl/v;->b:Lio/appmetrica/analytics/push/impl/u0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lio/appmetrica/analytics/push/model/PushMessage;->isSilent()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lio/appmetrica/analytics/push/model/PushMessage;->getPushIdToRemove()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lio/appmetrica/analytics/push/impl/j2;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/impl/j2;-><init>()V

    goto :goto_3

    :cond_3
    new-instance v1, Lio/appmetrica/analytics/push/impl/f2;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/impl/f2;-><init>()V

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotification()Lio/appmetrica/analytics/push/model/PushNotification;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Lio/appmetrica/analytics/push/impl/M0;

    new-instance v3, Lio/appmetrica/analytics/push/impl/r1;

    invoke-direct {v3}, Lio/appmetrica/analytics/push/impl/r1;-><init>()V

    invoke-direct {v1, v3}, Lio/appmetrica/analytics/push/impl/M0;-><init>(Lio/appmetrica/analytics/push/impl/r1;)V

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    invoke-interface {v1, p0, v2}, Lio/appmetrica/analytics/push/impl/d2;->a(Landroid/content/Context;Lio/appmetrica/analytics/push/model/PushMessage;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Receive push with wrong format"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s with pushId = %s"

    invoke-virtual {v0, v5, v4}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "notification_Id"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "Push data format is invalid"

    invoke-static {v2, v0, v3}, Lio/appmetrica/analytics/push/impl/v0;->a(Lio/appmetrica/analytics/push/model/PushMessage;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    iget-object v0, p1, Lio/appmetrica/analytics/push/impl/C2;->a:Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;

    iget-object v1, v0, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->category:Ljava/lang/String;

    iget-object v0, v0, Lio/appmetrica/analytics/push/settings/PushFilter$FilterResult;->details:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lio/appmetrica/analytics/push/impl/v0;->a(Lio/appmetrica/analytics/push/model/PushMessage;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/r;->f()Lio/appmetrica/analytics/push/impl/W1;

    move-result-object p0

    iget-object p1, p1, Lio/appmetrica/analytics/push/impl/C2;->b:Lio/appmetrica/analytics/push/model/PushMessage;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x32

    if-nez v0, :cond_a

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/W1;->b()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v2, :cond_8

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_8
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "push_id"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    :cond_9
    iget-object v3, p0, Lio/appmetrica/analytics/push/impl/W1;->a:Lio/appmetrica/analytics/push/impl/L1;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "refated_push_notification_ids"

    invoke-virtual {v3, v4, v0}, Lio/appmetrica/analytics/push/impl/L1;->a(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/impl/L1;

    :cond_a
    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getFilters()Lio/appmetrica/analytics/push/model/Filters;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/Filters;->getContentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/Filters;->getContentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/W1;->a()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-le p1, v2, :cond_b

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_b
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "content_id"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    :cond_c
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/W1;->a:Lio/appmetrica/analytics/push/impl/L1;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "refated_content_notification_ids"

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/push/impl/L1;->a(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/push/impl/L1;

    :cond_d
    return-void
.end method

.method public static a(Lio/appmetrica/analytics/push/model/PushMessage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 417
    sget-object v0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Push filtered out. Category: %s. Details: %s"

    invoke-virtual {v0, v2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    invoke-virtual {p0}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object v4

    .line 419
    invoke-static {v4}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    sget-object v3, Lio/appmetrica/analytics/push/impl/X1;->b:Lio/appmetrica/analytics/push/impl/X1;

    .line 421
    invoke-virtual {p0}, Lio/appmetrica/analytics/push/model/PushMessage;->getPayload()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/model/PushMessage;->getTransport()Ljava/lang/String;

    move-result-object v8

    move-object v5, p1

    move-object v6, p2

    .line 422
    invoke-virtual/range {v3 .. v8}, Lio/appmetrica/analytics/push/impl/X1;->onNotificationIgnored(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
