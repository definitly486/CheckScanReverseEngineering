.class public final Lhv5$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final b:Lpq5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpq5<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lpq5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpq5<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Lg39$a;

.field public final g:Ljavax/net/ssl/SSLSocketFactory;

.field public final h:Lsw1;

.field public final i:I

.field public final j:Z

.field public final k:Lgt;

.field public final l:J

.field public final m:I

.field public final n:I

.field public o:Z


# direct methods
.method public constructor <init>(Lpq5;Lau7;Ljavax/net/ssl/SSLSocketFactory;Lsw1;IZJJIILg39$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhv5$f;->b:Lpq5;

    invoke-interface {p1}, Lpq5;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lhv5$f;->c:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lhv5$f;->d:Lpq5;

    invoke-virtual {p2}, Lau7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lhv5$f;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lhv5$f;->g:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p4, p0, Lhv5$f;->h:Lsw1;

    iput p5, p0, Lhv5$f;->i:I

    iput-boolean p6, p0, Lhv5$f;->j:Z

    new-instance p1, Lgt;

    invoke-direct {p1, p7, p8}, Lgt;-><init>(J)V

    iput-object p1, p0, Lhv5$f;->k:Lgt;

    iput-wide p9, p0, Lhv5$f;->l:J

    iput p11, p0, Lhv5$f;->m:I

    iput p12, p0, Lhv5$f;->n:I

    const-string p1, "transportTracerFactory"

    invoke-static {p13, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p13, p0, Lhv5$f;->f:Lg39$a;

    return-void
.end method


# virtual methods
.method public final A()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    iget-object p0, p0, Lhv5$f;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, Lhv5$f;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhv5$f;->o:Z

    iget-object v0, p0, Lhv5$f;->b:Lpq5;

    iget-object v1, p0, Lhv5$f;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lpq5;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lhv5$f;->d:Lpq5;

    iget-object p0, p0, Lhv5$f;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p0}, Lpq5;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final d0(Ljava/net/SocketAddress;Lfm1$a;Lp94$g;)Lmw1;
    .locals 10

    iget-boolean p3, p0, Lhv5$f;->o:Z

    if-nez p3, :cond_1

    new-instance p3, Lgt$a;

    iget-object v0, p0, Lhv5$f;->k:Lgt;

    iget-object v1, v0, Lgt;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-direct {p3, v0, v1, v2}, Lgt$a;-><init>(Lgt;J)V

    new-instance v9, Liv5;

    invoke-direct {v9, p3}, Liv5;-><init>(Lgt$a;)V

    move-object v5, p1

    check-cast v5, Ljava/net/InetSocketAddress;

    new-instance v3, Llv5;

    iget-object v6, p2, Lfm1$a;->a:Ljava/lang/String;

    iget-object v7, p2, Lfm1$a;->b:Lio/grpc/a;

    iget-object v8, p2, Lfm1$a;->c:Lxy3;

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Llv5;-><init>(Lhv5$f;Ljava/net/InetSocketAddress;Ljava/lang/String;Lio/grpc/a;Lxy3;Liv5;)V

    iget-boolean p0, v4, Lhv5$f;->j:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    iput-boolean p0, v3, Llv5;->K:Z

    iput-wide v1, v3, Llv5;->L:J

    iget-wide p0, v4, Lhv5$f;->l:J

    iput-wide p0, v3, Llv5;->M:J

    :cond_0
    return-object v3

    :cond_1
    const-string p0, "The transport factory is closed."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
