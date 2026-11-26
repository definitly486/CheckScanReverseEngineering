.class public final Lyads/ip;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/pp;


# direct methods
.method public constructor <init>(Lyads/pp;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/ip;->c:Lyads/pp;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/ip;

    iget-object p0, p0, Lyads/ip;->c:Lyads/pp;

    invoke-direct {p1, p0, p2}, Lyads/ip;-><init>(Lyads/pp;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/ip;

    iget-object p0, p0, Lyads/ip;->c:Lyads/pp;

    invoke-direct {p1, p0, p2}, Lyads/ip;-><init>(Lyads/pp;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/ip;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/ip;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/ip;->c:Lyads/pp;

    iget-object p1, p1, Lyads/pp;->j:Lyads/rf5;

    sget-object v1, Lyads/kg3;->d:Lyads/kg3;

    iput v6, p0, Lyads/ip;->b:I

    invoke-virtual {p1, v1, p0}, Lyads/rf5;->a(Lyads/kg3;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto/16 :goto_7

    :cond_5
    :goto_1
    check-cast p1, Lyads/gf5;

    instance-of v1, p1, Lyads/ff5;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lyads/ip;->c:Lyads/pp;

    check-cast p1, Lyads/ff5;

    iget-object v3, v1, Lyads/pp;->c:Lyads/e4;

    iget-object v6, p1, Lyads/ff5;->a:Lyads/ed;

    iget-object v3, v3, Lyads/e4;->b:Lyads/c40;

    iput-object v6, v3, Lyads/c40;->b:Lyads/ed;

    iget-object p1, p1, Lyads/ff5;->b:Lyads/vn2;

    iput-object p1, v3, Lyads/c40;->a:Lyads/vn2;

    iput v5, p0, Lyads/ip;->b:I

    sget-object p1, Lyads/zg5;->l:Lyads/zg5;

    if-nez p1, :cond_7

    sget-object p1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    sget-object v3, Lyads/zg5;->l:Lyads/zg5;

    if-nez v3, :cond_6

    new-instance v3, Lyads/zg5;

    invoke-direct {v3}, Lyads/zg5;-><init>()V

    sput-object v3, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_6
    :goto_2
    monitor-exit p1

    move-object p1, v3

    goto :goto_4

    :goto_3
    monitor-exit p1

    throw p0

    :cond_7
    :goto_4
    iget-object v3, v1, Lyads/pp;->a:Landroid/content/Context;

    invoke-virtual {p1, v3}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object v2, p1, Lyads/fe5;->e0:Lyads/dt;

    :cond_8
    if-eqz v2, :cond_a

    invoke-virtual {v1, v2, p0}, Lyads/pp;->a(Lyads/dt;Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    goto :goto_5

    :cond_9
    sget-object p1, Lj59;->a:Lj59;

    goto :goto_5

    :cond_a
    sget-object p1, Lj59;->a:Lj59;

    :goto_5
    if-ne p1, v0, :cond_b

    goto :goto_7

    :cond_b
    :goto_6
    iget-object p1, p0, Lyads/ip;->c:Lyads/pp;

    iget-object v1, p1, Lyads/pp;->g:Lyads/xa;

    iput v4, p0, Lyads/ip;->b:I

    invoke-virtual {p1, v1, p0}, Lyads/pp;->a(Lyads/t46;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_d

    goto :goto_7

    :cond_c
    instance-of v1, p1, Lyads/ef5;

    if-eqz v1, :cond_d

    sget-object v1, Lqo2;->a:Loi2;

    sget-object v1, Luy4;->a:Lhu3;

    invoke-virtual {v1}, Lhu3;->k0()Lgu3;

    move-result-object v1

    new-instance v4, Lyads/hp;

    iget-object v5, p0, Lyads/ip;->c:Lyads/pp;

    check-cast p1, Lyads/ef5;

    invoke-direct {v4, v5, p1, v2}, Lyads/hp;-><init>(Lyads/pp;Lyads/ef5;Le02;)V

    iput v3, p0, Lyads/ip;->b:I

    invoke-static {v1, v4, p0}, Lav0;->d(Lo22;Lbm3;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_d

    :goto_7
    return-object v0

    :cond_d
    :goto_8
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
