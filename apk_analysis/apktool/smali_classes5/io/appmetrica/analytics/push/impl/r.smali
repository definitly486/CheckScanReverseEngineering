.class public final Lio/appmetrica/analytics/push/impl/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile i:Lio/appmetrica/analytics/push/impl/r;

.field public static final j:Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Object;

.field public c:Z

.field public d:Lio/appmetrica/analytics/push/impl/b2;

.field public e:Lio/appmetrica/analytics/push/impl/x2;

.field public final f:Lio/appmetrica/analytics/push/impl/v;

.field public final g:Lio/appmetrica/analytics/push/impl/U0;

.field public h:Lio/appmetrica/analytics/push/TokenUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/push/impl/r;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/push/impl/r;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appmetrica/analytics/push/impl/r;->c:Z

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/r;->a:Landroid/content/Context;

    new-instance v0, Lio/appmetrica/analytics/push/impl/v;

    invoke-direct {v0, p1, p0}, Lio/appmetrica/analytics/push/impl/v;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/push/impl/r;)V

    iput-object v0, p0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/push/impl/r;->b(Landroid/content/Context;)V

    new-instance v1, Lio/appmetrica/analytics/push/impl/U0;

    new-instance v2, Lio/appmetrica/analytics/push/impl/u;

    invoke-virtual {v0}, Lio/appmetrica/analytics/push/impl/v;->c()Lio/appmetrica/analytics/push/impl/L1;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lio/appmetrica/analytics/push/impl/u;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/push/impl/L1;)V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/push/impl/U0;-><init>(Lio/appmetrica/analytics/push/impl/u;)V

    iput-object v1, p0, Lio/appmetrica/analytics/push/impl/r;->g:Lio/appmetrica/analytics/push/impl/U0;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;
    .locals 2

    .line 155
    sget-object v0, Lio/appmetrica/analytics/push/impl/r;->i:Lio/appmetrica/analytics/push/impl/r;

    if-nez v0, :cond_1

    .line 156
    sget-object v0, Lio/appmetrica/analytics/push/impl/r;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/push/impl/r;->i:Lio/appmetrica/analytics/push/impl/r;

    if-nez v1, :cond_0

    .line 158
    new-instance v1, Lio/appmetrica/analytics/push/impl/r;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/push/impl/r;-><init>(Landroid/content/Context;)V

    sput-object v1, Lio/appmetrica/analytics/push/impl/r;->i:Lio/appmetrica/analytics/push/impl/r;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 159
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 160
    :cond_1
    :goto_2
    sget-object p0, Lio/appmetrica/analytics/push/impl/r;->i:Lio/appmetrica/analytics/push/impl/r;

    return-object p0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/push/impl/h1;
    .locals 2

    .line 161
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    .line 162
    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->l:Lio/appmetrica/analytics/push/impl/h1;

    if-nez v0, :cond_1

    .line 163
    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->l:Lio/appmetrica/analytics/push/impl/h1;

    if-nez v1, :cond_0

    .line 165
    new-instance v1, Lio/appmetrica/analytics/push/impl/h1;

    invoke-direct {v1}, Lio/appmetrica/analytics/push/impl/h1;-><init>()V

    iput-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->l:Lio/appmetrica/analytics/push/impl/h1;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 166
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 167
    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/v;->l:Lio/appmetrica/analytics/push/impl/h1;

    return-object p0
.end method

.method public final varargs a([Lio/appmetrica/analytics/push/provider/api/PushServiceControllerProvider;)V
    .locals 5

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/r;->a()Lio/appmetrica/analytics/push/impl/h1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lio/appmetrica/analytics/push/impl/h1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/appmetrica/analytics/push/coreutils/internal/utils/CoreUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lio/appmetrica/analytics/push/impl/h1;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/r;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-boolean v2, p0, Lio/appmetrica/analytics/push/impl/r;->c:Z

    if-nez v2, :cond_2

    sget-object v2, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    const-string v3, "Initializing AppMetrica Push SDK"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->resumeSession()V

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object v2

    invoke-virtual {v2}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->pauseSession()V

    invoke-static {}, Lio/appmetrica/analytics/ModulesFacade;->isActivatedForApp()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p1

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p1, v1

    invoke-interface {v4}, Lio/appmetrica/analytics/push/provider/api/PushServiceControllerProvider;->getPushServiceController()Lio/appmetrica/analytics/push/provider/api/PushServiceController;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    new-instance p1, Lio/appmetrica/analytics/push/impl/b2;

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/r;->a:Landroid/content/Context;

    invoke-direct {p1, v1, v2}, Lio/appmetrica/analytics/push/impl/b2;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/r;->d:Lio/appmetrica/analytics/push/impl/b2;

    new-instance v1, Lio/appmetrica/analytics/push/impl/x2;

    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/r;->a:Landroid/content/Context;

    iget-object p1, p1, Lio/appmetrica/analytics/push/impl/b2;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lio/appmetrica/analytics/push/impl/x2;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object v1, p0, Lio/appmetrica/analytics/push/impl/r;->e:Lio/appmetrica/analytics/push/impl/x2;

    sget-object p1, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->INSTANCE:Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;

    iget-object p1, p0, Lio/appmetrica/analytics/push/impl/r;->a:Landroid/content/Context;

    invoke-static {p1}, Lio/appmetrica/analytics/push/coreutils/internal/PushServiceFacade;->initPushService(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/appmetrica/analytics/push/impl/r;->c:Z

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AppMetrica isn\'t initialized. Use AppMetrica#activate(android.content.Context, String) method to activate. See more at https://appmetrica.io/docs/mobile-sdk-dg/push/android-initialize.html"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object p0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    const-string p1, "AppMetrica Push SDK has already been initialized."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catch_0
    :cond_3
    sget-object p0, Lio/appmetrica/analytics/push/logger/internal/PublicLogger;->INSTANCE:Lio/appmetrica/analytics/push/logger/internal/PublicLogger;

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Ignore AppMetrica Push SDK initialization from non main process"

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lio/appmetrica/analytics/push/impl/l1;
    .locals 3

    .line 32
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    .line 33
    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->k:Lio/appmetrica/analytics/push/impl/l1;

    if-nez v0, :cond_1

    .line 34
    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->k:Lio/appmetrica/analytics/push/impl/l1;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lio/appmetrica/analytics/push/impl/l1;

    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/v;->p:Landroid/content/Context;

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/push/impl/l1;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->k:Lio/appmetrica/analytics/push/impl/l1;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 38
    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/v;->k:Lio/appmetrica/analytics/push/impl/l1;

    return-object p0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->getInstance()Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;

    move-result-object v0

    new-instance v1, Lio/appmetrica/analytics/push/impl/w;

    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    invoke-virtual {v2}, Lio/appmetrica/analytics/push/impl/v;->c()Lio/appmetrica/analytics/push/impl/L1;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lio/appmetrica/analytics/push/impl/w;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/push/impl/L1;)V

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/push/coreutils/internal/utils/TrackersHub;->registerTracker(Lio/appmetrica/analytics/push/coreutils/internal/utils/Tracker;)V

    sget-object p1, Lio/appmetrica/analytics/push/impl/X1;->b:Lio/appmetrica/analytics/push/impl/X1;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/v;->d()Lio/appmetrica/analytics/push/impl/T0;

    move-result-object p0

    iget-object p1, p1, Lio/appmetrica/analytics/push/impl/X1;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Lio/appmetrica/analytics/push/impl/K1;
    .locals 5

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->n:Lio/appmetrica/analytics/push/impl/K1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->n:Lio/appmetrica/analytics/push/impl/K1;

    if-nez v1, :cond_0

    new-instance v1, Lio/appmetrica/analytics/push/impl/K1;

    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/v;->p:Landroid/content/Context;

    iget-object v3, p0, Lio/appmetrica/analytics/push/impl/v;->q:Lio/appmetrica/analytics/push/impl/r;

    new-instance v4, Lio/appmetrica/analytics/push/impl/P1;

    invoke-direct {v4}, Lio/appmetrica/analytics/push/impl/P1;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lio/appmetrica/analytics/push/impl/K1;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/push/impl/r;Lio/appmetrica/analytics/push/impl/P1;)V

    iput-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->n:Lio/appmetrica/analytics/push/impl/K1;

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
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/v;->n:Lio/appmetrica/analytics/push/impl/K1;

    return-object p0
.end method

.method public final d()Lio/appmetrica/analytics/push/impl/L1;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/v;->c()Lio/appmetrica/analytics/push/impl/L1;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lio/appmetrica/analytics/push/impl/Q1;
    .locals 5

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->m:Lio/appmetrica/analytics/push/impl/Q1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->m:Lio/appmetrica/analytics/push/impl/Q1;

    if-nez v1, :cond_0

    new-instance v1, Lio/appmetrica/analytics/push/impl/Q1;

    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/v;->p:Landroid/content/Context;

    iget-object v3, p0, Lio/appmetrica/analytics/push/impl/v;->q:Lio/appmetrica/analytics/push/impl/r;

    new-instance v4, Lio/appmetrica/analytics/push/impl/P1;

    invoke-direct {v4}, Lio/appmetrica/analytics/push/impl/P1;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lio/appmetrica/analytics/push/impl/Q1;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/push/impl/r;Lio/appmetrica/analytics/push/impl/P1;)V

    iput-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->m:Lio/appmetrica/analytics/push/impl/Q1;

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
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/v;->m:Lio/appmetrica/analytics/push/impl/Q1;

    return-object p0
.end method

.method public final f()Lio/appmetrica/analytics/push/impl/W1;
    .locals 3

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/r;->f:Lio/appmetrica/analytics/push/impl/v;

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/v;->i:Lio/appmetrica/analytics/push/impl/W1;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/appmetrica/analytics/push/impl/v;->c()Lio/appmetrica/analytics/push/impl/L1;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/v;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lio/appmetrica/analytics/push/impl/v;->i:Lio/appmetrica/analytics/push/impl/W1;

    if-nez v2, :cond_0

    new-instance v2, Lio/appmetrica/analytics/push/impl/W1;

    invoke-direct {v2, v0}, Lio/appmetrica/analytics/push/impl/W1;-><init>(Lio/appmetrica/analytics/push/impl/L1;)V

    iput-object v2, p0, Lio/appmetrica/analytics/push/impl/v;->i:Lio/appmetrica/analytics/push/impl/W1;

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/v;->i:Lio/appmetrica/analytics/push/impl/W1;

    return-object p0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/push/impl/r;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lio/appmetrica/analytics/push/impl/r;->c:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
