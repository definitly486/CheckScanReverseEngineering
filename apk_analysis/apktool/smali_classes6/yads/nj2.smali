.class public final Lyads/nj2;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lyads/qj2;


# direct methods
.method public constructor <init>(Lyads/qj2;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/nj2;->c:Lyads/qj2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/nj2;

    iget-object p0, p0, Lyads/nj2;->c:Lyads/qj2;

    invoke-direct {p1, p0, p2}, Lyads/nj2;-><init>(Lyads/qj2;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/nj2;

    iget-object p0, p0, Lyads/nj2;->c:Lyads/qj2;

    invoke-direct {p1, p0, p2}, Lyads/nj2;-><init>(Lyads/qj2;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/nj2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lyads/nj2;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lyads/nj2;->c:Lyads/qj2;

    sget-object v1, Lyads/qj2;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v1

    iget-object v4, p1, Lyads/qj2;->c:Lyads/c5;

    iget-object p1, p1, Lyads/qj2;->b:Landroid/content/Context;

    invoke-virtual {v4, p1}, Lyads/c5;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lyads/b56;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, p1}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v1}, Lu96;->d(Lar4;)Lar4;

    move-result-object p1

    invoke-virtual {p1}, Lar4;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_3
    iget-object v1, p0, Lyads/nj2;->c:Lyads/qj2;

    iput v3, p0, Lyads/nj2;->b:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lyads/pj2;

    invoke-direct {v3, p1, v1, v2}, Lyads/pj2;-><init>(Ljava/util/List;Lyads/qj2;Le02;)V

    const-wide/16 v1, 0x9c4

    invoke-static {v1, v2, v3, p0}, Lyv8;->b(JLbm3;Lf02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object p0, Lj59;->a:Lj59;

    :goto_0
    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
