.class public final Lio/appmetrica/analytics/push/impl/M1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/C;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->c:Lio/appmetrica/analytics/push/impl/v0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->c:Lio/appmetrica/analytics/push/impl/v0;

    if-nez v1, :cond_0

    new-instance v1, Lio/appmetrica/analytics/push/impl/v0;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/impl/v0;-><init>()V

    iput-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->c:Lio/appmetrica/analytics/push/impl/v0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/v;->c:Lio/appmetrica/analytics/push/impl/v0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    if-eqz p2, :cond_3

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/internal/model/BasePushMessage;

    invoke-direct {v0, p2}, Lio/appmetrica/analytics/push/coreutils/internal/model/BasePushMessage;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/push/coreutils/internal/model/BasePushMessage;->isOwnPush()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lio/appmetrica/analytics/push/model/PushMessage;

    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/push/model/PushMessage;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    :try_start_1
    invoke-static {p1, p0}, Lio/appmetrica/analytics/push/impl/v0;->a(Landroid/content/Context;Lio/appmetrica/analytics/push/model/PushMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Failed to process push"

    invoke-static {p0, p2, p1}, Lio/appmetrica/analytics/push/impl/v0;->a(Lio/appmetrica/analytics/push/model/PushMessage;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object p1, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    new-array p0, p0, [Ljava/lang/Object;

    const-string p2, "Receive not recognized push message"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    sget-object p1, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    new-array p0, p0, [Ljava/lang/Object;

    const-string p2, "Received push message with empty data bundle"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p0

    const-string p1, "Receive push message with empty bundle"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
