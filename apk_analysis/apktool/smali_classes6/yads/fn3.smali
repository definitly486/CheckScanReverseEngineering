.class public final Lyads/fn3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/in3;


# direct methods
.method public constructor <init>(Lyads/in3;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/fn3;->c:Lyads/in3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/fn3;

    iget-object p0, p0, Lyads/fn3;->c:Lyads/in3;

    invoke-direct {p1, p0, p2}, Lyads/fn3;-><init>(Lyads/in3;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/fn3;

    iget-object p0, p0, Lyads/fn3;->c:Lyads/in3;

    invoke-direct {p1, p0, p2}, Lyads/fn3;-><init>(Lyads/in3;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/fn3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/fn3;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/fn3;->c:Lyads/in3;

    iget-object p1, p1, Lyads/in3;->b:Lyads/n43;

    iput v3, p0, Lyads/fn3;->b:I

    iget-object p1, p1, Lyads/n43;->a:Lyads/ig0;

    iget-object v1, p1, Lyads/ig0;->f:Lr22;

    new-instance v3, Lyads/hg0;

    invoke-direct {v3, p1, v2}, Lyads/hg0;-><init>(Lyads/ig0;Le02;)V

    invoke-static {v1, v3, p0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lyads/ah3;

    instance-of v0, p1, Lyads/zg3;

    if-eqz v0, :cond_3

    new-instance v0, Lyads/eh0;

    check-cast p1, Lyads/zg3;

    iget-object p1, p1, Lyads/zg3;->a:Landroid/net/Uri;

    invoke-direct {v0, p1}, Lyads/eh0;-><init>(Landroid/net/Uri;)V

    goto :goto_1

    :cond_3
    instance-of v0, p1, Lyads/xg3;

    if-eqz v0, :cond_4

    new-instance v0, Lyads/dh0;

    check-cast p1, Lyads/xg3;

    iget-object p1, p1, Lyads/xg3;->a:Ljava/lang/String;

    invoke-direct {v0, p1}, Lyads/dh0;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    instance-of p1, p1, Lyads/yg3;

    if-eqz p1, :cond_5

    sget-object v0, Lyads/ch0;->a:Lyads/ch0;

    :goto_1
    iget-object p0, p0, Lyads/fn3;->c:Lyads/in3;

    iget-object p1, p0, Lyads/in3;->a:Ly22;

    new-instance v1, Lyads/en3;

    invoke-direct {v1, p0, v0, v2}, Lyads/en3;-><init>(Lyads/in3;Lyads/gh0;Le02;)V

    const/4 p0, 0x3

    invoke-static {p1, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-object v2
.end method
