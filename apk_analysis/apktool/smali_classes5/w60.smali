.class public final Lw60;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.repositories.impl.balance.BalanceRepositoryImpl$transferToCard$1"
    f = "BalanceRepositoryImpl.kt"
    l = {
        0x85,
        0x85
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "La40;",
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

.field public final synthetic n:Lx60;

.field public final synthetic o:J


# direct methods
.method public constructor <init>(Lx60;JLe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx60;",
            "J",
            "Le02<",
            "-",
            "Lw60;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lw60;->n:Lx60;

    iput-wide p2, p0, Lw60;->o:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 4
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

    new-instance v0, Lw60;

    iget-object v1, p0, Lw60;->n:Lx60;

    iget-wide v2, p0, Lw60;->o:J

    invoke-direct {v0, v1, v2, v3, p2}, Lw60;-><init>(Lx60;JLe02;)V

    iput-object p1, v0, Lw60;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lw60;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lw60;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lw60;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lw60;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v1, p0, Lw60;->m:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lw60;->m:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lid3;

    iget-object p1, p0, Lw60;->n:Lx60;

    iget-object p1, p1, Lx60;->a:La10;

    new-instance v5, Lr99;

    iget-wide v6, p0, Lw60;->o:J

    invoke-direct {v5, v6, v7}, Lr99;-><init>(J)V

    iput-object v1, p0, Lw60;->m:Ljava/lang/Object;

    iput v4, p0, Lw60;->l:I

    invoke-interface {p1, v5, p0}, La10;->n(Lr99;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Ls99;

    invoke-virtual {p1}, Ls99;->a()La40;

    move-result-object p1

    iput-object v2, p0, Lw60;->m:Ljava/lang/Object;

    iput v3, p0, Lw60;->l:I

    invoke-interface {v1, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
