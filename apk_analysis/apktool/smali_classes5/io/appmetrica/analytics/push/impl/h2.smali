.class public final Lio/appmetrica/analytics/push/impl/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/C;


# instance fields
.field public final a:Lio/appmetrica/analytics/push/impl/z0;

.field public final b:Lio/appmetrica/analytics/push/impl/y0;

.field public final c:Lio/appmetrica/analytics/push/impl/v2;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/push/impl/z0;Lio/appmetrica/analytics/push/impl/y0;Lio/appmetrica/analytics/push/impl/v2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/h2;->a:Lio/appmetrica/analytics/push/impl/z0;

    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/h2;->b:Lio/appmetrica/analytics/push/impl/y0;

    iput-object p3, p0, Lio/appmetrica/analytics/push/impl/h2;->c:Lio/appmetrica/analytics/push/impl/v2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 10

    sget-object v0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Trying to get tokens"

    invoke-virtual {v0, v3, v2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/push/impl/r;->g()Z

    move-result v2

    if-nez v2, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "Failed to send push token. AppMetricaPush is not activated"

    invoke-virtual {v0, p1, p0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportEvent(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/h2;->a:Lio/appmetrica/analytics/push/impl/z0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "io.appmetrica.analytics.push.extra.EXTRA_INFO"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    sget-object v4, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->Companion:Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Companion;

    invoke-virtual {v4, v2}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo$Companion;->fromBundle(Landroid/os/Bundle;)Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->getToken()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p2

    iget-object p2, p2, Lio/appmetrica/analytics/push/impl/r;->d:Lio/appmetrica/analytics/push/impl/b2;

    if-eqz p2, :cond_3

    invoke-virtual {v2}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->getProvider()Ljava/lang/String;

    move-result-object v4

    iget-object p2, p2, Lio/appmetrica/analytics/push/impl/b2;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/appmetrica/analytics/push/provider/api/PushServiceController;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lio/appmetrica/analytics/push/provider/api/PushServiceController;->getToken()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, p2

    :cond_3
    :goto_0
    invoke-virtual {v2}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->getProvider()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2}, Lio/appmetrica/analytics/push/coreutils/internal/commands/PushTokenCommandInfo;->getForce()Z

    move-result v2

    new-instance v4, Lio/appmetrica/analytics/push/impl/t2;

    invoke-direct {v4, p2, v3, v2}, Lio/appmetrica/analytics/push/impl/t2;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v3, v4

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get token event from bundle "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportEvent(Ljava/lang/String;)V

    :goto_2
    if-nez v3, :cond_5

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "Failed to send push token. Token event is null"

    invoke-virtual {v0, p1, p0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_5
    iget-object p2, p0, Lio/appmetrica/analytics/push/impl/h2;->b:Lio/appmetrica/analytics/push/impl/y0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lio/appmetrica/analytics/push/impl/V0;

    invoke-direct {p2}, Lio/appmetrica/analytics/push/impl/V0;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/push/impl/f;

    new-instance v4, Lio/appmetrica/analytics/push/impl/i1;

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object v5

    iget-object v5, v5, Lio/appmetrica/analytics/push/impl/r;->e:Lio/appmetrica/analytics/push/impl/x2;

    invoke-direct {v4, v5}, Lio/appmetrica/analytics/push/impl/i1;-><init>(Lio/appmetrica/analytics/push/impl/x2;)V

    new-instance v5, Lio/appmetrica/analytics/push/impl/c2;

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object v6

    iget-object v6, v6, Lio/appmetrica/analytics/push/impl/r;->d:Lio/appmetrica/analytics/push/impl/b2;

    invoke-direct {v5, v6}, Lio/appmetrica/analytics/push/impl/c2;-><init>(Lio/appmetrica/analytics/push/impl/b2;)V

    const/4 v6, 0x2

    new-array v7, v6, [Lio/appmetrica/analytics/push/impl/u2;

    aput-object v4, v7, v1

    const/4 v4, 0x1

    aput-object v5, v7, v4

    invoke-direct {v2, v7}, Lio/appmetrica/analytics/push/impl/f;-><init>([Lio/appmetrica/analytics/push/impl/u2;)V

    new-array v5, v6, [Lio/appmetrica/analytics/push/impl/u2;

    aput-object p2, v5, v1

    aput-object v2, v5, v4

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    :goto_3
    if-ge v2, v6, :cond_6

    aget-object v4, v5, v2

    invoke-interface {v4}, Lio/appmetrica/analytics/push/impl/u2;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Found token "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lio/appmetrica/analytics/push/impl/t2;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lio/appmetrica/analytics/push/impl/t2;->b:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v4}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    move p2, v1

    :goto_4
    if-ge p2, v6, :cond_8

    aget-object v4, v5, p2

    invoke-interface {v4, v3}, Lio/appmetrica/analytics/push/impl/u2;->a(Lio/appmetrica/analytics/push/impl/t2;)Z

    move-result v7

    sget-object v8, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lio/appmetrica/analytics/push/impl/u2;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " provider: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lio/appmetrica/analytics/push/impl/t2;->a:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", shouldSend: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v8, v4, v9}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v7, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "Processing token "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v3, Lio/appmetrica/analytics/push/impl/t2;->a:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lio/appmetrica/analytics/push/impl/t2;->b:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p2, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/h2;->c:Lio/appmetrica/analytics/push/impl/v2;

    invoke-interface {p0, p1, v3}, Lio/appmetrica/analytics/push/impl/v2;->a(Landroid/content/Context;Lio/appmetrica/analytics/push/impl/t2;)V

    return-void

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Skipping token "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v3, Lio/appmetrica/analytics/push/impl/t2;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v3, Lio/appmetrica/analytics/push/impl/t2;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
