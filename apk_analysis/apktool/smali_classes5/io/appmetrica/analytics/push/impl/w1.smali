.class public Lio/appmetrica/analytics/push/impl/w1;
.super Lio/appmetrica/analytics/push/impl/y1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/push/impl/z1;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/impl/z1;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/w1;->b:Lio/appmetrica/analytics/push/impl/z1;

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/push/impl/y1;-><init>(Lio/appmetrica/analytics/push/impl/z1;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/push/impl/s1;
    .locals 13

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/w1;->b:Lio/appmetrica/analytics/push/impl/z1;

    iget-object v0, v0, Lio/appmetrica/analytics/push/impl/z1;->a:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/w1;->b:Lio/appmetrica/analytics/push/impl/z1;

    iget-object v2, v2, Lio/appmetrica/analytics/push/impl/z1;->a:Landroid/app/NotificationManager;

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v2}, Landroid/app/NotificationManager;->getNotificationChannelGroups()Ljava/util/List;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v3, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4, v5}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move v6, v1

    :goto_3
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lio/appmetrica/analytics/push/impl/w1;->a(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    if-nez v8, :cond_4

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v9, Lio/appmetrica/analytics/push/impl/t1;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5, v6, v7}, Lio/appmetrica/analytics/push/impl/t1;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v7

    if-eqz v7, :cond_7

    move v7, v6

    goto :goto_5

    :cond_7
    move v7, v1

    :goto_5
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v7}, Lio/appmetrica/analytics/push/impl/w1;->a(Ljava/lang/String;Z)Z

    move-result v8

    new-instance v9, Lio/appmetrica/analytics/push/impl/t1;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5, v7, v8}, Lio/appmetrica/analytics/push/impl/t1;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannelGroup;

    invoke-virtual {p0, v5}, Lio/appmetrica/analytics/push/impl/w1;->a(Landroid/app/NotificationChannelGroup;)Z

    move-result v7

    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lio/appmetrica/analytics/push/impl/w1;->b:Lio/appmetrica/analytics/push/impl/z1;

    iget-object v9, v9, Lio/appmetrica/analytics/push/impl/z1;->d:Lio/appmetrica/analytics/push/impl/L1;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "notification_group_"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/appmetrica/analytics/push/impl/L1;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    iget-object v10, p0, Lio/appmetrica/analytics/push/impl/w1;->b:Lio/appmetrica/analytics/push/impl/z1;

    iget-object v10, v10, Lio/appmetrica/analytics/push/impl/z1;->d:Lio/appmetrica/analytics/push/impl/L1;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8, v7}, Lio/appmetrica/analytics/push/impl/L1;->a(Ljava/lang/String;Z)Lio/appmetrica/analytics/push/impl/L1;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eq v8, v7, :cond_9

    move v8, v6

    goto :goto_7

    :cond_9
    move v8, v1

    :goto_7
    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    if-nez v9, :cond_a

    new-instance v9, Lio/appmetrica/analytics/push/impl/v1;

    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v10, Lox2;->b:Lox2;

    invoke-direct {v9, v5, v7, v8, v10}, Lio/appmetrica/analytics/push/impl/v1;-><init>(Ljava/lang/String;ZZLjava/util/Set;)V

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    new-instance v10, Lio/appmetrica/analytics/push/impl/v1;

    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5, v7, v8, v9}, Lio/appmetrica/analytics/push/impl/v1;-><init>(Ljava/lang/String;ZZLjava/util/Set;)V

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/y1;->a:Lio/appmetrica/analytics/push/impl/z1;

    iget-object v2, v2, Lio/appmetrica/analytics/push/impl/z1;->b:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v2}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v2

    iget-object v3, p0, Lio/appmetrica/analytics/push/impl/y1;->a:Lio/appmetrica/analytics/push/impl/z1;

    iget-object v3, v3, Lio/appmetrica/analytics/push/impl/z1;->d:Lio/appmetrica/analytics/push/impl/L1;

    const-string v5, "app_notification_status"

    invoke-virtual {v3, v5}, Lio/appmetrica/analytics/push/impl/L1;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/y1;->a:Lio/appmetrica/analytics/push/impl/z1;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/z1;->d:Lio/appmetrica/analytics/push/impl/L1;

    invoke-virtual {p0, v5, v2}, Lio/appmetrica/analytics/push/impl/L1;->a(Ljava/lang/String;Z)Lio/appmetrica/analytics/push/impl/L1;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eq p0, v2, :cond_c

    move v1, v6

    :cond_c
    new-instance p0, Lio/appmetrica/analytics/push/impl/s1;

    invoke-direct {p0, v2, v1, v0, v4}, Lio/appmetrica/analytics/push/impl/s1;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    return-object p0
.end method

.method public a(Landroid/app/NotificationChannelGroup;)Z
    .locals 0

    .line 356
    const/4 p0, 0x1

    return p0
.end method

.method public final a(Ljava/lang/String;Z)Z
    .locals 3

    .line 357
    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/w1;->b:Lio/appmetrica/analytics/push/impl/z1;

    .line 358
    iget-object v0, v0, Lio/appmetrica/analytics/push/impl/z1;->d:Lio/appmetrica/analytics/push/impl/L1;

    .line 359
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notification_channel_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/push/impl/L1;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 361
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/w1;->b:Lio/appmetrica/analytics/push/impl/z1;

    .line 362
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/z1;->d:Lio/appmetrica/analytics/push/impl/L1;

    .line 363
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/push/impl/L1;->a(Ljava/lang/String;Z)Lio/appmetrica/analytics/push/impl/L1;

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eq p0, p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
