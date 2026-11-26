.class public final Lyads/ko4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tz2;


# instance fields
.field public final a:Lyads/hc4;


# direct methods
.method public constructor <init>(Lyads/hc4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ko4;->a:Lyads/hc4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object p0, p0, Lyads/ko4;->a:Lyads/hc4;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lyads/hc4;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    invoke-virtual {p0}, Lyads/hc4;->b()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lyads/hc4;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/a16;

    invoke-virtual {p0, v2}, Lyads/hc4;->a(Lyads/a16;)Lyads/i66;

    move-result-object v3

    instance-of v4, v3, Lyads/g66;

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    check-cast v3, Lyads/g66;

    invoke-virtual {p0, v2, v3}, Lyads/hc4;->a(Lyads/a16;Lyads/g66;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    instance-of v4, v3, Lyads/f66;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lyads/hc4;->d:Lyads/io4;

    iget-object v5, v2, Lyads/a16;->d:Lyads/dk5;

    check-cast v3, Lyads/f66;

    invoke-interface {v4, v5, v3}, Lyads/io4;->a(Lyads/dk5;Lyads/f66;)V

    new-instance v4, Lyads/lo4;

    invoke-direct {v4, v2, v3}, Lyads/lo4;-><init>(Lyads/a16;Lyads/f66;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lyads/hc4;->d:Lyads/io4;

    invoke-interface {v1, v0}, Lyads/io4;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lyads/hc4;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
