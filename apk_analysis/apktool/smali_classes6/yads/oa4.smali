.class public final Lyads/oa4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lyads/oa4;

.field public static final c:Ljava/lang/Object;


# instance fields
.field public final a:Lfr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/oa4;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfr;

    invoke-direct {v0}, Lfr;-><init>()V

    iput-object v0, p0, Lyads/oa4;->a:Lfr;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 56
    sget-object v0, Lyads/oa4;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object p0, p0, Lyads/oa4;->a:Lfr;

    invoke-virtual {p0}, Lfr;->clear()V

    .line 58
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final a(Lyads/t94;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lyads/u94;->a:Lyads/u94;

    invoke-virtual {v0}, Lyads/u94;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v1, Lyads/na4;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lyads/na4;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lyads/oa4;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lyads/oa4;->a:Lfr;

    invoke-virtual {p2}, Ld1;->size()I

    move-result p2

    const/16 p3, 0x1388

    if-le p2, p3, :cond_1

    iget-object p2, p0, Lyads/oa4;->a:Lfr;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ld1;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lyads/oa4;->a:Lfr;

    invoke-virtual {p0, v1}, Lfr;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1

    throw p0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    sget-object v0, Lyads/oa4;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lyads/oa4;->a:Lfr;

    invoke-static {p0}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
