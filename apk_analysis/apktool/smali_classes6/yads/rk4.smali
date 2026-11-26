.class public final Lyads/rk4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/jo6;

.field public final b:Lyads/pk4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/ko6;)V
    .locals 0

    iget-object p2, p2, Lyads/ko6;->a:Lyads/eq4;

    invoke-virtual {p2, p1}, Lyads/eq4;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lyads/jo6;

    invoke-direct {p2, p1}, Lyads/jo6;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance p1, Lyads/pk4;

    invoke-direct {p1}, Lyads/pk4;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/rk4;->a:Lyads/jo6;

    iput-object p1, p0, Lyads/rk4;->b:Lyads/pk4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object p0, p0, Lyads/rk4;->a:Lyads/jo6;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lyads/jo6;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyads/jo6;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Lqn1;->t0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lyads/jo6;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/d96;

    iget-object v2, p0, Lyads/jo6;->a:Lyads/zp4;

    invoke-virtual {v2, v1}, Lyads/zp4;->a(Lyads/d96;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    return-void
.end method
