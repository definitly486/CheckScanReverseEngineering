.class public abstract Ldj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmw1;


# virtual methods
.method public abstract a()Lmw1;
.end method

.method public final c()Lm94;
    .locals 0

    invoke-virtual {p0}, Ldj3;->a()Lmw1;

    move-result-object p0

    invoke-interface {p0}, Ll94;->c()Lm94;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lnz4$a;)Ljava/lang/Runnable;
    .locals 0

    invoke-virtual {p0}, Ldj3;->a()Lmw1;

    move-result-object p0

    invoke-interface {p0, p1}, Lnz4;->d(Lnz4$a;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public e(Lh88;)V
    .locals 0

    invoke-virtual {p0}, Ldj3;->a()Lmw1;

    move-result-object p0

    invoke-interface {p0, p1}, Lnz4;->e(Lh88;)V

    return-void
.end method

.method public final getAttributes()Lio/grpc/a;
    .locals 0

    invoke-virtual {p0}, Ldj3;->a()Lmw1;

    move-result-object p0

    invoke-interface {p0}, Lmw1;->getAttributes()Lio/grpc/a;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Ldj3;->a()Lmw1;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
