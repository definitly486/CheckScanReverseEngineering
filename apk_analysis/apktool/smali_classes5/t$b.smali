.class public abstract Lt$b;
.super Lt1$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field public final i:Lg88;

.field public j:Z

.field public k:Ldm1;

.field public l:Lyd2;

.field public m:Z

.field public n:Lt$b$a;

.field public volatile o:Z

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>(ILg88;Lg39;Lio/grpc/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lt1$a;-><init>(ILg88;Lg39;)V

    sget-object p1, Lyd2;->d:Lyd2;

    iput-object p1, p0, Lt$b;->l:Lyd2;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lt$b;->m:Z

    iput-object p2, p0, Lt$b;->i:Lg88;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final g(Lh88;Ldm1$a;Lla5;)V
    .locals 4

    iget-boolean v0, p0, Lt$b;->j:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt$b;->j:Z

    iget-object v1, p0, Lt$b;->i:Lg88;

    iget-object v2, v1, Lg88;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lg88;->a:[Ly14;

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    invoke-virtual {v2, p1}, Ly14;->N(Lh88;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lt1$a;->c:Lg39;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lh88;->f()Z

    :cond_1
    iget-object p0, p0, Lt$b;->k:Ldm1;

    invoke-interface {p0, p1, p2, p3}, Ldm1;->c(Lh88;Ldm1$a;Lla5;)V

    :cond_2
    return-void
.end method

.method public final h(Lla5;)V
    .locals 4

    iget-boolean v0, p0, Lt$b;->p:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Received headers on closed stream"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object v0, p0, Lt$b;->i:Lg88;

    iget-object v0, v0, Lg88;->a:[Ly14;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    check-cast v3, Lio/grpc/c;

    invoke-virtual {v3, p1}, Lio/grpc/c;->W(Lla5;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lvs3;->f:Lla5$b;

    invoke-virtual {p1, v0}, Lla5;->c(Lla5$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v0, Lvs3;->d:Lla5$b;

    invoke-virtual {p1, v0}, Lla5;->c(Lla5$d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lt$b;->l:Lyd2;

    iget-object v1, v1, Lyd2;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyd2$a;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lyd2$a;->a:Lbn1;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    sget-object p1, Lh88;->l:Lh88;

    const-string v1, "Can\'t find decompressor for "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    invoke-virtual {p1}, Lh88;->a()Lio/grpc/StatusRuntimeException;

    move-result-object p1

    check-cast p0, Lkv5$b;

    invoke-virtual {p0, p1}, Lkv5$b;->n(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    sget-object v0, Lbn1$b;->a:Lbn1$b;

    if-eq v1, v0, :cond_3

    iget-object v0, p0, Lt1$a;->a:Lvk2;

    invoke-interface {v0, v1}, Lvk2;->e(Lxd2;)V

    :cond_3
    iget-object p0, p0, Lt$b;->k:Ldm1;

    invoke-interface {p0, p1}, Ldm1;->b(Lla5;)V

    return-void
.end method

.method public final i(Lh88;Ldm1$a;ZLla5;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lt$b;->p:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lt$b;->p:Z

    invoke-virtual {p1}, Lh88;->f()Z

    move-result v1

    iput-boolean v1, p0, Lt$b;->q:Z

    iget-object v1, p0, Lt1$a;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Lt1$a;->g:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lt$b;->m:Z

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    iput-object p3, p0, Lt$b;->n:Lt$b$a;

    invoke-virtual {p0, p1, p2, p4}, Lt$b;->g(Lh88;Ldm1$a;Lla5;)V

    return-void

    :cond_1
    new-instance v0, Lt$b$a;

    invoke-direct {v0, p0, p1, p2, p4}, Lt$b$a;-><init>(Lt$b;Lh88;Ldm1$a;Lla5;)V

    iput-object v0, p0, Lt$b;->n:Lt$b$a;

    iget-object p0, p0, Lt1$a;->a:Lvk2;

    if-eqz p3, :cond_2

    invoke-interface {p0}, Lvk2;->close()V

    return-void

    :cond_2
    invoke-interface {p0}, Lvk2;->n()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final j(Lh88;ZLla5;)V
    .locals 1

    sget-object v0, Ldm1$a;->PROCESSED:Ldm1$a;

    invoke-virtual {p0, p1, v0, p2, p3}, Lt$b;->i(Lh88;Ldm1$a;ZLla5;)V

    return-void
.end method
