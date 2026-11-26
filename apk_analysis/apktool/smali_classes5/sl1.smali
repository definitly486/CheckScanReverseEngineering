.class public final Lsl1;
.super Lrl1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsl1$b;,
        Lsl1$a;,
        Lsl1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lrl1<",
        "TReqT;TRespT;>;"
    }
.end annotation


# static fields
.field public static final o:Ljava/util/logging/Logger;

.field public static final p:D


# instance fields
.field public final a:Lra5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lra5<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Z

.field public final d:Lpy0;

.field public final e:Lky1;

.field public f:Lsl1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsl1<",
            "TReqT;TRespT;>.a;"
        }
    .end annotation
.end field

.field public final g:Z

.field public h:Lio/grpc/b;

.field public i:Lcm1;

.field public j:Z

.field public k:Z

.field public final l:Lsl1$c;

.field public final m:Ljava/util/concurrent/ScheduledExecutorService;

.field public n:Lyd2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lsl1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lsl1;->o:Ljava/util/logging/Logger;

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    sput-wide v0, Lsl1;->p:D

    return-void
.end method

.method public constructor <init>(Lra5;Ljava/util/concurrent/Executor;Lio/grpc/b;Lsl1$c;Ljava/util/concurrent/ScheduledExecutorService;Lpy0;)V
    .locals 3

    invoke-direct {p0}, Lrl1;-><init>()V

    sget-object v0, Lyd2;->d:Lyd2;

    iput-object v0, p0, Lsl1;->n:Lyd2;

    sget-object v0, Lru1;->b:Lru1;

    iput-object p1, p0, Lsl1;->a:Lra5;

    iget-object v0, p1, Lra5;->b:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    sget-object v0, Lr46;->a:La34;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljn2;->INSTANCE:Ljn2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    new-instance p2, Lyp7;

    invoke-direct {p2}, Lyp7;-><init>()V

    iput-object p2, p0, Lsl1;->b:Ljava/util/concurrent/Executor;

    iput-boolean v2, p0, Lsl1;->c:Z

    goto :goto_0

    :cond_0
    new-instance v0, Loq7;

    invoke-direct {v0, p2}, Loq7;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lsl1;->b:Ljava/util/concurrent/Executor;

    iput-boolean v1, p0, Lsl1;->c:Z

    :goto_0
    iput-object p6, p0, Lsl1;->d:Lpy0;

    invoke-static {}, Lky1;->b()Lky1;

    move-result-object p2

    iput-object p2, p0, Lsl1;->e:Lky1;

    iget-object p1, p1, Lra5;->a:Lra5$a;

    sget-object p2, Lra5$a;->UNARY:Lra5$a;

    if-eq p1, p2, :cond_1

    sget-object p2, Lra5$a;->SERVER_STREAMING:Lra5$a;

    if-ne p1, p2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lsl1;->g:Z

    iput-object p3, p0, Lsl1;->h:Lio/grpc/b;

    iput-object p4, p0, Lsl1;->l:Lsl1$c;

    iput-object p5, p0, Lsl1;->m:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {}, Lr46;->c()V

    :try_start_0
    invoke-static {}, Lr46;->a()V

    invoke-virtual {p0, p1, p2}, Lsl1;->f(Ljava/lang/String;Ljava/lang/Throwable;)V
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

.method public final b()V
    .locals 3

    invoke-static {}, Lr46;->c()V

    :try_start_0
    invoke-static {}, Lr46;->a()V

    iget-object v0, p0, Lsl1;->i:Lcm1;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v0, v2}, Lo8;->s(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lsl1;->j:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    invoke-static {v0, v2}, Lo8;->s(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lsl1;->k:Z

    xor-int/2addr v0, v1

    const-string v2, "call already half-closed"

    invoke-static {v0, v2}, Lo8;->s(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lsl1;->k:Z

    iget-object p0, p0, Lsl1;->i:Lcm1;

    invoke-interface {p0}, Lcm1;->h()V
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

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lr46;->c()V

    :try_start_0
    invoke-static {}, Lr46;->a()V

    iget-object v0, p0, Lsl1;->i:Lcm1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not started"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iget-object p0, p0, Lsl1;->i:Lcm1;

    invoke-interface {p0}, Le98;->m()V
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

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    invoke-static {}, Lr46;->c()V

    :try_start_0
    invoke-static {}, Lr46;->a()V

    invoke-virtual {p0, p1}, Lsl1;->g(Ljava/lang/Object;)V
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

.method public final e(Lrl1$a;Lla5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl1$a<",
            "TRespT;>;",
            "Lla5;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lr46;->c()V

    :try_start_0
    invoke-static {}, Lr46;->a()V

    invoke-virtual {p0, p1, p2}, Lsl1;->h(Lrl1$a;Lla5;)V
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

.method public final f(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string v0, "Cancelled without a message or cause"

    invoke-direct {p2, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Cancelling without a message or cause is suboptimal"

    sget-object v2, Lsl1;->o:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-boolean v0, p0, Lsl1;->j:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsl1;->j:Z

    :try_start_0
    iget-object v0, p0, Lsl1;->i:Lcm1;

    if-eqz v0, :cond_4

    sget-object v0, Lh88;->f:Lh88;

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    const-string p1, "Call cancelled without message"

    invoke-virtual {v0, p1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p1

    :cond_3
    iget-object p2, p0, Lsl1;->i:Lcm1;

    invoke-interface {p2, p1}, Lcm1;->j(Lh88;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iget-object p0, p0, Lsl1;->f:Lsl1$a;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lsl1$a;->b()V

    :cond_5
    :goto_1
    return-void

    :goto_2
    iget-object p0, p0, Lsl1;->f:Lsl1$a;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lsl1$a;->b()V

    :cond_6
    throw p1
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    iget-object v0, p0, Lsl1;->i:Lcm1;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Not started"

    invoke-static {v0, v2}, Lo8;->s(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lsl1;->j:Z

    xor-int/2addr v0, v1

    const-string v2, "call was cancelled"

    invoke-static {v0, v2}, Lo8;->s(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lsl1;->k:Z

    xor-int/2addr v0, v1

    const-string v1, "call was half-closed"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lsl1;->i:Lcm1;

    instance-of v1, v0, Lk67;

    if-eqz v1, :cond_1

    check-cast v0, Lk67;

    invoke-virtual {v0, p1}, Lk67;->x(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lsl1;->a:Lra5;

    iget-object v1, v1, Lra5;->d:Lns6$a;

    invoke-virtual {v1, p1}, Lns6$a;->b(Ljava/lang/Object;)Lms6;

    move-result-object p1

    invoke-interface {v0, p1}, Le98;->d(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-boolean p1, p0, Lsl1;->g:Z

    if-nez p1, :cond_2

    iget-object p0, p0, Lsl1;->i:Lcm1;

    invoke-interface {p0}, Le98;->flush()V

    :cond_2
    return-void

    :goto_2
    iget-object p0, p0, Lsl1;->i:Lcm1;

    sget-object v0, Lh88;->f:Lh88;

    const-string v1, "Client sendMessage() failed with Error"

    invoke-virtual {v0, v1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v0

    invoke-interface {p0, v0}, Lcm1;->j(Lh88;)V

    throw p1

    :goto_3
    iget-object p0, p0, Lsl1;->i:Lcm1;

    sget-object v0, Lh88;->f:Lh88;

    invoke-virtual {v0, p1}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p1

    const-string v0, "Failed to stream message"

    invoke-virtual {p1, v0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    invoke-interface {p0, p1}, Lcm1;->j(Lh88;)V

    return-void
.end method

.method public final h(Lrl1$a;Lla5;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl1$a<",
            "TRespT;>;",
            "Lla5;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    sget-object v10, Lbn1$b;->a:Lbn1$b;

    iget-object v2, v0, Lsl1;->i:Lcm1;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v6, "Already started"

    invoke-static {v2, v6}, Lo8;->s(ZLjava/lang/Object;)V

    iget-boolean v2, v0, Lsl1;->j:Z

    xor-int/2addr v2, v3

    const-string v6, "call was cancelled"

    invoke-static {v2, v6}, Lo8;->s(ZLjava/lang/Object;)V

    const-string v2, "observer"

    invoke-static {v1, v2}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "headers"

    invoke-static {v5, v2}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v0, Lsl1;->e:Lky1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lsl1;->h:Lio/grpc/b;

    sget-object v6, Lmz4$a;->g:Lio/grpc/b$b;

    invoke-virtual {v2, v6}, Lio/grpc/b;->a(Lio/grpc/b$b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmz4$a;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    if-nez v2, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v7, v2, Lmz4$a;->d:Ljava/lang/Integer;

    iget-object v8, v2, Lmz4$a;->c:Ljava/lang/Integer;

    iget-object v9, v2, Lmz4$a;->a:Ljava/lang/Long;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-string v9, "units"

    invoke-static {v11, v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v9, Lxc2;

    invoke-direct {v9, v12, v13}, Lxc2;-><init>(J)V

    iget-object v12, v0, Lsl1;->h:Lio/grpc/b;

    iget-object v12, v12, Lio/grpc/b;->a:Lxc2;

    if-eqz v12, :cond_2

    iget-wide v13, v9, Lxc2;->b:J

    iget-wide v3, v12, Lxc2;->b:J

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v3

    if-gez v3, :cond_3

    :cond_2
    iget-object v3, v0, Lsl1;->h:Lio/grpc/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lio/grpc/b;->c(Lio/grpc/b;)Lio/grpc/b$a;

    move-result-object v3

    iput-object v9, v3, Lio/grpc/b$a;->a:Lxc2;

    new-instance v4, Lio/grpc/b;

    invoke-direct {v4, v3}, Lio/grpc/b;-><init>(Lio/grpc/b$a;)V

    iput-object v4, v0, Lsl1;->h:Lio/grpc/b;

    :cond_3
    iget-object v2, v2, Lmz4$a;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v0, Lsl1;->h:Lio/grpc/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_4

    invoke-static {v3}, Lio/grpc/b;->c(Lio/grpc/b;)Lio/grpc/b$a;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v3, v2, Lio/grpc/b$a;->e:Ljava/lang/Boolean;

    new-instance v3, Lio/grpc/b;

    invoke-direct {v3, v2}, Lio/grpc/b;-><init>(Lio/grpc/b$a;)V

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lio/grpc/b;->c(Lio/grpc/b;)Lio/grpc/b$a;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v3, v2, Lio/grpc/b$a;->e:Ljava/lang/Boolean;

    new-instance v3, Lio/grpc/b;

    invoke-direct {v3, v2}, Lio/grpc/b;-><init>(Lio/grpc/b$a;)V

    :goto_1
    iput-object v3, v0, Lsl1;->h:Lio/grpc/b;

    :cond_5
    const-string v2, "invalid maxsize %s"

    if-eqz v8, :cond_9

    iget-object v3, v0, Lsl1;->h:Lio/grpc/b;

    iget-object v4, v3, Lio/grpc/b;->f:Ljava/lang/Integer;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ltz v4, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_2
    invoke-static {v4, v2, v8}, Lo8;->b(ILjava/lang/String;Z)V

    invoke-static {v3}, Lio/grpc/b;->c(Lio/grpc/b;)Lio/grpc/b$a;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lio/grpc/b$a;->f:Ljava/lang/Integer;

    new-instance v4, Lio/grpc/b;

    invoke-direct {v4, v3}, Lio/grpc/b;-><init>(Lio/grpc/b$a;)V

    iput-object v4, v0, Lsl1;->h:Lio/grpc/b;

    goto :goto_4

    :cond_7
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_8

    const/4 v9, 0x1

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    :goto_3
    invoke-static {v4, v2, v9}, Lo8;->b(ILjava/lang/String;Z)V

    invoke-static {v3}, Lio/grpc/b;->c(Lio/grpc/b;)Lio/grpc/b$a;

    move-result-object v3

    iput-object v8, v3, Lio/grpc/b$a;->f:Ljava/lang/Integer;

    new-instance v4, Lio/grpc/b;

    invoke-direct {v4, v3}, Lio/grpc/b;-><init>(Lio/grpc/b$a;)V

    iput-object v4, v0, Lsl1;->h:Lio/grpc/b;

    :cond_9
    :goto_4
    if-eqz v7, :cond_d

    iget-object v3, v0, Lsl1;->h:Lio/grpc/b;

    iget-object v4, v3, Lio/grpc/b;->g:Ljava/lang/Integer;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ltz v4, :cond_a

    const/4 v7, 0x1

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    :goto_5
    invoke-static {v4, v2, v7}, Lo8;->b(ILjava/lang/String;Z)V

    invoke-static {v3}, Lio/grpc/b;->c(Lio/grpc/b;)Lio/grpc/b$a;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lio/grpc/b$a;->g:Ljava/lang/Integer;

    new-instance v3, Lio/grpc/b;

    invoke-direct {v3, v2}, Lio/grpc/b;-><init>(Lio/grpc/b$a;)V

    iput-object v3, v0, Lsl1;->h:Lio/grpc/b;

    goto :goto_7

    :cond_b
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_c

    const/4 v8, 0x1

    goto :goto_6

    :cond_c
    const/4 v8, 0x0

    :goto_6
    invoke-static {v4, v2, v8}, Lo8;->b(ILjava/lang/String;Z)V

    invoke-static {v3}, Lio/grpc/b;->c(Lio/grpc/b;)Lio/grpc/b$a;

    move-result-object v2

    iput-object v7, v2, Lio/grpc/b$a;->g:Ljava/lang/Integer;

    new-instance v3, Lio/grpc/b;

    invoke-direct {v3, v2}, Lio/grpc/b;-><init>(Lio/grpc/b$a;)V

    iput-object v3, v0, Lsl1;->h:Lio/grpc/b;

    :cond_d
    :goto_7
    iget-object v2, v0, Lsl1;->h:Lio/grpc/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lsl1;->n:Lyd2;

    sget-object v3, Lvs3;->h:Lla5$b;

    invoke-virtual {v5, v3}, Lla5;->a(Lla5$d;)V

    sget-object v3, Lvs3;->d:Lla5$b;

    invoke-virtual {v5, v3}, Lla5;->a(Lla5$d;)V

    sget-object v3, Lvs3;->e:Lla5$f;

    invoke-virtual {v5, v3}, Lla5;->a(Lla5$d;)V

    iget-object v2, v2, Lyd2;->b:[B

    array-length v4, v2

    if-eqz v4, :cond_e

    invoke-virtual {v5, v3, v2}, Lla5;->e(Lla5$d;Ljava/lang/Object;)V

    :cond_e
    sget-object v2, Lvs3;->f:Lla5$b;

    invoke-virtual {v5, v2}, Lla5;->a(Lla5$d;)V

    sget-object v2, Lvs3;->g:Lla5$f;

    invoke-virtual {v5, v2}, Lla5;->a(Lla5$d;)V

    iget-object v2, v0, Lsl1;->h:Lio/grpc/b;

    iget-object v2, v2, Lio/grpc/b;->a:Lxc2;

    iget-object v3, v0, Lsl1;->e:Lky1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    if-nez v2, :cond_f

    move-object v12, v3

    goto :goto_8

    :cond_f
    move-object v12, v2

    :goto_8
    if-eqz v12, :cond_10

    iget-object v2, v0, Lsl1;->e:Lky1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12, v3}, Lxc2;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v15, 0x1

    goto :goto_9

    :cond_10
    const/4 v15, 0x0

    :goto_9
    new-instance v2, Lsl1$a;

    invoke-direct {v2, v0, v12, v15}, Lsl1$a;-><init>(Lsl1;Lxc2;Z)V

    iput-object v2, v0, Lsl1;->f:Lsl1$a;

    if-eqz v12, :cond_13

    iget-wide v7, v2, Lsl1$a;->d:J

    const-wide/16 v13, 0x0

    cmp-long v2, v7, v13

    if-gtz v2, :cond_13

    iget-object v2, v0, Lsl1;->h:Lio/grpc/b;

    const/4 v3, 0x0

    invoke-static {v2, v5, v3, v3, v3}, Lvs3;->c(Lio/grpc/b;Lla5;IZZ)[Lio/grpc/c;

    move-result-object v2

    if-eqz v15, :cond_11

    const-string v3, "Context"

    goto :goto_a

    :cond_11
    const-string v3, "CallOptions"

    :goto_a
    iget-object v4, v0, Lsl1;->h:Lio/grpc/b;

    sget-object v5, Lio/grpc/c;->o:Lio/grpc/b$b;

    invoke-virtual {v4, v5}, Lio/grpc/b;->a(Lio/grpc/b$b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iget-object v5, v0, Lsl1;->f:Lsl1$a;

    iget-wide v5, v5, Lsl1$a;->d:J

    long-to-double v5, v5

    sget-wide v7, Lsl1;->p:D

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    if-nez v4, :cond_12

    const-wide/16 v6, 0x0

    goto :goto_b

    :cond_12
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    long-to-double v13, v13

    div-double v6, v13, v7

    :goto_b
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v3, v5, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ClientCall started after %s deadline was exceeded %.9f seconds ago. Name resolution delay %.9f seconds."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Li53;

    sget-object v5, Lh88;->h:Lh88;

    invoke-virtual {v5, v3}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object v3

    sget-object v5, Ldm1$a;->PROCESSED:Ldm1$a;

    invoke-direct {v4, v3, v5, v2}, Li53;-><init>(Lh88;Ldm1$a;[Lio/grpc/c;)V

    iput-object v4, v0, Lsl1;->i:Lcm1;

    goto :goto_11

    :cond_13
    iget-object v2, v0, Lsl1;->l:Lsl1$c;

    iget-object v4, v0, Lsl1;->a:Lra5;

    iget-object v7, v0, Lsl1;->h:Lio/grpc/b;

    iget-object v9, v0, Lsl1;->e:Lky1;

    check-cast v2, Lez4$e;

    iget-object v8, v2, Lez4$e;->b:Lez4;

    iget-boolean v13, v8, Lez4;->W:Z

    if-nez v13, :cond_14

    const/4 v13, 0x0

    invoke-static {v7, v5, v13, v13, v13}, Lvs3;->c(Lio/grpc/b;Lla5;IZZ)[Lio/grpc/c;

    move-result-object v2

    invoke-virtual {v9}, Lky1;->a()Lky1;

    move-result-object v3

    :try_start_0
    iget-object v6, v8, Lez4;->D:Lel2;

    invoke-virtual {v6, v4, v5, v7, v2}, Lel2;->b(Lra5;Lla5;Lio/grpc/b;[Lio/grpc/c;)Lcm1;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v9, v3}, Lky1;->c(Lky1;)V

    :goto_c
    move-object v4, v2

    goto :goto_10

    :catchall_0
    move-exception v0

    invoke-virtual {v9, v3}, Lky1;->c(Lky1;)V

    throw v0

    :cond_14
    invoke-virtual {v7, v6}, Lio/grpc/b;->a(Lio/grpc/b$b;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmz4$a;

    if-nez v6, :cond_15

    move-object v8, v3

    goto :goto_d

    :cond_15
    iget-object v8, v6, Lmz4$a;->e:Lq67;

    :goto_d
    if-nez v6, :cond_16

    :goto_e
    move-object v6, v2

    goto :goto_f

    :cond_16
    iget-object v3, v6, Lmz4$a;->f:Lsv3;

    goto :goto_e

    :goto_f
    new-instance v2, Lgz4;

    move-object/from16 v16, v8

    move-object v8, v3

    move-object v3, v6

    move-object v6, v7

    move-object/from16 v7, v16

    invoke-direct/range {v2 .. v9}, Lgz4;-><init>(Lez4$e;Lra5;Lla5;Lio/grpc/b;Lq67;Lsv3;Lky1;)V

    goto :goto_c

    :goto_10
    iput-object v4, v0, Lsl1;->i:Lcm1;

    :goto_11
    iget-boolean v2, v0, Lsl1;->c:Z

    if-eqz v2, :cond_17

    invoke-interface {v4}, Le98;->e()V

    :cond_17
    iget-object v2, v0, Lsl1;->h:Lio/grpc/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lsl1;->h:Lio/grpc/b;

    iget-object v2, v2, Lio/grpc/b;->f:Ljava/lang/Integer;

    if-eqz v2, :cond_18

    iget-object v3, v0, Lsl1;->i:Lcm1;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2}, Lcm1;->a(I)V

    :cond_18
    iget-object v2, v0, Lsl1;->h:Lio/grpc/b;

    iget-object v2, v2, Lio/grpc/b;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_19

    iget-object v3, v0, Lsl1;->i:Lcm1;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v2}, Lcm1;->b(I)V

    :cond_19
    if-eqz v12, :cond_1a

    iget-object v2, v0, Lsl1;->i:Lcm1;

    invoke-interface {v2, v12}, Lcm1;->g(Lxc2;)V

    :cond_1a
    iget-object v2, v0, Lsl1;->i:Lcm1;

    invoke-interface {v2, v10}, Le98;->c(Lqu1;)V

    iget-object v2, v0, Lsl1;->i:Lcm1;

    iget-object v3, v0, Lsl1;->n:Lyd2;

    invoke-interface {v2, v3}, Lcm1;->f(Lyd2;)V

    iget-object v2, v0, Lsl1;->d:Lpy0;

    iget-object v3, v2, Lpy0;->b:Ltv4;

    invoke-interface {v3}, Ltv4;->a()V

    iget-object v2, v2, Lpy0;->a:Lpv8;

    invoke-interface {v2}, Lpv8;->b()J

    iget-object v2, v0, Lsl1;->i:Lcm1;

    new-instance v3, Lsl1$b;

    invoke-direct {v3, v0, v1}, Lsl1$b;-><init>(Lsl1;Lrl1$a;)V

    invoke-interface {v2, v3}, Lcm1;->i(Ldm1;)V

    iget-object v0, v0, Lsl1;->f:Lsl1$a;

    iget-boolean v1, v0, Lsl1$a;->f:Z

    if-eqz v1, :cond_1b

    goto :goto_12

    :cond_1b
    iget-boolean v1, v0, Lsl1$a;->c:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, v0, Lsl1$a;->b:Z

    if-nez v1, :cond_1c

    iget-object v1, v0, Lsl1$a;->g:Lsl1;

    iget-object v1, v1, Lsl1;->m:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_1c

    new-instance v2, Lvu4;

    invoke-direct {v2, v0}, Lvu4;-><init>(Ljava/lang/Runnable;)V

    iget-wide v3, v0, Lsl1$a;->d:J

    invoke-interface {v1, v2, v3, v4, v11}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v0, Lsl1$a;->e:Ljava/util/concurrent/ScheduledFuture;

    :cond_1c
    iget-object v1, v0, Lsl1$a;->g:Lsl1;

    iget-object v1, v1, Lsl1;->e:Lky1;

    sget-object v2, Ljn2;->INSTANCE:Ljn2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lky1;->a:Ljava/util/logging/Logger;

    if-eqz v2, :cond_1e

    iget-boolean v1, v0, Lsl1$a;->f:Z

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Lsl1$a;->b()V

    :cond_1d
    :goto_12
    return-void

    :cond_1e
    const-string v0, "executor"

    invoke-static {v0}, Lo2;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "method"

    iget-object p0, p0, Lsl1;->a:Lra5;

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
