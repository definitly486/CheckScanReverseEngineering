.class public abstract Lkj3;
.super Lio/grpc/h$e;
.source "SourceFile"


# virtual methods
.method public a(Lio/grpc/h$b;)Lio/grpc/h$j;
    .locals 0

    invoke-virtual {p0}, Lkj3;->g()Lio/grpc/h$e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/grpc/h$e;->a(Lio/grpc/h$b;)Lio/grpc/h$j;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ln91;
    .locals 0

    invoke-virtual {p0}, Lkj3;->g()Lio/grpc/h$e;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/h$e;->b()Ln91;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    invoke-virtual {p0}, Lkj3;->g()Lio/grpc/h$e;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/h$e;->c()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lch8;
    .locals 0

    invoke-virtual {p0}, Lkj3;->g()Lio/grpc/h$e;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/h$e;->d()Lch8;

    move-result-object p0

    return-object p0
.end method

.method public final e()V
    .locals 0

    invoke-virtual {p0}, Lkj3;->g()Lio/grpc/h$e;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/h$e;->e()V

    return-void
.end method

.method public abstract g()Lio/grpc/h$e;
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lkj3;->g()Lio/grpc/h$e;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
