.class public final Lio/appmetrica/analytics/impl/r6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lio/appmetrica/analytics/impl/Xg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/o6;Lio/appmetrica/analytics/impl/pb;Lio/appmetrica/analytics/impl/tl;Ljava/util/concurrent/Executor;Ljava/lang/String;Lio/appmetrica/analytics/impl/y6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/appmetrica/analytics/impl/o6;",
            "Lio/appmetrica/analytics/impl/pb;",
            "Lio/appmetrica/analytics/impl/tl;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Lio/appmetrica/analytics/impl/y6;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lio/appmetrica/analytics/impl/r6;->a:Ljava/util/concurrent/Executor;

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    new-instance p1, Lio/appmetrica/analytics/impl/Xg;

    move-object p6, p7

    invoke-direct/range {p1 .. p6}, Lio/appmetrica/analytics/impl/Xg;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/o6;Lio/appmetrica/analytics/impl/pb;Lio/appmetrica/analytics/impl/tl;Lio/appmetrica/analytics/impl/y6;)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/r6;->b:Lio/appmetrica/analytics/impl/Xg;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/r6;->a:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/r6;->b:Lio/appmetrica/analytics/impl/Xg;

    new-instance v1, Lio/appmetrica/analytics/impl/hg;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Xg;->d:Lio/appmetrica/analytics/impl/Bb;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/Xg;->f:Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Xg;->a:Landroid/content/Context;

    sget-object v4, Lio/appmetrica/analytics/impl/na;->c:Lio/appmetrica/analytics/impl/na;

    if-nez v4, :cond_2

    const-class v4, Lio/appmetrica/analytics/impl/na;

    invoke-static {v4}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    sget-object v6, Lio/appmetrica/analytics/impl/na;->c:Lio/appmetrica/analytics/impl/na;

    if-nez v6, :cond_1

    new-instance v6, Lio/appmetrica/analytics/impl/na;

    invoke-direct {v6, v2}, Lio/appmetrica/analytics/impl/na;-><init>(Landroid/content/Context;)V

    sput-object v6, Lio/appmetrica/analytics/impl/na;->c:Lio/appmetrica/analytics/impl/na;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    goto :goto_2

    :goto_1
    monitor-exit v4

    throw p0

    :cond_2
    :goto_2
    sget-object v6, Lio/appmetrica/analytics/impl/na;->c:Lio/appmetrica/analytics/impl/na;

    if-eqz v6, :cond_3

    iget-object v7, p0, Lio/appmetrica/analytics/impl/Xg;->b:Lio/appmetrica/analytics/impl/tl;

    move-object v4, v3

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lio/appmetrica/analytics/impl/hg;-><init>(Ljava/io/File;Lio/appmetrica/analytics/coreapi/internal/backport/Function;Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;Lio/appmetrica/analytics/coreapi/internal/backport/Consumer;Lio/appmetrica/analytics/impl/na;Lio/appmetrica/analytics/impl/tl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    const-string p0, "INSTANCE"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic consume(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/r6;->a(Ljava/io/File;)V

    return-void
.end method
