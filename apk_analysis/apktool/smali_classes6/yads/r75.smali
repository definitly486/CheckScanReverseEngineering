.class public abstract Lyads/r75;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:Lyads/ki6;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/lang/Object;

.field public g:Lyads/x85;

.field public h:Ljava/lang/Integer;

.field public i:Lyads/e85;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Lyads/am0;

.field public p:Lyads/wv;

.field public q:Ljava/lang/Object;

.field public r:Lyads/ej6;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lyads/x85;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lyads/ki6;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lyads/ki6;

    invoke-direct {v0}, Lyads/ki6;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lyads/r75;->b:Lyads/ki6;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/r75;->f:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/r75;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/r75;->k:Z

    iput-boolean v0, p0, Lyads/r75;->l:Z

    iput-boolean v0, p0, Lyads/r75;->m:Z

    iput-boolean v0, p0, Lyads/r75;->n:Z

    iput-object v1, p0, Lyads/r75;->p:Lyads/wv;

    iput p1, p0, Lyads/r75;->c:I

    iput-object p2, p0, Lyads/r75;->d:Ljava/lang/String;

    iput-object p3, p0, Lyads/r75;->g:Lyads/x85;

    new-instance p1, Lyads/am0;

    invoke-direct {p1}, Lyads/am0;-><init>()V

    iput-object p1, p0, Lyads/r75;->o:Lyads/am0;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_1
    iput v0, p0, Lyads/r75;->e:I

    return-void
.end method


# virtual methods
.method public a(Lyads/hi6;)Lyads/hi6;
    .locals 0

    .line 18
    return-object p1
.end method

.method public abstract a(Lyads/en4;)Lyads/z85;
.end method

.method public a()V
    .locals 2

    .line 21
    iget-object v0, p0, Lyads/r75;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 22
    :try_start_0
    iput-boolean v1, p0, Lyads/r75;->k:Z

    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lyads/r75;->g:Lyads/x85;

    .line 24
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(I)V
    .locals 1

    .line 19
    iget-object v0, p0, Lyads/r75;->i:Lyads/e85;

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0, p0, p1}, Lyads/e85;->a(Lyads/r75;I)V

    :cond_0
    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lyads/ki6;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/r75;->b:Lyads/ki6;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lyads/ki6;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/ej6;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lyads/r75;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    iput-object p1, p0, Lyads/r75;->r:Lyads/ej6;

    .line 27
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Lyads/z85;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lyads/r75;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lyads/r75;->r:Lyads/ej6;

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v1, p0, p1}, Lyads/ej6;->a(Lyads/r75;Lyads/z85;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lyads/r75;->i:Lyads/e85;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lyads/e85;->b:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lyads/e85;->b:Ljava/util/HashSet;

    invoke-virtual {v2, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, v0, Lyads/e85;->j:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_1
    iget-object v1, v0, Lyads/e85;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lyads/e85;->a(Lyads/r75;I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_2
    :goto_1
    sget-boolean v0, Lyads/ki6;->c:Z

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_3

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lyads/p75;

    invoke-direct {v3, p0, p1, v0, v1}, Lyads/p75;-><init>(Lyads/r75;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    iget-object v2, p0, Lyads/r75;->b:Lyads/ki6;

    invoke-virtual {v2, p1, v0, v1}, Lyads/ki6;->a(Ljava/lang/String;J)V

    iget-object p1, p0, Lyads/r75;->b:Lyads/ki6;

    invoke-virtual {p0}, Lyads/r75;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lyads/ki6;->a()V

    :cond_4
    return-void
.end method

.method public b()[B
    .locals 0

    .line 109
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lyads/r75;->g()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lyads/r75;->c:I

    if-eqz p0, :cond_1

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lyads/r75;

    invoke-virtual {p0}, Lyads/r75;->f()I

    move-result v0

    invoke-virtual {p1}, Lyads/r75;->f()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lyads/r75;->h:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object p1, p1, Lyads/r75;->h:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    sub-int/2addr p0, p1

    return p0

    :cond_0
    invoke-static {v1}, Lyads/xn0;->a(I)I

    move-result p0

    invoke-static {v0}, Lyads/xn0;->a(I)I

    move-result p1

    goto :goto_0
.end method

.method public d()Ljava/util/Map;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lyads/r75;->c:I

    return p0
.end method

.method public f()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/r75;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lyads/r75;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lyads/r75;->l:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lyads/r75;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lyads/r75;->k:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lyads/r75;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyads/r75;->r:Lyads/ej6;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lyads/ej6;->b(Lyads/r75;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lyads/r75;->e:I

    invoke-static {v1, v0}, Lc9;->e(ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lyads/r75;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[X] "

    goto :goto_0

    :cond_0
    const-string v2, "[ ] "

    :goto_0
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lyads/r75;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lyads/r75;->f()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const-string v0, "null"

    goto :goto_1

    :cond_1
    const-string v0, "IMMEDIATE"

    goto :goto_1

    :cond_2
    const-string v0, "HIGH"

    goto :goto_1

    :cond_3
    const-string v0, "NORMAL"

    goto :goto_1

    :cond_4
    const-string v0, "LOW"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lyads/r75;->h:Ljava/lang/Integer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
