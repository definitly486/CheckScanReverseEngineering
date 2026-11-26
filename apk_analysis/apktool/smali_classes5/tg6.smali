.class public final Ltg6;
.super La91;
.source "SourceFile"

# interfaces
.implements Lug6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "La91<",
        "TE;>;",
        "Lug6<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public final getChannel()Lno7;
    .locals 0

    return-object p0
.end method

.method public final k0(Ljava/lang/Throwable;Z)V
    .locals 2

    iget-object v0, p0, La91;->f:Lmu0;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lmu0;->d(Ljava/lang/Throwable;Z)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object p0, p0, La0;->e:Lo22;

    invoke-static {p0, p1}, Lv22;->a(Lo22;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final l0(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lj59;

    iget-object p0, p0, La91;->f:Lmu0;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmu0;->close(Ljava/lang/Throwable;)Z

    return-void
.end method
