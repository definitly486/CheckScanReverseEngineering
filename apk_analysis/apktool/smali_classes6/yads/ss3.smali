.class public final Lyads/ss3;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/ts3;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lnl3;


# direct methods
.method public constructor <init>(Lyads/ts3;Ljava/lang/String;Ljava/lang/String;Lnl3;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/ss3;->c:Lyads/ts3;

    iput-object p2, p0, Lyads/ss3;->d:Ljava/lang/String;

    iput-object p3, p0, Lyads/ss3;->e:Ljava/lang/String;

    iput-object p4, p0, Lyads/ss3;->f:Lnl3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6

    new-instance v0, Lyads/ss3;

    iget-object v1, p0, Lyads/ss3;->c:Lyads/ts3;

    iget-object v2, p0, Lyads/ss3;->d:Ljava/lang/String;

    iget-object v3, p0, Lyads/ss3;->e:Ljava/lang/String;

    iget-object v4, p0, Lyads/ss3;->f:Lnl3;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lyads/ss3;-><init>(Lyads/ts3;Ljava/lang/String;Ljava/lang/String;Lnl3;Le02;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/ss3;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/ss3;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/ss3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/ss3;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/ss3;->c:Lyads/ts3;

    iget-object p1, p1, Lyads/ts3;->c:Lyads/ct3;

    iget-object v1, p0, Lyads/ss3;->d:Ljava/lang/String;

    iput v4, p0, Lyads/ss3;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lqo2;->a:Loi2;

    sget-object v4, Lsh2;->c:Lsh2;

    new-instance v5, Lyads/at3;

    invoke-direct {v5, p1, v1, v2}, Lyads/at3;-><init>(Lyads/ct3;Ljava/lang/String;Le02;)V

    invoke-static {v4, v5, p0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    iget-object p1, p0, Lyads/ss3;->c:Lyads/ts3;

    iget-object p1, p1, Lyads/ts3;->c:Lyads/ct3;

    iget-object v1, p0, Lyads/ss3;->e:Ljava/lang/String;

    iput v3, p0, Lyads/ss3;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lqo2;->a:Loi2;

    sget-object v3, Lsh2;->c:Lsh2;

    new-instance v4, Lyads/bt3;

    invoke-direct {v4, p1, v1, v2}, Lyads/bt3;-><init>(Lyads/ct3;Ljava/lang/String;Le02;)V

    invoke-static {v3, v4, p0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object p1, Lj59;->a:Lj59;

    :goto_1
    if-ne p1, v0, :cond_5

    :goto_2
    return-object v0

    :cond_5
    :goto_3
    iget-object p1, p0, Lyads/ss3;->f:Lnl3;

    iget-object p0, p0, Lyads/ss3;->d:Ljava/lang/String;

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
