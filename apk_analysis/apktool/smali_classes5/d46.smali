.class public abstract Ld46;
.super Lrl1;
.source "SourceFile"


# annotations
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


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0}, Ld46;->f()Lrl1;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lrl1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Ld46;->f()Lrl1;

    move-result-object p0

    invoke-virtual {p0}, Lrl1;->b()V

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Ld46;->f()Lrl1;

    move-result-object p0

    invoke-virtual {p0}, Lrl1;->c()V

    return-void
.end method

.method public abstract f()Lrl1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrl1<",
            "**>;"
        }
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Ld46;->f()Lrl1;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
