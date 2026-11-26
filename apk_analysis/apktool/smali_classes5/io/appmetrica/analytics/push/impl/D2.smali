.class public final Lio/appmetrica/analytics/push/impl/D2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/C;


# instance fields
.field public final a:Lio/appmetrica/analytics/push/impl/x0;

.field public final b:Lio/appmetrica/analytics/push/impl/w0;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/impl/x0;Lio/appmetrica/analytics/push/impl/w0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/D2;->a:Lio/appmetrica/analytics/push/impl/x0;

    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/D2;->b:Lio/appmetrica/analytics/push/impl/w0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9

    sget-object v0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Update system info"

    invoke-virtual {v0, v3, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/push/impl/r;->g()Z

    move-result v2

    if-nez v2, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "Failed to update system info. AppMetricaPush is not activated"

    invoke-virtual {v0, p1, p0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p0

    const-string p1, "Failed to update system info. AppMetricaPush is not activated"

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportEvent(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/D2;->a:Lio/appmetrica/analytics/push/impl/x0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p1

    iget-object p1, p1, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    iget-object v2, p1, Lio/appmetrica/analytics/push/impl/v;->j:Lio/appmetrica/analytics/push/impl/z1;

    if-nez v2, :cond_2

    iget-object v2, p1, Lio/appmetrica/analytics/push/impl/v;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p1, Lio/appmetrica/analytics/push/impl/v;->j:Lio/appmetrica/analytics/push/impl/z1;

    if-nez v3, :cond_1

    new-instance v3, Lio/appmetrica/analytics/push/impl/z1;

    iget-object v4, p1, Lio/appmetrica/analytics/push/impl/v;->p:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    invoke-static {v4}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v6

    new-instance v7, Lio/appmetrica/analytics/push/impl/L1;

    const-string v8, ".NOTIFICATION_STATUS"

    invoke-direct {v7, v4, v8}, Lio/appmetrica/analytics/push/impl/L1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v3, v5, v6, v7}, Lio/appmetrica/analytics/push/impl/z1;-><init>(Landroid/app/NotificationManager;Landroidx/core/app/NotificationManagerCompat;Lio/appmetrica/analytics/push/impl/L1;)V

    iput-object v3, p1, Lio/appmetrica/analytics/push/impl/v;->j:Lio/appmetrica/analytics/push/impl/z1;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    iget-object p1, p1, Lio/appmetrica/analytics/push/impl/v;->j:Lio/appmetrica/analytics/push/impl/z1;

    iget-object p1, p1, Lio/appmetrica/analytics/push/impl/z1;->c:Lio/appmetrica/analytics/push/impl/y1;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/impl/y1;->a()Lio/appmetrica/analytics/push/impl/s1;

    move-result-object p1

    const-string v2, "io.appmetrica.analytics.push.extra.EXTRA_INFO"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_3

    sget-object v2, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;->Companion:Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Companion;

    invoke-virtual {v2, p2}, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo$Companion;->fromBundle(Landroid/os/Bundle;)Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;

    move-result-object p2

    goto :goto_3

    :cond_3
    const/4 p2, 0x0

    :goto_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/coreutils/internal/commands/SystemInfoCommandInfo;->getStatusChangeTime()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lio/appmetrica/analytics/push/impl/s1;->e:Ljava/lang/Long;

    :cond_4
    new-instance p2, Lio/appmetrica/analytics/push/impl/q2;

    invoke-direct {p2, p1}, Lio/appmetrica/analytics/push/impl/q2;-><init>(Lio/appmetrica/analytics/push/impl/s1;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "System info event: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/impl/q2;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/D2;->b:Lio/appmetrica/analytics/push/impl/w0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lio/appmetrica/analytics/push/impl/X1;->b:Lio/appmetrica/analytics/push/impl/X1;

    invoke-virtual {p2}, Lio/appmetrica/analytics/push/impl/q2;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/impl/X1;->a(Ljava/lang/String;)V

    return-void
.end method
