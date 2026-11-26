.class public abstract Lqp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqq1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lmq1;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lqp1;->h(Lmq1;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lm13;->d(Ljava/lang/Throwable;)V

    invoke-static {p0}, Ld97;->b(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Actually not, but can\'t pass out an exception otherwise..."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :catch_0
    move-exception p0

    throw p0
.end method

.method public final c(Lqq1;)Lrp1;
    .locals 1

    const-string v0, "next is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lrp1;

    invoke-direct {v0, p0, p1}, Lrp1;-><init>(Lqp1;Lqq1;)V

    return-object v0
.end method

.method public final d(Lmz7;)Lrz7;
    .locals 1

    const-string v0, "next is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lrz7;

    invoke-direct {v0, p1, p0}, Lrz7;-><init>(Lc18;Lqp1;)V

    return-object v0
.end method

.method public final e(Lh6;)Loq1;
    .locals 6

    new-instance v0, Loq1;

    sget-object v2, Lrm3;->d:Lrm3$e;

    sget-object v5, Lrm3;->c:Lrm3$d;

    move-object v3, v2

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Loq1;-><init>(Lqp1;Lqx1;Lqx1;Lh6;Lh6;)V

    return-object v0
.end method

.method public final f(Lhe7;)Llq1;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Llq1;

    invoke-direct {v0, p0, p1}, Llq1;-><init>(Lqp1;Lhe7;)V

    return-object v0
.end method

.method public final g()Lcp2;
    .locals 1

    new-instance v0, Lfx2;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p0, v0}, Lqp1;->b(Lmq1;)V

    return-object v0
.end method

.method public abstract h(Lmq1;)V
.end method

.method public final i(Lhe7;)Lrq1;
    .locals 1

    const-string v0, "scheduler is null"

    invoke-static {p1, v0}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lrq1;

    invoke-direct {v0, p0, p1}, Lrq1;-><init>(Lqp1;Lhe7;)V

    return-object v0
.end method
