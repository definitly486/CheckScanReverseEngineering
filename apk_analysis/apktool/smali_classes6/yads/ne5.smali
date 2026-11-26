.class public final Lyads/ne5;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:Lyg5;

.field public c:Lyads/oe5;

.field public d:Lyads/kg3;

.field public e:I

.field public final synthetic f:Lyads/oe5;

.field public final synthetic g:Lyads/kg3;


# direct methods
.method public constructor <init>(Lyads/oe5;Lyads/kg3;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/ne5;->f:Lyads/oe5;

    iput-object p2, p0, Lyads/ne5;->g:Lyads/kg3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/ne5;

    iget-object v0, p0, Lyads/ne5;->f:Lyads/oe5;

    iget-object p0, p0, Lyads/ne5;->g:Lyads/kg3;

    invoke-direct {p1, v0, p0, p2}, Lyads/ne5;-><init>(Lyads/oe5;Lyads/kg3;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/ne5;

    iget-object v0, p0, Lyads/ne5;->f:Lyads/oe5;

    iget-object p0, p0, Lyads/ne5;->g:Lyads/kg3;

    invoke-direct {p1, v0, p0, p2}, Lyads/ne5;-><init>(Lyads/oe5;Lyads/kg3;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/ne5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/ne5;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lyads/ne5;->b:Lyg5;

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v4

    :cond_1
    iget-object v1, p0, Lyads/ne5;->d:Lyads/kg3;

    iget-object v5, p0, Lyads/ne5;->c:Lyads/oe5;

    iget-object v6, p0, Lyads/ne5;->b:Lyg5;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object p1, v6

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/ne5;->f:Lyads/oe5;

    iget-object p1, p1, Lyads/oe5;->a:Lyads/t5;

    sget-object v1, Lyads/s5;->j:Lyads/s5;

    invoke-virtual {p1, v1, v4}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    sget-object p1, Lyads/oe5;->d:Lyg5;

    iget-object v5, p0, Lyads/ne5;->f:Lyads/oe5;

    iget-object v1, p0, Lyads/ne5;->g:Lyads/kg3;

    iput-object p1, p0, Lyads/ne5;->b:Lyg5;

    iput-object v5, p0, Lyads/ne5;->c:Lyads/oe5;

    iput-object v1, p0, Lyads/ne5;->d:Lyads/kg3;

    iput v3, p0, Lyads/ne5;->e:I

    invoke-interface {p1, v4, p0}, Lyg5;->lock(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_1
    iget-object v6, v5, Lyads/oe5;->a:Lyads/t5;

    sget-object v7, Lyads/s5;->j:Lyads/s5;

    invoke-virtual {v6, v7}, Lyads/t5;->a(Lyads/s5;)V

    iput-object p1, p0, Lyads/ne5;->b:Lyg5;

    iput-object v5, p0, Lyads/ne5;->c:Lyads/oe5;

    iput-object v1, p0, Lyads/ne5;->d:Lyads/kg3;

    iput v2, p0, Lyads/ne5;->e:I

    new-instance v2, Lc31;

    invoke-static {p0}, Lzya;->b(Le02;)Le02;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {v2}, Lc31;->u()V

    new-instance p0, Lyads/le5;

    invoke-direct {p0, v5}, Lyads/le5;-><init>(Lyads/oe5;)V

    invoke-virtual {v2, p0}, Lc31;->n(Lnl3;)V

    iget-object p0, v5, Lyads/oe5;->c:Lyads/ke5;

    iget-object v3, v5, Lyads/oe5;->b:Lyads/qi5;

    new-instance v5, Lyads/me5;

    invoke-direct {v5, v2}, Lyads/me5;-><init>(Lc31;)V

    invoke-virtual {p0, v3, v1, v5}, Lyads/ke5;->a(Lyads/qi5;Lyads/kg3;Lyads/me5;)V

    invoke-virtual {v2}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_2
    :try_start_2
    check-cast p1, Lyads/ze5;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p0, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_1
    move-exception p0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_3
    invoke-interface {p0, v4}, Lyg5;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
