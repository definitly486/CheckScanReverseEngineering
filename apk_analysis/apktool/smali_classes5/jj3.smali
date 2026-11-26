.class public abstract Ljj3;
.super Lio/grpc/h;
.source "SourceFile"


# virtual methods
.method public final b(Lh88;)V
    .locals 2

    check-cast p0, Lir3;

    iget-object v0, p0, Lir3;->k:Lio/grpc/h;

    iget-object v1, p0, Lir3;->f:Lir3$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lir3;->i:Lio/grpc/h;

    :cond_0
    invoke-virtual {v0, p1}, Lio/grpc/h;->b(Lh88;)V

    return-void
.end method

.method public final c()V
    .locals 2

    check-cast p0, Lir3;

    iget-object v0, p0, Lir3;->k:Lio/grpc/h;

    iget-object v1, p0, Lir3;->f:Lir3$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lir3;->i:Lio/grpc/h;

    :cond_0
    invoke-virtual {v0}, Lio/grpc/h;->c()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    check-cast p0, Lir3;

    iget-object v1, p0, Lir3;->k:Lio/grpc/h;

    iget-object v2, p0, Lir3;->f:Lir3$a;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lir3;->i:Lio/grpc/h;

    :cond_0
    const-string p0, "delegate"

    invoke-virtual {v0, v1, p0}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
