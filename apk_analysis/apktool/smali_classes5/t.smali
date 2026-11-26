.class public abstract Lt;
.super Lt1;
.source "SourceFile"

# interfaces
.implements Lcm1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt$a;,
        Lt$b;
    }
.end annotation


# static fields
.field public static final i:Ljava/util/logging/Logger;


# instance fields
.field public final c:Lg39;

.field public final d:Lwk3;

.field public final e:Z

.field public final f:Z

.field public g:Lla5;

.field public volatile h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lt;->i:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lx65;Lg88;Lg39;Lla5;Lio/grpc/b;Z)V
    .locals 1

    invoke-direct {p0}, Lt1;-><init>()V

    const-string v0, "headers"

    invoke-static {p4, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "transportTracer"

    invoke-static {p3, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lt;->c:Lg39;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v0, Lvs3;->n:Lio/grpc/b$b;

    invoke-virtual {p5, v0}, Lio/grpc/b;->a(Lio/grpc/b$b;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    iput-boolean p3, p0, Lt;->e:Z

    iput-boolean p6, p0, Lt;->f:Z

    if-nez p6, :cond_0

    new-instance p3, Lea5;

    invoke-direct {p3, p0, p1, p2}, Lea5;-><init>(Lt;Lx65;Lg88;)V

    iput-object p3, p0, Lt;->d:Lwk3;

    iput-object p4, p0, Lt;->g:Lla5;

    return-void

    :cond_0
    new-instance p1, Lt$a;

    invoke-direct {p1, p0, p4, p2}, Lt$a;-><init>(Lt;Lla5;Lg88;)V

    iput-object p1, p0, Lt;->d:Lwk3;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    invoke-virtual {p0}, Lt;->q()Lkv5$b;

    move-result-object p0

    iget-object p0, p0, Lt1$a;->a:Lvk2;

    invoke-interface {p0, p1}, Lvk2;->a(I)V

    return-void
.end method

.method public final b(I)V
    .locals 0

    iget-object p0, p0, Lt;->d:Lwk3;

    invoke-interface {p0, p1}, Lwk3;->b(I)V

    return-void
.end method

.method public final f(Lyd2;)V
    .locals 2

    invoke-virtual {p0}, Lt;->q()Lkv5$b;

    move-result-object p0

    iget-object v0, p0, Lt$b;->k:Ldm1;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Already called start"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    const-string v0, "decompressorRegistry"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lt$b;->l:Lyd2;

    return-void
.end method

.method public final g(Lxc2;)V
    .locals 4

    iget-object v0, p0, Lt;->g:Lla5;

    sget-object v1, Lvs3;->c:Lla5$b;

    invoke-virtual {v0, v1}, Lla5;->a(Lla5$d;)V

    iget-object p0, p0, Lt;->g:Lla5;

    invoke-virtual {p1}, Lxc2;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lla5;->e(Lla5$d;Ljava/lang/Object;)V

    return-void
.end method

.method public final h()V
    .locals 2

    invoke-virtual {p0}, Lt;->q()Lkv5$b;

    move-result-object v0

    iget-boolean v0, v0, Lt$b;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lt;->q()Lkv5$b;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lt$b;->o:Z

    iget-object p0, p0, Lt;->d:Lwk3;

    invoke-interface {p0}, Lwk3;->close()V

    :cond_0
    return-void
.end method

.method public final i(Ldm1;)V
    .locals 3

    invoke-virtual {p0}, Lt;->q()Lkv5$b;

    move-result-object v0

    iget-object v1, v0, Lt$b;->k:Ldm1;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Already called setListener"

    invoke-static {v1, v2}, Lo8;->s(ZLjava/lang/Object;)V

    const-string v1, "listener"

    invoke-static {p1, v1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, v0, Lt$b;->k:Ldm1;

    iget-boolean p1, p0, Lt;->f:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lt;->o()Lkv5$a;

    move-result-object p1

    iget-object v0, p0, Lt;->g:Lla5;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lkv5$a;->a(Lla5;[B)V

    iput-object v1, p0, Lt;->g:Lla5;

    :cond_1
    return-void
.end method

.method public final isReady()Z
    .locals 1

    invoke-super {p0}, Lt1;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lt;->h:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j(Lh88;)V
    .locals 3

    invoke-virtual {p1}, Lh88;->f()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Should not cancel with OK status"

    invoke-static {v0, v2}, Lo8;->f(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lt;->h:Z

    invoke-virtual {p0}, Lt;->o()Lkv5$a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lr46;->c()V

    :try_start_0
    iget-object v0, p0, Lkv5$a;->a:Lkv5;

    iget-object v0, v0, Lkv5;->n:Lkv5$b;

    iget-object v0, v0, Lkv5$b;->x:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lkv5$a;->a:Lkv5;

    iget-object p0, p0, Lkv5;->n:Lkv5$b;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lkv5$b;->m(Lh88;ZLla5;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object p0, Lr46;->a:La34;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    :try_start_4
    sget-object p1, Lr46;->a:La34;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final k()Lwk3;
    .locals 0

    iget-object p0, p0, Lt;->d:Lwk3;

    return-object p0
.end method

.method public final l(Ly54;)V
    .locals 1

    check-cast p0, Lkv5;

    sget-object v0, Lio/grpc/f;->a:Lio/grpc/a$b;

    iget-object p0, p0, Lkv5;->p:Lio/grpc/a;

    iget-object p0, p0, Lio/grpc/a;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "remote_addr"

    invoke-virtual {p1, p0, v0}, Ly54;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic n()Lt1$a;
    .locals 0

    invoke-virtual {p0}, Lt;->q()Lkv5$b;

    move-result-object p0

    return-object p0
.end method

.method public abstract o()Lkv5$a;
.end method

.method public final p(Lll9;ZZI)V
    .locals 4

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "null frame before EOS"

    invoke-static {v0, v1}, Lo8;->f(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lt;->o()Lkv5$a;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lr46;->c()V

    if-nez p1, :cond_2

    :try_start_0
    sget-object p1, Lkv5;->r:Lbu0;

    goto :goto_2

    :cond_2
    check-cast p1, Lsv5;

    iget-object p1, p1, Lsv5;->a:Lbu0;

    iget-wide v0, p1, Lbu0;->c:J

    long-to-int v0, v0

    if-lez v0, :cond_3

    iget-object v1, p0, Lkv5$a;->a:Lkv5;

    iget-object v1, v1, Lkv5;->n:Lkv5$b;

    iget-object v2, v1, Lt1$a;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget v3, v1, Lt1$a;->e:I

    add-int/2addr v3, v0

    iput v3, v1, Lt1$a;->e:I

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_3
    :goto_2
    iget-object v0, p0, Lkv5$a;->a:Lkv5;

    iget-object v0, v0, Lkv5;->n:Lkv5$b;

    iget-object v0, v0, Lkv5$b;->x:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, p0, Lkv5$a;->a:Lkv5;

    iget-object v1, v1, Lkv5;->n:Lkv5$b;

    invoke-virtual {v1, p1, p2, p3}, Lkv5$b;->o(Lbu0;ZZ)V

    iget-object p0, p0, Lkv5$a;->a:Lkv5;

    iget-object p0, p0, Lt;->c:Lg39;

    if-nez p4, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lg39;->a:Lpv8;

    invoke-interface {p0}, Lpv8;->b()J

    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    sget-object p0, Lr46;->a:La34;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_6
    sget-object p1, Lr46;->a:La34;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
.end method

.method public abstract q()Lkv5$b;
.end method
