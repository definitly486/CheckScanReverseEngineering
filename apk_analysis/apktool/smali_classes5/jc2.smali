.class public final Ljc2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lic2;[Lnl3;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lic2;",
            ">(TT;[",
            "Lnl3<",
            "-TT;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-TT;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Le0;

    if-eqz v0, :cond_0

    check-cast p0, Le0;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lnl3;

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lv39;->c(ILjava/lang/Object;)V

    invoke-interface {p0, p1, p2}, Le0;->b([Lnl3;Lnl3;)V

    return-void

    :cond_0
    const-string p0, "impossible"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static final b(Lic2;C)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lic2;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static final c(Lic2;Ljava/lang/String;Lnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lic2;",
            ">(TT;",
            "Ljava/lang/String;",
            "Lnl3<",
            "-TT;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Le0;

    if-eqz v0, :cond_0

    check-cast p0, Le0;

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lv39;->c(ILjava/lang/Object;)V

    invoke-interface {p0, p1, p2}, Le0;->u(Ljava/lang/String;Lnl3;)V

    return-void

    :cond_0
    const-string p0, "impossible"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method
