.class public final Lio/appmetrica/analytics/push/internal/service/FakeService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lio/appmetrica/analytics/push/internal/service/FakeService;

.field private static final a:Lio/appmetrica/analytics/push/impl/D;

.field private static final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/internal/service/FakeService;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/internal/service/FakeService;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/push/internal/service/FakeService;->INSTANCE:Lio/appmetrica/analytics/push/internal/service/FakeService;

    new-instance v0, Lio/appmetrica/analytics/push/impl/D;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/impl/D;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/push/internal/service/FakeService;->a:Lio/appmetrica/analytics/push/impl/D;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/appmetrica/analytics/push/internal/service/FakeService;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lio/appmetrica/analytics/push/impl/C;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/push/impl/C;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic b(Lio/appmetrica/analytics/push/impl/C;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/appmetrica/analytics/push/internal/service/FakeService;->a(Lio/appmetrica/analytics/push/impl/C;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static final onStartCommand(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    :try_start_0
    const-string v0, "io.appmetrica.analytics.push.extra.COMMAND"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "io.appmetrica.analytics.push.extra.EXTRA_COMMAND_RECEIVED_TIME"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lio/appmetrica/analytics/push/impl/G2;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FakeService"

    invoke-static {v0, v1, v2, v3, v4}, Lio/appmetrica/analytics/push/impl/F;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lio/appmetrica/analytics/push/internal/service/FakeService;->a:Lio/appmetrica/analytics/push/impl/D;

    iget-object v1, v1, Lio/appmetrica/analytics/push/impl/D;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/push/impl/C;

    if-eqz v0, :cond_0

    sget-object v1, Lio/appmetrica/analytics/push/internal/service/FakeService;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/appmetrica/analytics/push/internal/service/a;

    invoke-direct {v2, v0, p0, p1}, Lio/appmetrica/analytics/push/internal/service/a;-><init>(Lio/appmetrica/analytics/push/impl/C;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object p1

    const-string v0, "Failed to handle command "

    invoke-virtual {p1, v0, p0}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "An unexpected error occurred while running the AppMetrica Push SDK. You can report it via https://appmetrica.io/docs/troubleshooting/other.html"

    invoke-virtual {p1, p0, v1, v0}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
