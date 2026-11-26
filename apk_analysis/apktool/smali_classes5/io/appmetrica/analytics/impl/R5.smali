.class public final Lio/appmetrica/analytics/impl/R5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/BroadcastReceiver;

.field public b:Z


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/I2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/R5;->b:Z

    iput-object p1, p0, Lio/appmetrica/analytics/impl/R5;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Landroid/content/IntentFilter;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;)Landroid/content/Intent;
    .locals 7

    monitor-enter p0

    const/16 v0, 0x21

    :try_start_0
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    iget-object v2, p0, Lio/appmetrica/analytics/impl/R5;->a:Landroid/content/BroadcastReceiver;

    invoke-interface {p3}, Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x1

    :try_start_1
    iput-boolean p2, p0, Lio/appmetrica/analytics/impl/R5;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :catchall_1
    :goto_0
    monitor-exit p0

    return-object p1
.end method
