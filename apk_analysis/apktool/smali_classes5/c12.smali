.class public final Lc12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le15;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le15<",
        "Ldr4;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lg15;Lzn5;)V
    .locals 5

    check-cast p2, Ldr4;

    invoke-virtual {p1}, Lg15;->c()I

    move-result p0

    iget-object v0, p1, Lg15;->b:Lg27;

    invoke-virtual {p1, p2}, Lg15;->f(Lzn5;)V

    iget-object v1, p2, Lzn5;->a:Lzn5;

    check-cast v1, Lpj0;

    instance-of v2, v1, Ld06;

    sget-object v3, Le12;->a:Lvr6;

    if-eqz v2, :cond_0

    check-cast v1, Ld06;

    iget v2, v1, Ld06;->g:I

    sget-object v4, Le12$a;->ORDERED:Le12$a;

    invoke-virtual {v0, v3, v4}, Lg27;->a(Lvr6;Ljava/lang/Object;)V

    sget-object v3, Le12;->c:Lvr6;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lg27;->a(Lvr6;Ljava/lang/Object;)V

    iget v0, v1, Ld06;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Ld06;->g:I

    goto :goto_1

    :cond_0
    sget-object v1, Le12$a;->BULLET:Le12$a;

    invoke-virtual {v0, v3, v1}, Lg27;->a(Lvr6;Ljava/lang/Object;)V

    iget-object v1, p2, Lzn5;->a:Lzn5;

    check-cast v1, Lpj0;

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_2

    instance-of v3, v1, Ldr4;

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    invoke-virtual {v1}, Lzn5;->c()Lzn5;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Le12;->b:Lvr6;

    invoke-virtual {v0, v2, v1}, Lg27;->a(Lvr6;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p1, p2, p0}, Lg15;->d(Lzn5;I)V

    iget-object p0, p2, Lzn5;->e:Lzn5;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lg15;->b()V

    :cond_3
    return-void
.end method
