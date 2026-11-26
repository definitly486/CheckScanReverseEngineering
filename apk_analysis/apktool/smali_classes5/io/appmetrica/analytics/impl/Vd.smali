.class public final Lio/appmetrica/analytics/impl/Vd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashHandler;


# instance fields
.field public final a:Lnl3;

.field public final b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

.field public final c:Lio/appmetrica/analytics/impl/Yd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Vg;Lnl3;Lio/appmetrica/analytics/impl/ee;Lio/appmetrica/analytics/impl/pb;Ljava/lang/String;Lio/appmetrica/analytics/impl/be;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/appmetrica/analytics/impl/Vg;",
            "Lnl3<",
            "-",
            "Ljava/lang/String;",
            "Lj59;",
            ">;",
            "Lio/appmetrica/analytics/impl/ee;",
            "Lio/appmetrica/analytics/impl/pb;",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/impl/be;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Vd;->a:Lnl3;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p3

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/Fa;->w()Lio/appmetrica/analytics/impl/Ak;

    move-result-object p3

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/Ak;->f()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object p3

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Vd;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    new-instance v0, Lio/appmetrica/analytics/impl/Yd;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lio/appmetrica/analytics/impl/Yd;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Vg;Lio/appmetrica/analytics/impl/ee;Lio/appmetrica/analytics/impl/pb;Lio/appmetrica/analytics/impl/be;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Vd;->c:Lio/appmetrica/analytics/impl/Yd;

    return-void
.end method

.method public static final a(Lio/appmetrica/analytics/impl/Vd;Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;Ljava/io/File;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Vd;->a:Lnl3;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final newCrash(Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;)V
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lio/appmetrica/analytics/impl/J0;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getSource()Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    move-result-object v2

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getHandlerVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getDumpFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getCreationTime()J

    move-result-wide v6

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getMetadata()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/appmetrica/analytics/impl/L0;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/K0;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {v1 .. v8}, Lio/appmetrica/analytics/impl/J0;-><init>(Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLio/appmetrica/analytics/impl/K0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, v1, Lio/appmetrica/analytics/impl/J0;->f:Lio/appmetrica/analytics/impl/K0;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/K0;->a:Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/logger/LoggerStorage;->getOrCreatePublicLogger(Ljava/lang/String;)Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Detected native crash with uuid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lio/appmetrica/analytics/impl/J0;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Vd;->b:Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Vd;->c:Lio/appmetrica/analytics/impl/Yd;

    new-instance v7, Ldc9;

    invoke-direct {v7, p0, p1}, Ldc9;-><init>(Lio/appmetrica/analytics/impl/Vd;Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lio/appmetrica/analytics/impl/Td;

    iget-object p1, v1, Lio/appmetrica/analytics/impl/J0;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;

    iget-object v4, v1, Lio/appmetrica/analytics/impl/J0;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lio/appmetrica/analytics/impl/Td;-><init>(Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashSource;Ljava/lang/String;)V

    new-instance v6, Lio/appmetrica/analytics/impl/Rd;

    iget-object p1, v3, Lio/appmetrica/analytics/impl/Yd;->g:Lio/appmetrica/analytics/impl/Qd;

    invoke-direct {v6, p0, p1}, Lio/appmetrica/analytics/impl/Rd;-><init>(Lio/appmetrica/analytics/impl/Td;Lio/appmetrica/analytics/impl/Qd;)V

    new-instance p0, Lio/appmetrica/analytics/impl/Xd;

    iget-object p1, v3, Lio/appmetrica/analytics/impl/Yd;->d:Lio/appmetrica/analytics/impl/pb;

    iget-object v4, v3, Lio/appmetrica/analytics/impl/Yd;->e:Lio/appmetrica/analytics/impl/be;

    invoke-direct {p0, v1, p1, v4}, Lio/appmetrica/analytics/impl/Xd;-><init>(Lio/appmetrica/analytics/impl/J0;Lio/appmetrica/analytics/impl/pb;Lio/appmetrica/analytics/impl/be;)V

    new-instance v8, Lio/appmetrica/analytics/impl/Od;

    iget-object p1, v3, Lio/appmetrica/analytics/impl/Yd;->b:Lio/appmetrica/analytics/impl/Vg;

    iget-object v4, v1, Lio/appmetrica/analytics/impl/J0;->f:Lio/appmetrica/analytics/impl/K0;

    invoke-direct {v8, p1, v4, p0}, Lio/appmetrica/analytics/impl/Od;-><init>(Lio/appmetrica/analytics/impl/Vg;Lio/appmetrica/analytics/impl/K0;Lio/appmetrica/analytics/impl/Xd;)V

    new-instance v4, Lio/appmetrica/analytics/impl/hg;

    iget-object p0, v3, Lio/appmetrica/analytics/impl/Yd;->f:Lio/appmetrica/analytics/impl/oa;

    iget-object p1, v1, Lio/appmetrica/analytics/impl/J0;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p0, v3, Lio/appmetrica/analytics/impl/Yd;->a:Landroid/content/Context;

    sget-object p1, Lio/appmetrica/analytics/impl/na;->c:Lio/appmetrica/analytics/impl/na;

    if-nez p1, :cond_1

    const-class p1, Lio/appmetrica/analytics/impl/na;

    invoke-static {p1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    sget-object v9, Lio/appmetrica/analytics/impl/na;->c:Lio/appmetrica/analytics/impl/na;

    if-nez v9, :cond_0

    new-instance v9, Lio/appmetrica/analytics/impl/na;

    invoke-direct {v9, p0}, Lio/appmetrica/analytics/impl/na;-><init>(Landroid/content/Context;)V

    sput-object v9, Lio/appmetrica/analytics/impl/na;->c:Lio/appmetrica/analytics/impl/na;

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    :goto_1
    sget-object p0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    goto :goto_3

    :goto_2
    monitor-exit p1

    throw p0

    :cond_1
    :goto_3
    sget-object v9, Lio/appmetrica/analytics/impl/na;->c:Lio/appmetrica/analytics/impl/na;

    if-eqz v9, :cond_2

    iget-object p0, v3, Lio/appmetrica/analytics/impl/Yd;->c:Lio/appmetrica/analytics/impl/ee;

    invoke-interface {p0, v1}, Lio/appmetrica/analytics/impl/ee;->a(Lio/appmetrica/analytics/impl/J0;)Lio/appmetrica/analytics/impl/tl;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lio/appmetrica/analytics/impl/hg;-><init>(Ljava/io/File;Lio/appmetrica/analytics/coreapi/internal/backport/Function;Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;Lio/appmetrica/analytics/impl/na;Lio/appmetrica/analytics/impl/tl;)V

    invoke-interface {v2, v4}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_2
    const-string p0, "INSTANCE"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Vd;->a:Lnl3;

    invoke-virtual {p1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-void
.end method
