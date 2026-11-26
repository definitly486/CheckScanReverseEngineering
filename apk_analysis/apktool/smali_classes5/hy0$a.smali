.class public final Lhy0$a;
.super Ldj3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lmw1;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile c:Lh88;


# direct methods
.method public constructor <init>(Lhy0;Lmw1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const p3, -0x7fffffff

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lhy0$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string p1, "delegate"

    invoke-static {p2, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lhy0$a;->a:Lmw1;

    return-void
.end method


# virtual methods
.method public final a()Lmw1;
    .locals 0

    iget-object p0, p0, Lhy0$a;->a:Lmw1;

    return-object p0
.end method

.method public final b(Lra5;Lla5;Lio/grpc/b;[Lio/grpc/c;)Lcm1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lra5<",
            "**>;",
            "Lla5;",
            "Lio/grpc/b;",
            "[",
            "Lio/grpc/c;",
            ")",
            "Lcm1;"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lhy0$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ltz v0, :cond_0

    new-instance p1, Li53;

    iget-object p0, p0, Lhy0$a;->c:Lh88;

    sget-object p2, Ldm1$a;->PROCESSED:Ldm1$a;

    invoke-direct {p1, p0, p2, p4}, Li53;-><init>(Lh88;Ldm1$a;[Lio/grpc/c;)V

    return-object p1

    :cond_0
    iget-object p0, p0, Lhy0$a;->a:Lmw1;

    invoke-interface {p0, p1, p2, p3, p4}, Lem1;->b(Lra5;Lla5;Lio/grpc/b;[Lio/grpc/c;)Lcm1;

    move-result-object p0

    return-object p0
.end method

.method public final e(Lh88;)V
    .locals 2

    const-string v0, "status"

    invoke-static {p1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhy0$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_1

    iput-object p1, p0, Lhy0$a;->c:Lh88;

    iget-object v0, p0, Lhy0$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v0, p0, Lhy0$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Ldj3;->e(Lh88;)V

    return-void

    :cond_1
    :try_start_1
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
