.class public final Lio/appmetrica/analytics/push/AppMetricaPush;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTRA_ACTION_INFO:Ljava/lang/String; = "io.appmetrica.analytics.push.extra.ACTION_INFO"

.field public static final EXTRA_PAYLOAD:Ljava/lang/String; = ".extra.payload"

.field public static final OPEN_DEFAULT_ACTIVITY_ACTION:Ljava/lang/String; = "io.appmetrica.analytics.push.action.OPEN"

.field private static volatile a:Lio/appmetrica/analytics/push/impl/r;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/push/AppMetricaPush;->b:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized activate(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lio/appmetrica/analytics/push/AppMetricaPush;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/push/AppMetricaPush;->a:Lio/appmetrica/analytics/push/impl/r;

    if-nez v1, :cond_1

    sget-object v1, Lio/appmetrica/analytics/push/AppMetricaPush;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lio/appmetrica/analytics/push/AppMetricaPush;->a:Lio/appmetrica/analytics/push/impl/r;

    if-nez v2, :cond_0

    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/appmetrica/analytics/push/provider/firebase/FirebasePushServiceControllerProvider;

    iget-object v3, p0, Lio/appmetrica/analytics/push/impl/r;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/push/provider/firebase/FirebasePushServiceControllerProvider;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lio/appmetrica/analytics/push/provider/api/PushServiceControllerProvider;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lio/appmetrica/analytics/push/impl/r;->a([Lio/appmetrica/analytics/push/provider/api/PushServiceControllerProvider;)V

    sput-object p0, Lio/appmetrica/analytics/push/AppMetricaPush;->a:Lio/appmetrica/analytics/push/impl/r;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static varargs declared-synchronized activate(Landroid/content/Context;[Lio/appmetrica/analytics/push/provider/api/PushServiceControllerProvider;)V
    .locals 3

    const-class v0, Lio/appmetrica/analytics/push/AppMetricaPush;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/push/AppMetricaPush;->a:Lio/appmetrica/analytics/push/impl/r;

    if-nez v1, :cond_1

    .line 53
    sget-object v1, Lio/appmetrica/analytics/push/AppMetricaPush;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :try_start_1
    sget-object v2, Lio/appmetrica/analytics/push/AppMetricaPush;->a:Lio/appmetrica/analytics/push/impl/r;

    if-nez v2, :cond_0

    .line 55
    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    .line 56
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/impl/r;->a([Lio/appmetrica/analytics/push/provider/api/PushServiceControllerProvider;)V

    .line 57
    sput-object p0, Lio/appmetrica/analytics/push/AppMetricaPush;->a:Lio/appmetrica/analytics/push/impl/r;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 58
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public static addPushEventListener(Lio/appmetrica/analytics/push/event/PushEventListener;)V
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/push/impl/X1;->b:Lio/appmetrica/analytics/push/impl/X1;

    new-instance v1, Lio/appmetrica/analytics/push/impl/O1;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/push/impl/O1;-><init>(Lio/appmetrica/analytics/push/event/PushEventListener;)V

    iget-object p0, v0, Lio/appmetrica/analytics/push/impl/X1;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addPushFilter(Landroid/content/Context;Lio/appmetrica/analytics/push/settings/PushFilter;)V
    .locals 1

    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/r;->e()Lio/appmetrica/analytics/push/impl/Q1;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/push/impl/G0;->a:Lio/appmetrica/analytics/push/impl/P1;

    iget-object v0, v0, Lio/appmetrica/analytics/push/impl/P1;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/r;->c()Lio/appmetrica/analytics/push/impl/K1;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/G0;->a:Lio/appmetrica/analytics/push/impl/P1;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/P1;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addPushFilteredCallback(Landroid/content/Context;Lio/appmetrica/analytics/push/settings/PushFilteredCallback;)V
    .locals 1

    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/r;->e()Lio/appmetrica/analytics/push/impl/Q1;

    move-result-object v0

    iget-object v0, v0, Lio/appmetrica/analytics/push/impl/G0;->a:Lio/appmetrica/analytics/push/impl/P1;

    iget-object v0, v0, Lio/appmetrica/analytics/push/impl/P1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/r;->c()Lio/appmetrica/analytics/push/impl/K1;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/G0;->a:Lio/appmetrica/analytics/push/impl/P1;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/P1;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addPushMessageTracker(Lio/appmetrica/analytics/push/settings/PushMessageTracker;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lio/appmetrica/analytics/push/impl/X1;->b:Lio/appmetrica/analytics/push/impl/X1;

    new-instance v1, Lio/appmetrica/analytics/push/impl/Y1;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/push/impl/Y1;-><init>(Lio/appmetrica/analytics/push/settings/PushMessageTracker;)V

    iget-object p0, v0, Lio/appmetrica/analytics/push/impl/X1;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static enableLogger()V
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->setEnabled(Z)V

    return-void
.end method

.method public static declared-synchronized getDefaultNotificationChannel()Landroid/app/NotificationChannel;
    .locals 4

    const-class v0, Lio/appmetrica/analytics/push/AppMetricaPush;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/push/AppMetricaPush;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lio/appmetrica/analytics/push/AppMetricaPush;->a:Lio/appmetrica/analytics/push/impl/r;

    if-eqz v2, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v1, Lio/appmetrica/analytics/push/AppMetricaPush;->a:Lio/appmetrica/analytics/push/impl/r;

    invoke-virtual {v1}, Lio/appmetrica/analytics/push/impl/r;->b()Lio/appmetrica/analytics/push/impl/l1;

    move-result-object v1

    iget-object v1, v1, Lio/appmetrica/analytics/push/impl/l1;->b:Landroid/app/NotificationChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "AppMetricaPush should be activated by calling AppMetricaPush.activate(Context)."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public static getDefaultPushNotificationFactory()Lio/appmetrica/analytics/push/settings/PushNotificationFactory;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/push/impl/Z1;->a:Lio/appmetrica/analytics/push/internal/notification/DefaultPushNotificationFactory;

    return-object v0
.end method

.method public static getNotificationCustomizersHolder()Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/push/impl/q1;->a:Lio/appmetrica/analytics/push/notification/NotificationCustomizersHolder;

    return-object v0
.end method

.method public static declared-synchronized getTokens()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lio/appmetrica/analytics/push/AppMetricaPush;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/push/AppMetricaPush;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lio/appmetrica/analytics/push/AppMetricaPush;->a:Lio/appmetrica/analytics/push/impl/r;

    if-eqz v2, :cond_1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v1, Lio/appmetrica/analytics/push/AppMetricaPush;->a:Lio/appmetrica/analytics/push/impl/r;

    iget-object v1, v1, Lio/appmetrica/analytics/push/impl/r;->e:Lio/appmetrica/analytics/push/impl/x2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lio/appmetrica/analytics/push/impl/x2;->a()Ljava/util/LinkedHashMap;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    goto :goto_0

    :cond_1
    :try_start_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "AppMetricaPush should be activated by calling AppMetricaPush.activate(Context)."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_0
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2

    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method public static reportPushEvent(Landroid/content/Context;Lio/appmetrica/analytics/push/event/PushEvent;)V
    .locals 8

    if-eqz p1, :cond_a

    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/r;->g:Lio/appmetrica/analytics/push/impl/U0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/U0;->a:Lio/appmetrica/analytics/push/impl/T0;

    check-cast p1, Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;->getPushId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;->getActionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;->getPayload()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;->getTransport()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/AdditionalActionPushEvent;->getTargetActionUri()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lio/appmetrica/analytics/push/impl/T0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v0, p1, Lio/appmetrica/analytics/push/event/DismissPushEvent;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/U0;->a:Lio/appmetrica/analytics/push/impl/T0;

    check-cast p1, Lio/appmetrica/analytics/push/event/DismissPushEvent;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/DismissPushEvent;->getPushId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/DismissPushEvent;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/DismissPushEvent;->getTransport()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lio/appmetrica/analytics/push/impl/T0;->onNotificationCleared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    instance-of v0, p1, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/U0;->a:Lio/appmetrica/analytics/push/impl/T0;

    check-cast p1, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;->getPushId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;->getPayload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/ExpiredPushEvent;->getTransport()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lio/appmetrica/analytics/push/impl/T0;->onNotificationExpired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    instance-of v0, p1, Lio/appmetrica/analytics/push/event/IgnoredPushEvent;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/U0;->a:Lio/appmetrica/analytics/push/impl/T0;

    check-cast p1, Lio/appmetrica/analytics/push/event/IgnoredPushEvent;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/IgnoredPushEvent;->getPushId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/IgnoredPushEvent;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/IgnoredPushEvent;->getDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/IgnoredPushEvent;->getPayload()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/IgnoredPushEvent;->getTransport()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lio/appmetrica/analytics/push/impl/T0;->onNotificationIgnored(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    instance-of v0, p1, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/U0;->a:Lio/appmetrica/analytics/push/impl/T0;

    check-cast p1, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;->getPushId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;->getActionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;->getPayload()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;->getTransport()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/InlineAdditionalActionPushEvent;->getTargetActionUri()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v1 .. v7}, Lio/appmetrica/analytics/push/impl/T0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    instance-of v0, p1, Lio/appmetrica/analytics/push/event/OpenPushEvent;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/U0;->a:Lio/appmetrica/analytics/push/impl/T0;

    check-cast p1, Lio/appmetrica/analytics/push/event/OpenPushEvent;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/OpenPushEvent;->getPushId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/OpenPushEvent;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/OpenPushEvent;->getTransport()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/OpenPushEvent;->getTargetActionUri()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lio/appmetrica/analytics/push/impl/T0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    instance-of v0, p1, Lio/appmetrica/analytics/push/event/RemovedPushEvent;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/U0;->a:Lio/appmetrica/analytics/push/impl/T0;

    check-cast p1, Lio/appmetrica/analytics/push/event/RemovedPushEvent;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/RemovedPushEvent;->getPushId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/RemovedPushEvent;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/RemovedPushEvent;->getDetails()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/RemovedPushEvent;->getPayload()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/RemovedPushEvent;->getTransport()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lio/appmetrica/analytics/push/impl/T0;->onRemovingSilentPushProcessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    instance-of v0, p1, Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/U0;->a:Lio/appmetrica/analytics/push/impl/T0;

    check-cast p1, Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;->getPushId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/ProcessSilentPushEvent;->getTransport()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lio/appmetrica/analytics/push/impl/T0;->onSilentPushProcessed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    instance-of v0, p1, Lio/appmetrica/analytics/push/event/ReceivePushEvent;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/U0;->a:Lio/appmetrica/analytics/push/impl/T0;

    check-cast p1, Lio/appmetrica/analytics/push/event/ReceivePushEvent;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/ReceivePushEvent;->getPushId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/ReceivePushEvent;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/ReceivePushEvent;->getTransport()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lio/appmetrica/analytics/push/impl/T0;->onMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    instance-of v0, p1, Lio/appmetrica/analytics/push/event/ReplacePushEvent;

    if-eqz v0, :cond_9

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/U0;->a:Lio/appmetrica/analytics/push/impl/T0;

    check-cast p1, Lio/appmetrica/analytics/push/event/ReplacePushEvent;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/ReplacePushEvent;->getPushId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/ReplacePushEvent;->getNewPushId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/ReplacePushEvent;->getTransport()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lio/appmetrica/analytics/push/impl/T0;->onNotificationReplace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    instance-of v0, p1, Lio/appmetrica/analytics/push/event/ShownPushEvent;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/U0;->a:Lio/appmetrica/analytics/push/impl/T0;

    check-cast p1, Lio/appmetrica/analytics/push/event/ShownPushEvent;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/ShownPushEvent;->getPushId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/ShownPushEvent;->getPayload()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/event/ShownPushEvent;->getTransport()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lio/appmetrica/analytics/push/impl/T0;->onNotificationShown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static setAutoTrackingConfiguration(Landroid/content/Context;Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;)V
    .locals 1

    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/v;->g:Lio/appmetrica/analytics/push/settings/AutoTrackingConfiguration;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setLazyPushTransformRuleProvider(Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRuleProvider;)V
    .locals 0

    sput-object p0, Lio/appmetrica/analytics/push/impl/a1;->a:Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRuleProvider;

    return-void
.end method

.method public static setLocationProvider(Lio/appmetrica/analytics/push/location/LocationProvider;)V
    .locals 0

    sput-object p0, Lio/appmetrica/analytics/push/impl/c1;->a:Lio/appmetrica/analytics/push/location/LocationProvider;

    return-void
.end method

.method public static setPassportUidProvider(Landroid/content/Context;Lio/appmetrica/analytics/push/settings/PassportUidProvider;)V
    .locals 0

    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/v;->o:Lio/appmetrica/analytics/push/settings/PassportUidProvider;

    return-void
.end method

.method public static setPushNotificationFactory(Landroid/content/Context;Lio/appmetrica/analytics/push/settings/PushNotificationFactory;)V
    .locals 0

    sput-object p1, Lio/appmetrica/analytics/push/impl/Z1;->b:Lio/appmetrica/analytics/push/settings/PushNotificationFactory;

    return-void
.end method

.method public static declared-synchronized setTokenUpdateListener(Lio/appmetrica/analytics/push/TokenUpdateListener;)V
    .locals 5

    const-class v0, Lio/appmetrica/analytics/push/AppMetricaPush;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/push/AppMetricaPush;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v2, Lio/appmetrica/analytics/push/AppMetricaPush;->a:Lio/appmetrica/analytics/push/impl/r;

    if-eqz v2, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v1, Lio/appmetrica/analytics/push/AppMetricaPush;->a:Lio/appmetrica/analytics/push/impl/r;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Setting token update listener"

    invoke-virtual {v2, v4, v3}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p0, v1, Lio/appmetrica/analytics/push/impl/r;->h:Lio/appmetrica/analytics/push/TokenUpdateListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v2, "AppMetricaPush should be activated by calling AppMetricaPush.activate(Context)."

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
