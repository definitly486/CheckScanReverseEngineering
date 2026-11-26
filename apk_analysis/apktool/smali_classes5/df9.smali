.class public final Ldf9;
.super Ld8;
.source "SourceFile"


# instance fields
.field public a:Lz94;

.field public b:Z


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Ldf9;->a:Lz94;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lkd0;->f:Lcom/my/target/b3;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/my/target/b3;->destroy()V

    iput-object v1, v0, Lkd0;->f:Lcom/my/target/b3;

    :cond_0
    iput-object v1, v0, Lz94;->h:Lz94$a;

    :cond_1
    iput-object v1, p0, Ldf9;->a:Lz94;

    return-void
.end method

.method public final b(Landroid/app/Activity;Lnl3;Lll3;Lll3;Le02;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lnl3<",
            "-",
            "Ljava/lang/String;",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;",
            "Le02<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance p4, Lc31;

    invoke-static {p5}, Lzya;->b(Le02;)Le02;

    move-result-object p5

    const/4 v0, 0x1

    invoke-direct {p4, v0, p5}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p4}, Lc31;->u()V

    new-instance p5, Lz94;

    const v0, 0x1cbcc7

    invoke-direct {p5, v0, p1}, Lz94;-><init>(ILandroid/content/Context;)V

    iput-object p5, p0, Ldf9;->a:Lz94;

    new-instance p1, Ldf9$a;

    invoke-direct {p1, p0, p3, p2, p4}, Ldf9$a;-><init>(Ldf9;Lll3;Lnl3;Lc31;)V

    iput-object p1, p5, Lz94;->h:Lz94$a;

    invoke-virtual {p5}, Lkd0;->b()V

    invoke-virtual {p4}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    return-object p0
.end method
