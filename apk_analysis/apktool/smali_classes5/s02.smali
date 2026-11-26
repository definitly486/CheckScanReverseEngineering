.class public final Ls02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le15;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le15<",
        "Ld36;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lg15;Lzn5;)V
    .locals 4

    check-cast p2, Ld36;

    iget-object p0, p2, Lzn5;->a:Lzn5;

    check-cast p0, Lpj0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lzn5;->a:Lzn5;

    check-cast p0, Lpj0;

    instance-of v0, p0, Lyq4;

    if-eqz v0, :cond_0

    check-cast p0, Lyq4;

    iget-boolean p0, p0, Lyq4;->f:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-virtual {p1}, Lg15;->b()V

    :cond_1
    invoke-virtual {p1}, Lg15;->c()I

    move-result v0

    invoke-virtual {p1, p2}, Lg15;->f(Lzn5;)V

    iget-object v1, p1, Lg15;->b:Lg27;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Le12;->f:Lvr6;

    invoke-virtual {v1, v3, v2}, Lg27;->a(Lvr6;Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Lg15;->d(Lzn5;I)V

    if-nez p0, :cond_2

    invoke-virtual {p1, p2}, Lg15;->a(Lzn5;)V

    :cond_2
    return-void
.end method
