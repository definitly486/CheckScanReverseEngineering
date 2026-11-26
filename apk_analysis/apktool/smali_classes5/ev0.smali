.class public final Lev0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ldf4;)Ldf4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldf4<",
            "TT;>;)",
            "Ldf4<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lxp7;->getDescriptor()Lmp7;

    move-result-object v0

    invoke-interface {v0}, Lmp7;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lbq5;

    invoke-direct {v0, p0}, Lbq5;-><init>(Ldf4;)V

    return-object v0
.end method
