.class public final Lu60;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.repositories.impl.balance.BalanceRepositoryImpl$sendEvent$1"
    f = "BalanceRepositoryImpl.kt"
    l = {
        0x43,
        0x44,
        0x45
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Lj59;",
        ">;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lu37;

.field public final synthetic o:Lx60;

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lu37;Lx60;Ljava/lang/String;Ljava/lang/String;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu37;",
            "Lx60;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le02<",
            "-",
            "Lu60;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lu60;->n:Lu37;

    iput-object p2, p0, Lu60;->o:Lx60;

    iput-object p3, p0, Lu60;->p:Ljava/lang/String;

    iput-object p4, p0, Lu60;->q:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance v0, Lu60;

    iget-object v3, p0, Lu60;->p:Ljava/lang/String;

    iget-object v4, p0, Lu60;->q:Ljava/lang/String;

    iget-object v1, p0, Lu60;->n:Lu37;

    iget-object v2, p0, Lu60;->o:Lx60;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lu60;-><init>(Lu37;Lx60;Ljava/lang/String;Ljava/lang/String;Le02;)V

    iput-object p1, v0, Lu60;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lu60;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lu60;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lu60;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lu60;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v1, p0, Lu60;->m:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lu60;->m:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lid3;

    sget-object p1, Lu37;->GET:Lu37;

    iget-object v6, p0, Lu60;->o:Lx60;

    iget-object v6, v6, Lx60;->a:La10;

    iget-object v7, p0, Lu60;->p:Ljava/lang/String;

    iget-object v8, p0, Lu60;->n:Lu37;

    if-ne v8, p1, :cond_3

    iput-object v1, p0, Lu60;->m:Ljava/lang/Object;

    iput v5, p0, Lu60;->l:I

    invoke-interface {v6, v7, p0}, La10;->l(Ljava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_3
    iput-object v1, p0, Lu60;->m:Ljava/lang/Object;

    iput v4, p0, Lu60;->l:I

    iget-object p1, p0, Lu60;->q:Ljava/lang/String;

    invoke-interface {v6, v7, p1, p0}, La10;->d(Ljava/lang/String;Ljava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    sget-object p1, Lj59;->a:Lj59;

    iput-object v2, p0, Lu60;->m:Ljava/lang/Object;

    iput v3, p0, Lu60;->l:I

    invoke-interface {v1, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    :goto_1
    return-object v0

    :cond_5
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
