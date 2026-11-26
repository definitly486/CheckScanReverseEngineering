.class public Lio/appmetrica/analytics/push/internal/receiver/TtlBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final EXPIRED_BY_TTL_ACTION:Ljava/lang/String; = "io.appmetrica.analytics.push.action.EXPIRED_BY_TTL_ACTION"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "io.appmetrica.analytics.push.extra.PUSH_ID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "io.appmetrica.analytics.push.extra.NOTIFICATION_ID"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "io.appmetrica.analytics.push.extra.NOTIFICATION_TAG"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "io.appmetrica.analytics.push.extra.PAYLOAD"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "io.appmetrica.analytics.push.extra.TRANSPORT"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    if-eqz v4, :cond_1

    sget-object v5, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Canceling notification with id %d"

    invoke-virtual {v5, v7, v6}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-static {v0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lio/appmetrica/analytics/push/impl/X1;->b:Lio/appmetrica/analytics/push/impl/X1;

    const-string v2, "by ttl"

    invoke-virtual {v1, v0, v2, v3, p1}, Lio/appmetrica/analytics/push/impl/X1;->onNotificationExpired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/r;->f()Lio/appmetrica/analytics/push/impl/W1;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/push/impl/W1;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "io.appmetrica.analytics.push.action.EXPIRED_BY_TTL_ACTION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Lio/appmetrica/analytics/push/internal/receiver/TtlBroadcastReceiver;->a(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Failed to handle ttl"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
