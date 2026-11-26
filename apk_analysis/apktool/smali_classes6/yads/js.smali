.class public final Lyads/js;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/ks;

.field public final synthetic d:Lyads/n8;


# direct methods
.method public constructor <init>(Lyads/ks;Lyads/n8;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/js;->c:Lyads/ks;

    iput-object p2, p0, Lyads/js;->d:Lyads/n8;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1

    new-instance p1, Lyads/js;

    iget-object v0, p0, Lyads/js;->c:Lyads/ks;

    iget-object p0, p0, Lyads/js;->d:Lyads/n8;

    invoke-direct {p1, v0, p0, p2}, Lyads/js;-><init>(Lyads/ks;Lyads/n8;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/js;

    iget-object v0, p0, Lyads/js;->c:Lyads/ks;

    iget-object p0, p0, Lyads/js;->d:Lyads/n8;

    invoke-direct {p1, v0, p0, p2}, Lyads/js;-><init>(Lyads/ks;Lyads/n8;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/js;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/js;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v4, p0, Lyads/js;->c:Lyads/ks;

    iget-object v6, p0, Lyads/js;->d:Lyads/n8;

    iput v2, p0, Lyads/js;->b:I

    new-instance p1, Lc31;

    invoke-static {p0}, Lzya;->b(Le02;)Le02;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p1}, Lc31;->u()V

    iget-object p0, v4, Lyads/ks;->d:Lyads/fa5;

    iget-object v2, v4, Lyads/ks;->a:Landroid/content/Context;

    new-instance v1, Lyads/ea5;

    iget-object v3, p0, Lyads/fa5;->a:Lyads/do6;

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lyads/ea5;-><init>(Landroid/content/Context;Lyads/bf5;Lyads/p5;Lyads/u03;Lyads/n8;)V

    iget-object p0, v4, Lyads/ks;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v6, Lyads/n8;->a:Ljava/lang/String;

    iget-object v2, v1, Lyads/pp;->c:Lyads/e4;

    invoke-virtual {v2, p0}, Lyads/e4;->a(Ljava/lang/String;)V

    iget-object v2, v1, Lyads/ea5;->G:Lyads/r25;

    iput-object p0, v2, Lyads/r25;->d:Ljava/lang/String;

    new-instance p0, Lyads/hs;

    invoke-direct {p0, p1}, Lyads/hs;-><init>(Lc31;)V

    invoke-virtual {v1, p0}, Lyads/ea5;->a(Lyads/w80;)V

    invoke-virtual {v1, v6}, Lyads/pp;->b(Lyads/n8;)V

    new-instance p0, Lyads/is;

    invoke-direct {p0, v1, v4}, Lyads/is;-><init>(Lyads/ea5;Lyads/ks;)V

    invoke-virtual {p1, p0}, Lc31;->n(Lnl3;)V

    invoke-virtual {p1}, Lc31;->s()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    return-object p0
.end method
