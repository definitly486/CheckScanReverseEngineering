.class public final Lez4$f;
.super Lyi3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lyi3<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final a:Lio/grpc/g;

.field public final b:Ly81;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lra5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lra5<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field public final e:Lky1;

.field public f:Lio/grpc/b;

.field public g:Lrl1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrl1<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/g;Lez4$m$a;Ljava/util/concurrent/Executor;Lra5;Lio/grpc/b;)V
    .locals 0

    invoke-direct {p0}, Lrl1;-><init>()V

    iput-object p1, p0, Lez4$f;->a:Lio/grpc/g;

    iput-object p2, p0, Lez4$f;->b:Ly81;

    iput-object p4, p0, Lez4$f;->d:Lra5;

    iget-object p1, p5, Lio/grpc/b;->b:Ljava/util/concurrent/Executor;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    iput-object p3, p0, Lez4$f;->c:Ljava/util/concurrent/Executor;

    invoke-static {p5}, Lio/grpc/b;->c(Lio/grpc/b;)Lio/grpc/b$a;

    move-result-object p1

    iput-object p3, p1, Lio/grpc/b$a;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lio/grpc/b;

    invoke-direct {p2, p1}, Lio/grpc/b;-><init>(Lio/grpc/b$a;)V

    iput-object p2, p0, Lez4$f;->f:Lio/grpc/b;

    invoke-static {}, Lky1;->b()Lky1;

    move-result-object p1

    iput-object p1, p0, Lez4$f;->e:Lky1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lez4$f;->g:Lrl1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lrl1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final e(Lrl1$a;Lla5;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrl1$a<",
            "TRespT;>;",
            "Lla5;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lez4$f;->f:Lio/grpc/b;

    sget-object v1, Lez4;->h0:Lez4$b;

    const-string v2, "method"

    iget-object v3, p0, Lez4$f;->d:Lra5;

    invoke-static {v3, v2}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "headers"

    invoke-static {p2, v2}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "callOptions"

    invoke-static {v0, v2}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "pickDetailsConsumer"

    invoke-static {v1, v0}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lez4$f;->a:Lio/grpc/g;

    invoke-virtual {v0}, Lio/grpc/g;->a()Lio/grpc/g$a;

    move-result-object v0

    iget-object v1, v0, Lio/grpc/g$a;->a:Lh88;

    invoke-virtual {v1}, Lh88;->f()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lvs3;->g(Lh88;)Lh88;

    move-result-object p2

    new-instance v0, Lhz4;

    invoke-direct {v0, p0, p1, p2}, Lhz4;-><init>(Lez4$f;Lrl1$a;Lh88;)V

    iget-object p1, p0, Lez4$f;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p1, Lez4;->i0:Lez4$d;

    iput-object p1, p0, Lez4$f;->g:Lrl1;

    return-void

    :cond_0
    iget-object v0, v0, Lio/grpc/g$a;->b:Ljava/lang/Object;

    check-cast v0, Lmz4;

    iget-object v1, v0, Lmz4;->b:Ljava/util/Map;

    iget-object v2, v3, Lra5;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmz4$a;

    if-nez v1, :cond_1

    iget-object v1, v3, Lra5;->c:Ljava/lang/String;

    iget-object v2, v0, Lmz4;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmz4$a;

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, v0, Lmz4;->a:Lmz4$a;

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Lez4$f;->f:Lio/grpc/b;

    sget-object v2, Lmz4$a;->g:Lio/grpc/b$b;

    invoke-virtual {v0, v2, v1}, Lio/grpc/b;->d(Lio/grpc/b$b;Ljava/lang/Object;)Lio/grpc/b;

    move-result-object v0

    iput-object v0, p0, Lez4$f;->f:Lio/grpc/b;

    :cond_3
    iget-object v0, p0, Lez4$f;->f:Lio/grpc/b;

    iget-object v1, p0, Lez4$f;->b:Ly81;

    invoke-virtual {v1, v3, v0}, Ly81;->f(Lra5;Lio/grpc/b;)Lrl1;

    move-result-object v0

    iput-object v0, p0, Lez4$f;->g:Lrl1;

    invoke-virtual {v0, p1, p2}, Lrl1;->e(Lrl1$a;Lla5;)V

    return-void
.end method

.method public final f()Lrl1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrl1<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iget-object p0, p0, Lez4$f;->g:Lrl1;

    return-object p0
.end method
