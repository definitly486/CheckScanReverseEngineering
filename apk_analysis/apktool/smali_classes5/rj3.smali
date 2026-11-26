.class public abstract Lrj3;
.super Lio/grpc/h$j;
.source "SourceFile"


# virtual methods
.method public final b()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/d;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lrj3;->j()Lio/grpc/h$j;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/h$j;->b()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final d()Ln91;
    .locals 0

    invoke-virtual {p0}, Lrj3;->j()Lio/grpc/h$j;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/h$j;->d()Ln91;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lrj3;->j()Lio/grpc/h$j;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/h$j;->e()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f()V
    .locals 0

    invoke-virtual {p0}, Lrj3;->j()Lio/grpc/h$j;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/h$j;->f()V

    return-void
.end method

.method public g()V
    .locals 0

    invoke-virtual {p0}, Lrj3;->j()Lio/grpc/h$j;

    move-result-object p0

    invoke-virtual {p0}, Lio/grpc/h$j;->g()V

    return-void
.end method

.method public i(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/d;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lrj3;->j()Lio/grpc/h$j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/grpc/h$j;->i(Ljava/util/List;)V

    return-void
.end method

.method public abstract j()Lio/grpc/h$j;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lrj3;->j()Lio/grpc/h$j;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
