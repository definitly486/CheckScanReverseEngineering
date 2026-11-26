.class public final Lb12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le15;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le15<",
        "Lw04;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lg15;Lzn5;)V
    .locals 5

    iget-object p0, p1, Lg15;->c:Lf58;

    check-cast p2, Lw04;

    iget-object v0, p1, Lg15;->a:Lx05;

    iget-object v1, v0, Lx05;->e:Lc15;

    const-class v2, Lw04;

    iget-object v1, v1, Lc15;->a:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le58;

    if-nez v1, :cond_0

    invoke-virtual {p1, p2}, Lg15;->f(Lzn5;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lg15;->c()I

    move-result v2

    invoke-virtual {p1, p2}, Lg15;->f(Lzn5;)V

    invoke-virtual {p1}, Lg15;->c()I

    move-result v3

    if-ne v2, v3, :cond_1

    const v3, 0xfffc

    invoke-virtual {p0, v3}, Lf58;->a(C)V

    :cond_1
    iget-object v3, p2, Lzn5;->a:Lzn5;

    instance-of v3, v3, Lhq4;

    iget-object v4, v0, Lx05;->d:Li14$a;

    iget-object p2, p2, Lw04;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lg15;->b:Lg27;

    sget-object v4, Ly14;->b:Lvr6;

    invoke-virtual {p1, v4, p2}, Lg27;->a(Lvr6;Ljava/lang/Object;)V

    sget-object p2, Ly14;->c:Lvr6;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lg27;->a(Lvr6;Ljava/lang/Object;)V

    sget-object p2, Ly14;->d:Lvr6;

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3}, Lg27;->a(Lvr6;Ljava/lang/Object;)V

    invoke-interface {v1, v0, p1}, Le58;->a(Lx05;Lg27;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lf58;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-le v0, v2, :cond_2

    if-ltz v2, :cond_2

    if-gt v0, p2, :cond_2

    invoke-static {p0, p1, v2, v0}, Lf58;->c(Lf58;Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method
