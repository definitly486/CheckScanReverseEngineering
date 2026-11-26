.class public final synthetic Lgq7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm3;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lne4;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lnq7;->a:Ltp7;

    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Liq7;->e(Ljq7;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lji5;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lji5;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p0, v0}, Liq7;->a(Lne4;Ljava/util/ArrayList;Lll3;)Ldf4;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lev0;->a(Ldf4;)Ldf4;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
