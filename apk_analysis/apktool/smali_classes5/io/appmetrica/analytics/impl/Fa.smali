.class public final Lio/appmetrica/analytics/impl/Fa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile I:Lio/appmetrica/analytics/impl/Fa;


# instance fields
.field public final A:Lio/appmetrica/analytics/impl/ae;

.field public final B:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

.field public volatile C:Lio/appmetrica/analytics/impl/Z9;

.field public final D:Lio/appmetrica/analytics/impl/Ck;

.field public final E:Lio/appmetrica/analytics/coreutils/internal/ReferenceHolder;

.field public final F:Lio/appmetrica/analytics/impl/Mk;

.field public final G:Lio/appmetrica/analytics/impl/j;

.field public H:Lio/appmetrica/analytics/impl/Ok;

.field public final a:Landroid/content/Context;

.field public volatile b:Lio/appmetrica/analytics/impl/sg;

.field public volatile c:Lio/appmetrica/analytics/impl/S6;

.field public final d:Lio/appmetrica/analytics/impl/Ak;

.field public volatile e:Lio/appmetrica/analytics/impl/e3;

.field public volatile f:Lio/appmetrica/analytics/impl/zj;

.field public volatile g:Lio/appmetrica/analytics/impl/X;

.field public volatile h:Lio/appmetrica/analytics/impl/p2;

.field public volatile i:Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

.field public volatile j:Lio/appmetrica/analytics/impl/Gf;

.field public volatile k:Lio/appmetrica/analytics/impl/N3;

.field public volatile l:Lio/appmetrica/analytics/impl/mf;

.field public volatile m:Lio/appmetrica/analytics/impl/Jo;

.field public volatile n:Lio/appmetrica/analytics/impl/sj;

.field public volatile o:Lio/appmetrica/analytics/impl/Ub;

.field public p:Lio/appmetrica/analytics/impl/Ql;

.field public final q:Lio/appmetrica/analytics/impl/Ea;

.field public volatile r:Lio/appmetrica/analytics/impl/Nk;

.field public final s:Lio/appmetrica/analytics/impl/ed;

.field public final t:Lio/appmetrica/analytics/impl/gd;

.field public final u:Lio/appmetrica/analytics/impl/xm;

.field public final v:Lio/appmetrica/analytics/impl/uk;

.field public volatile w:Lio/appmetrica/analytics/impl/Zb;

.field public volatile x:Lio/appmetrica/analytics/impl/An;

.field public volatile y:Lio/appmetrica/analytics/impl/Ml;

.field public volatile z:Lio/appmetrica/analytics/impl/Hd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/appmetrica/analytics/impl/Ea;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ea;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->q:Lio/appmetrica/analytics/impl/Ea;

    new-instance v0, Lio/appmetrica/analytics/impl/ed;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ed;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->s:Lio/appmetrica/analytics/impl/ed;

    new-instance v0, Lio/appmetrica/analytics/impl/gd;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/gd;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->t:Lio/appmetrica/analytics/impl/gd;

    new-instance v0, Lio/appmetrica/analytics/impl/xm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/xm;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->u:Lio/appmetrica/analytics/impl/xm;

    new-instance v0, Lio/appmetrica/analytics/impl/uk;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/uk;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->v:Lio/appmetrica/analytics/impl/uk;

    new-instance v0, Lio/appmetrica/analytics/impl/ae;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/ae;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->A:Lio/appmetrica/analytics/impl/ae;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->B:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    new-instance v0, Lio/appmetrica/analytics/impl/Ck;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Ck;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->D:Lio/appmetrica/analytics/impl/Ck;

    new-instance v0, Lio/appmetrica/analytics/coreutils/internal/ReferenceHolder;

    invoke-direct {v0}, Lio/appmetrica/analytics/coreutils/internal/ReferenceHolder;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->E:Lio/appmetrica/analytics/coreutils/internal/ReferenceHolder;

    new-instance v0, Lio/appmetrica/analytics/impl/Mk;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Mk;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->F:Lio/appmetrica/analytics/impl/Mk;

    new-instance v0, Lio/appmetrica/analytics/impl/j;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/j;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->G:Lio/appmetrica/analytics/impl/j;

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    new-instance p1, Lio/appmetrica/analytics/impl/Ak;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/Ak;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Fa;->d:Lio/appmetrica/analytics/impl/Ak;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    if-nez v0, :cond_1

    const-class v0, Lio/appmetrica/analytics/impl/Fa;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    if-nez v1, :cond_0

    new-instance v1, Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/Fa;-><init>(Landroid/content/Context;)V

    sput-object v1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public static k()Lio/appmetrica/analytics/impl/Fa;
    .locals 1

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    return-object v0
.end method


# virtual methods
.method public final A()Lio/appmetrica/analytics/impl/xm;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->u:Lio/appmetrica/analytics/impl/xm;

    return-object p0
.end method

.method public final B()Lio/appmetrica/analytics/impl/Ok;
    .locals 5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->H:Lio/appmetrica/analytics/impl/Ok;

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->H:Lio/appmetrica/analytics/impl/Ok;

    if-nez v0, :cond_2

    new-instance v0, Lio/appmetrica/analytics/impl/Ok;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    const-string v2, "ro.yndx.metrica.db.dir"

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/system/SystemPropertiesHelper;->readSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug.yndx.iaa.db.dir"

    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/system/SystemPropertiesHelper;->readSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    :cond_0
    invoke-static {v2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :goto_0
    const/4 v3, 0x0

    :goto_1
    :try_start_2
    invoke-direct {v0, v3}, Lio/appmetrica/analytics/impl/Ok;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->H:Lio/appmetrica/analytics/impl/Ok;

    :cond_2
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    return-object v0
.end method

.method public final C()Lio/appmetrica/analytics/impl/An;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->x:Lio/appmetrica/analytics/impl/An;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->x:Lio/appmetrica/analytics/impl/An;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/An;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/An;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->x:Lio/appmetrica/analytics/impl/An;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public final declared-synchronized D()Lio/appmetrica/analytics/impl/Jo;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->m:Lio/appmetrica/analytics/impl/Jo;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Jo;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Jo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->m:Lio/appmetrica/analytics/impl/Jo;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->m:Lio/appmetrica/analytics/impl/Jo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final E()V
    .locals 14

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->j:Lio/appmetrica/analytics/impl/Gf;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->j:Lio/appmetrica/analytics/impl/Gf;

    if-nez v0, :cond_0

    const-class v0, Lio/appmetrica/analytics/impl/qf;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/fn;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/gn;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    check-cast v0, Lio/appmetrica/analytics/impl/hn;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/hn;->a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/hn;->a(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object v5

    invoke-interface {v5}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lio/appmetrica/analytics/impl/qf;

    new-instance v3, Lio/appmetrica/analytics/impl/Gf;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    new-instance v6, Lio/appmetrica/analytics/impl/xf;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/xf;-><init>()V

    new-instance v7, Lio/appmetrica/analytics/impl/of;

    invoke-direct {v7, v12}, Lio/appmetrica/analytics/impl/of;-><init>(Lio/appmetrica/analytics/impl/qf;)V

    new-instance v8, Lio/appmetrica/analytics/impl/Ff;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/Ff;-><init>()V

    new-instance v9, Lio/appmetrica/analytics/impl/wf;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    invoke-direct {v9, v0}, Lio/appmetrica/analytics/impl/wf;-><init>(Landroid/content/Context;)V

    new-instance v10, Lio/appmetrica/analytics/impl/Bf;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->y()Lio/appmetrica/analytics/impl/mf;

    move-result-object v0

    invoke-direct {v10, v0}, Lio/appmetrica/analytics/impl/Bf;-><init>(Lio/appmetrica/analytics/impl/mf;)V

    new-instance v11, Lio/appmetrica/analytics/impl/rf;

    invoke-direct {v11}, Lio/appmetrica/analytics/impl/rf;-><init>()V

    const-string v13, "[PreloadInfoStorage]"

    invoke-direct/range {v3 .. v13}, Lio/appmetrica/analytics/impl/Gf;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/d8;Lio/appmetrica/analytics/impl/mo;Lio/appmetrica/analytics/impl/Ym;Lio/appmetrica/analytics/impl/jj;Lio/appmetrica/analytics/impl/hj;Lio/appmetrica/analytics/impl/N6;Lio/appmetrica/analytics/impl/qf;Ljava/lang/String;)V

    iput-object v3, p0, Lio/appmetrica/analytics/impl/Fa;->j:Lio/appmetrica/analytics/impl/Gf;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public final a()Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier;
    .locals 0

    .line 30
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->B:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    invoke-virtual {p0}, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;->getActivationBarrier()Lio/appmetrica/analytics/coreutils/internal/services/WaitForActivationDelayBarrier;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lio/appmetrica/analytics/impl/j;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->G:Lio/appmetrica/analytics/impl/j;

    return-object p0
.end method

.method public final c()Lio/appmetrica/analytics/impl/X;
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->g:Lio/appmetrica/analytics/impl/X;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->g:Lio/appmetrica/analytics/impl/X;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/X;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Fa;->d:Lio/appmetrica/analytics/impl/Ak;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Ak;->g()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v2

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Fa;->u:Lio/appmetrica/analytics/impl/xm;

    invoke-virtual {v3}, Lio/appmetrica/analytics/impl/xm;->a()Lio/appmetrica/analytics/impl/vm;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/X;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;Lio/appmetrica/analytics/impl/vm;)V

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->u:Lio/appmetrica/analytics/impl/xm;

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/xm;->a(Lio/appmetrica/analytics/impl/Am;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->g:Lio/appmetrica/analytics/impl/X;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public final d()Lio/appmetrica/analytics/impl/p2;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->h:Lio/appmetrica/analytics/impl/p2;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->h:Lio/appmetrica/analytics/impl/p2;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/p2;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    invoke-static {}, Lio/appmetrica/analytics/impl/q2;->a()Lio/appmetrica/analytics/appsetid/internal/IAppSetIdRetriever;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/p2;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/appsetid/internal/IAppSetIdRetriever;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->h:Lio/appmetrica/analytics/impl/p2;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public final e()Lio/appmetrica/analytics/impl/v2;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->l()Lio/appmetrica/analytics/impl/Ub;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ub;->b:Lio/appmetrica/analytics/impl/v2;

    return-object p0
.end method

.method public final f()Lio/appmetrica/analytics/impl/N3;
    .locals 14

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->k:Lio/appmetrica/analytics/impl/N3;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->k:Lio/appmetrica/analytics/impl/N3;

    if-nez v0, :cond_0

    const-class v0, Lio/appmetrica/analytics/impl/G3;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/fn;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/gn;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    check-cast v0, Lio/appmetrica/analytics/impl/hn;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/hn;->a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/hn;->a(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object v5

    new-instance v3, Lio/appmetrica/analytics/impl/N3;

    iget-object v4, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    new-instance v6, Lio/appmetrica/analytics/impl/O3;

    invoke-direct {v6}, Lio/appmetrica/analytics/impl/O3;-><init>()V

    new-instance v7, Lio/appmetrica/analytics/impl/B3;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/B3;-><init>()V

    new-instance v8, Lio/appmetrica/analytics/impl/R3;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/R3;-><init>()V

    new-instance v9, Lio/appmetrica/analytics/impl/ij;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    invoke-direct {v9, v0}, Lio/appmetrica/analytics/impl/ij;-><init>(Landroid/content/Context;)V

    new-instance v10, Lio/appmetrica/analytics/impl/P3;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->y()Lio/appmetrica/analytics/impl/mf;

    move-result-object v0

    invoke-direct {v10, v0}, Lio/appmetrica/analytics/impl/P3;-><init>(Lio/appmetrica/analytics/impl/mf;)V

    new-instance v11, Lio/appmetrica/analytics/impl/C3;

    invoke-direct {v11}, Lio/appmetrica/analytics/impl/C3;-><init>()V

    invoke-interface {v5}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->read()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lio/appmetrica/analytics/impl/G3;

    const-string v13, "[ClidsInfoStorage]"

    invoke-direct/range {v3 .. v13}, Lio/appmetrica/analytics/impl/N3;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/d8;Lio/appmetrica/analytics/impl/mo;Lio/appmetrica/analytics/impl/Ym;Lio/appmetrica/analytics/impl/jj;Lio/appmetrica/analytics/impl/hj;Lio/appmetrica/analytics/impl/N6;Lio/appmetrica/analytics/impl/G3;Ljava/lang/String;)V

    iput-object v3, p0, Lio/appmetrica/analytics/impl/Fa;->k:Lio/appmetrica/analytics/impl/N3;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->k:Lio/appmetrica/analytics/impl/N3;

    return-object p0
.end method

.method public final g()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final h()Lio/appmetrica/analytics/impl/S6;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->c:Lio/appmetrica/analytics/impl/S6;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->c:Lio/appmetrica/analytics/impl/S6;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/S6;

    new-instance v1, Lio/appmetrica/analytics/impl/R6;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->y()Lio/appmetrica/analytics/impl/mf;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/R6;-><init>(Lio/appmetrica/analytics/impl/mf;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/S6;-><init>(Lio/appmetrica/analytics/impl/Q6;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->c:Lio/appmetrica/analytics/impl/S6;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->c:Lio/appmetrica/analytics/impl/S6;

    return-object p0
.end method

.method public final i()Lio/appmetrica/analytics/impl/Z9;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->C:Lio/appmetrica/analytics/impl/Z9;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->C:Lio/appmetrica/analytics/impl/Z9;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Z9;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Z9;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->C:Lio/appmetrica/analytics/impl/Z9;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public final j()Lio/appmetrica/analytics/coreapi/internal/system/PermissionExtractor;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->y:Lio/appmetrica/analytics/impl/Ml;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->y:Lio/appmetrica/analytics/impl/Ml;

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v0, Lio/appmetrica/analytics/impl/Ml;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->p()Lio/appmetrica/analytics/impl/Nk;

    move-result-object v1

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Nk;->c:Lio/appmetrica/analytics/modulesapi/internal/common/AskForPermissionStrategyModuleProvider;

    invoke-interface {v1}, Lio/appmetrica/analytics/modulesapi/internal/common/AskForPermissionStrategyModuleProvider;->getAskForPermissionStrategy()Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Ml;-><init>(Lio/appmetrica/analytics/coreapi/internal/permission/PermissionStrategy;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->y:Lio/appmetrica/analytics/impl/Ml;

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l()Lio/appmetrica/analytics/impl/Ub;
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->o:Lio/appmetrica/analytics/impl/Ub;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->o:Lio/appmetrica/analytics/impl/Ub;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Ub;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Fa;->d:Lio/appmetrica/analytics/impl/Ak;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Ak;->a()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v2

    new-instance v3, Lio/appmetrica/analytics/impl/b3;

    invoke-direct {v3, v1, v2}, Lio/appmetrica/analytics/impl/b3;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;)V

    new-instance v1, Lio/appmetrica/analytics/impl/v2;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/v2;-><init>()V

    invoke-direct {v0, v3, v1}, Lio/appmetrica/analytics/impl/Ub;-><init>(Lio/appmetrica/analytics/impl/b3;Lio/appmetrica/analytics/impl/v2;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->o:Lio/appmetrica/analytics/impl/Ub;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public final m()Lio/appmetrica/analytics/impl/Zb;
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->w:Lio/appmetrica/analytics/impl/Zb;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->w:Lio/appmetrica/analytics/impl/Zb;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    const-string v1, "io.appmetrica.analytics.location.internal.LocationClientImpl"

    const-class v2, Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/reflection/ReflectionUtils;->loadAndInstantiateClassWithDefaultConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/locationapi/internal/LocationClient;

    if-nez v1, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/bc;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/bc;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v2, Lio/appmetrica/analytics/impl/ac;

    new-instance v3, Lio/appmetrica/analytics/impl/hc;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/hc;-><init>()V

    invoke-direct {v2, v0, v3, v1}, Lio/appmetrica/analytics/impl/ac;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/ec;Lio/appmetrica/analytics/locationapi/internal/LocationClient;)V

    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->w:Lio/appmetrica/analytics/impl/Zb;

    :cond_1
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-object v0
.end method

.method public final n()Lio/appmetrica/analytics/impl/Zb;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->m()Lio/appmetrica/analytics/impl/Zb;

    move-result-object p0

    return-object p0
.end method

.method public final o()Lio/appmetrica/analytics/impl/gd;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->t:Lio/appmetrica/analytics/impl/gd;

    return-object p0
.end method

.method public final p()Lio/appmetrica/analytics/impl/Nk;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->r:Lio/appmetrica/analytics/impl/Nk;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->r:Lio/appmetrica/analytics/impl/Nk;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Nk;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Nk;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->r:Lio/appmetrica/analytics/impl/Nk;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public final q()Lio/appmetrica/analytics/impl/Hd;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->z:Lio/appmetrica/analytics/impl/Hd;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->z:Lio/appmetrica/analytics/impl/Hd;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Hd;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    new-instance v2, Lio/appmetrica/analytics/impl/zo;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/zo;-><init>()V

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Hd;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Ya;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->z:Lio/appmetrica/analytics/impl/Hd;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public final r()Lio/appmetrica/analytics/impl/ae;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->A:Lio/appmetrica/analytics/impl/ae;

    return-object p0
.end method

.method public final s()Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->i:Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->i:Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->c()Lio/appmetrica/analytics/impl/X;

    move-result-object v1

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->d()Lio/appmetrica/analytics/impl/p2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsProvider;Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetIdProvider;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->i:Lio/appmetrica/analytics/coreapi/internal/identifiers/PlatformIdentifiers;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public final t()Lio/appmetrica/analytics/impl/Gf;
    .locals 0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->E()V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->j:Lio/appmetrica/analytics/impl/Gf;

    return-object p0
.end method

.method public final u()Lio/appmetrica/analytics/impl/sg;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->b:Lio/appmetrica/analytics/impl/sg;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->b:Lio/appmetrica/analytics/impl/sg;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/sg;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    new-instance v2, Lio/appmetrica/analytics/impl/vg;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/vg;-><init>()V

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/vg;->a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/L9;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/sg;-><init>(Lio/appmetrica/analytics/impl/L9;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->b:Lio/appmetrica/analytics/impl/sg;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->b:Lio/appmetrica/analytics/impl/sg;

    return-object p0
.end method

.method public final v()Lio/appmetrica/analytics/impl/sj;
    .locals 2

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->n:Lio/appmetrica/analytics/impl/sj;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->n:Lio/appmetrica/analytics/impl/sj;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/sj;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/sj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->n:Lio/appmetrica/analytics/impl/sj;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public final w()Lio/appmetrica/analytics/impl/Ak;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->d:Lio/appmetrica/analytics/impl/Ak;

    return-object p0
.end method

.method public final x()Lio/appmetrica/analytics/impl/Mk;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->F:Lio/appmetrica/analytics/impl/Mk;

    return-object p0
.end method

.method public final y()Lio/appmetrica/analytics/impl/mf;
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->l:Lio/appmetrica/analytics/impl/mf;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->l:Lio/appmetrica/analytics/impl/mf;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/mf;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->B()Lio/appmetrica/analytics/impl/Ok;

    move-result-object v1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Ok;->d(Landroid/content/Context;)Lio/appmetrica/analytics/impl/Va;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/mf;-><init>(Lio/appmetrica/analytics/impl/Va;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->l:Lio/appmetrica/analytics/impl/mf;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->l:Lio/appmetrica/analytics/impl/mf;

    return-object p0
.end method

.method public final declared-synchronized z()Lio/appmetrica/analytics/impl/Y2;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->p:Lio/appmetrica/analytics/impl/Ql;

    if-nez v0, :cond_0

    new-instance v0, Lio/appmetrica/analytics/impl/Ql;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/Ql;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->p:Lio/appmetrica/analytics/impl/Ql;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->u:Lio/appmetrica/analytics/impl/xm;

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/xm;->a(Lio/appmetrica/analytics/impl/Am;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Fa;->p:Lio/appmetrica/analytics/impl/Ql;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
