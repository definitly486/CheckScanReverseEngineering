.class public final Lsl1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsl1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lrl1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrl1$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public b:Lh88;

.field public final synthetic c:Lsl1;


# direct methods
.method public constructor <init>(Lsl1;Lrl1$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl1$a<",
            "TRespT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsl1$b;->c:Lsl1;

    const-string p1, "observer"

    invoke-static {p2, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lsl1$b;->a:Lrl1$a;

    return-void
.end method


# virtual methods
.method public final a(Lj98$a;)V
    .locals 2

    iget-object v0, p0, Lsl1$b;->c:Lsl1;

    invoke-static {}, Lr46;->c()V

    :try_start_0
    invoke-static {}, Lr46;->a()V

    invoke-static {}, Lr46;->b()V

    iget-object v0, v0, Lsl1;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lsl1$b$b;

    invoke-direct {v1, p0, p1}, Lsl1$b$b;-><init>(Lsl1$b;Lj98$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lr46;->a:La34;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    sget-object p1, Lr46;->a:La34;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final b(Lla5;)V
    .locals 2

    iget-object v0, p0, Lsl1$b;->c:Lsl1;

    invoke-static {}, Lr46;->c()V

    :try_start_0
    invoke-static {}, Lr46;->a()V

    invoke-static {}, Lr46;->b()V

    iget-object v0, v0, Lsl1;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lsl1$b$a;

    invoke-direct {v1, p0, p1}, Lsl1$b$a;-><init>(Lsl1$b;Lla5;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lr46;->a:La34;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    sget-object p1, Lr46;->a:La34;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final c(Lh88;Ldm1$a;Lla5;)V
    .locals 0

    invoke-static {}, Lr46;->c()V

    :try_start_0
    invoke-static {}, Lr46;->a()V

    invoke-virtual {p0, p1, p3}, Lsl1$b;->e(Lh88;Lla5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lr46;->a:La34;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    sget-object p1, Lr46;->a:La34;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lsl1$b;->c:Lsl1;

    iget-object v1, v0, Lsl1;->a:Lra5;

    iget-object v1, v1, Lra5;->a:Lra5$a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lra5$a;->UNARY:Lra5$a;

    if-eq v1, v2, :cond_1

    sget-object v2, Lra5$a;->SERVER_STREAMING:Lra5$a;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lr46;->c()V

    :try_start_0
    invoke-static {}, Lr46;->a()V

    invoke-static {}, Lr46;->b()V

    iget-object v0, v0, Lsl1;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lsl1$b$c;

    invoke-direct {v1, p0}, Lsl1$b$c;-><init>(Lsl1$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lr46;->a:La34;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    sget-object v0, Lr46;->a:La34;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public final e(Lh88;Lla5;)V
    .locals 6

    iget-object v0, p0, Lsl1$b;->c:Lsl1;

    iget-object v1, v0, Lsl1;->h:Lio/grpc/b;

    iget-object v1, v1, Lio/grpc/b;->a:Lxc2;

    iget-object v0, v0, Lsl1;->e:Lky1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p1, Lh88;->a:Lh88$a;

    sget-object v2, Lh88$a;->CANCELLED:Lh88$a;

    if-ne v0, v2, :cond_2

    if-eqz v1, :cond_2

    iget-boolean v0, v1, Lxc2;->c:Z

    if-nez v0, :cond_1

    iget-wide v2, v1, Lxc2;->b:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, v1, Lxc2;->c:Z

    :cond_1
    iget-object p1, p0, Lsl1$b;->c:Lsl1;

    iget-object p1, p1, Lsl1;->f:Lsl1$a;

    invoke-virtual {p1}, Lsl1$a;->a()Lh88;

    move-result-object p1

    new-instance p2, Lla5;

    invoke-direct {p2}, Lla5;-><init>()V

    :cond_2
    invoke-static {}, Lr46;->b()V

    iget-object v0, p0, Lsl1$b;->c:Lsl1;

    iget-object v0, v0, Lsl1;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Ltl1;

    invoke-direct {v1, p0, p1, p2}, Ltl1;-><init>(Lsl1$b;Lh88;Lla5;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
