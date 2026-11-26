.class public Ldp7;
.super Lly1;
.source "SourceFile"


# direct methods
.method public static f(Ljava/util/Iterator;)Lzo7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lzo7<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ldp7$a;

    invoke-direct {v0, p0}, Ldp7$a;-><init>(Ljava/util/Iterator;)V

    new-instance p0, Llx1;

    invoke-direct {p0, v0}, Llx1;-><init>(Lzo7;)V

    return-object p0
.end method

.method public static final g(Lzo7;)Lnc3;
    .locals 4

    new-instance v0, Lu00;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lu00;-><init>(I)V

    instance-of v1, p0, Lf29;

    if-eqz v1, :cond_0

    check-cast p0, Lf29;

    new-instance v1, Lnc3;

    iget-object v2, p0, Lf29;->a:Lzo7;

    iget-object p0, p0, Lf29;->b:Lnl3;

    invoke-direct {v1, v2, p0, v0}, Lnc3;-><init>(Lzo7;Lnl3;Lnl3;)V

    return-object v1

    :cond_0
    new-instance v1, Lnc3;

    new-instance v2, Lsi1;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lsi1;-><init>(I)V

    invoke-direct {v1, p0, v2, v0}, Lnc3;-><init>(Lzo7;Lnl3;Lnl3;)V

    return-object v1
.end method

.method public static h(Lnl3;Ljava/lang/Object;)Lzo7;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    sget-object p0, Lnx2;->a:Lnx2;

    return-object p0

    :cond_0
    new-instance v0, Lep3;

    new-instance v1, Ldz0;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Ldz0;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1, p0}, Lep3;-><init>(Lll3;Lnl3;)V

    return-object v0
.end method
