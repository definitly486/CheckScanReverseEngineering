.class public final Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lio/appmetrica/analytics/push/coreutils/internal/service/PushServiceControllerProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic startCommand$default(Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;Landroid/content/Context;Landroid/os/Bundle;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;->startCommand(Landroid/content/Context;Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method public final setPushServiceControllerProvider(Lio/appmetrica/analytics/push/coreutils/internal/service/PushServiceControllerProvider;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;->a:Lio/appmetrica/analytics/push/coreutils/internal/service/PushServiceControllerProvider;

    return-void
.end method

.method public final startCommand(Landroid/content/Context;Landroid/os/Bundle;Z)V
    .locals 1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;->a:Lio/appmetrica/analytics/push/coreutils/internal/service/PushServiceControllerProvider;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/push/coreutils/internal/service/PushServiceControllerProvider;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/push/coreutils/internal/service/PushServiceControllerProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appmetrica/analytics/push/coreutils/internal/CommandServiceWrapper;->a:Lio/appmetrica/analytics/push/coreutils/internal/service/PushServiceControllerProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    invoke-virtual {v0, p3}, Lio/appmetrica/analytics/push/coreutils/internal/service/PushServiceControllerProvider;->getPushServiceCommandLauncher(Z)Lio/appmetrica/analytics/push/coreutils/internal/service/PushServiceCommandLauncher;

    move-result-object p0

    invoke-interface {p0, p2}, Lio/appmetrica/analytics/push/coreutils/internal/service/PushServiceCommandLauncher;->launchService(Landroid/os/Bundle;)V

    return-void

    :goto_1
    monitor-exit p0

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string p2, "Start failed"

    invoke-virtual {p1, p2, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
