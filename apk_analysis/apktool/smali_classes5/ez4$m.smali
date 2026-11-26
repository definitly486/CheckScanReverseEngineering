.class public final Lez4$m;
.super Ly81;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lez4$m$e;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/g;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Lez4$m$a;

.field public final synthetic d:Lez4;


# direct methods
.method public constructor <init>(Lez4;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lez4$m;->d:Lez4;

    invoke-direct {p0}, Ly81;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lez4;->g0:Lez4$a;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lez4$m;->a:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Lez4$m$a;

    invoke-direct {p1, p0}, Lez4$m$a;-><init>(Lez4$m;)V

    iput-object p1, p0, Lez4$m;->c:Lez4$m$a;

    const-string p1, "authority"

    invoke-static {p2, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lez4$m;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lez4$m;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final f(Lra5;Lio/grpc/b;)Lrl1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lra5<",
            "TReqT;TRespT;>;",
            "Lio/grpc/b;",
            ")",
            "Lrl1<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iget-object v0, p0, Lez4$m;->d:Lez4;

    iget-object v1, v0, Lez4;->n:Lch8;

    iget-object v2, p0, Lez4$m;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lez4;->g0:Lez4$a;

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, p1, p2}, Lez4$m;->g(Lra5;Lio/grpc/b;)Lrl1;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v3, Lez4$m$b;

    invoke-direct {v3, p0}, Lez4$m$b;-><init>(Lez4$m;)V

    invoke-virtual {v1, v3}, Lch8;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, p1, p2}, Lez4$m;->g(Lra5;Lio/grpc/b;)Lrl1;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, v0, Lez4;->F:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lez4$m$c;

    invoke-direct {p0}, Lrl1;-><init>()V

    return-object p0

    :cond_2
    invoke-static {}, Lky1;->b()Lky1;

    move-result-object v0

    new-instance v2, Lez4$m$e;

    invoke-direct {v2, p0, v0, p1, p2}, Lez4$m$e;-><init>(Lez4$m;Lky1;Lra5;Lio/grpc/b;)V

    new-instance p1, Lez4$m$d;

    invoke-direct {p1, p0, v2}, Lez4$m$d;-><init>(Lez4$m;Lez4$m$e;)V

    invoke-virtual {v1, p1}, Lch8;->execute(Ljava/lang/Runnable;)V

    return-object v2
.end method

.method public final g(Lra5;Lio/grpc/b;)Lrl1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lra5<",
            "TReqT;TRespT;>;",
            "Lio/grpc/b;",
            ")",
            "Lrl1<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    iget-object v0, p0, Lez4$m;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/grpc/g;

    iget-object v3, p0, Lez4$m;->c:Lez4$m$a;

    if-nez v2, :cond_0

    invoke-virtual {v3, p1, p2}, Lez4$m$a;->f(Lra5;Lio/grpc/b;)Lrl1;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, v2, Lmz4$b;

    if-eqz v0, :cond_4

    check-cast v2, Lmz4$b;

    iget-object p0, v2, Lmz4$b;->b:Lmz4;

    iget-object v0, p0, Lmz4;->b:Ljava/util/Map;

    iget-object v1, p1, Lra5;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmz4$a;

    if-nez v0, :cond_1

    iget-object v0, p1, Lra5;->c:Ljava/lang/String;

    iget-object v1, p0, Lmz4;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmz4$a;

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lmz4;->a:Lmz4$a;

    :cond_2
    if-eqz v0, :cond_3

    sget-object p0, Lmz4$a;->g:Lio/grpc/b$b;

    invoke-virtual {p2, p0, v0}, Lio/grpc/b;->d(Lio/grpc/b$b;Ljava/lang/Object;)Lio/grpc/b;

    move-result-object p2

    :cond_3
    invoke-virtual {v3, p1, p2}, Lez4$m$a;->f(Lra5;Lio/grpc/b;)Lrl1;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v1, Lez4$f;

    iget-object p0, p0, Lez4$m;->d:Lez4;

    iget-object v4, p0, Lez4;->i:Ljava/util/concurrent/Executor;

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lez4$f;-><init>(Lio/grpc/g;Lez4$m$a;Ljava/util/concurrent/Executor;Lra5;Lio/grpc/b;)V

    return-object v1
.end method

.method public final h(Lio/grpc/g;)V
    .locals 2

    iget-object v0, p0, Lez4$m;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/g;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object p1, Lez4;->g0:Lez4$a;

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lez4$m;->d:Lez4;

    iget-object p0, p0, Lez4;->B:Ljava/util/LinkedHashSet;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lez4$m$e;

    invoke-virtual {p1}, Lez4$m$e;->j()V

    goto :goto_0

    :cond_0
    return-void
.end method
