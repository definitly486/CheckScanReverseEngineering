.class public final Llf1;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.repositories.impl.cheque.ChequeRepositoryImpl$fetchChequesByPage$1"
    f = "ChequeRepositoryImpl.kt"
    l = {
        0x42,
        0x43
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lhd1;",
        ">;>;",
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

.field public final synthetic n:Lkf1;

.field public final synthetic o:I

.field public final synthetic p:Ljava/lang/String;

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Ljava/lang/Integer;

.field public final synthetic s:Ljava/lang/Integer;

.field public final synthetic t:I

.field public final synthetic u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkf1;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;Le02;)V
    .locals 0

    iput-object p1, p0, Llf1;->n:Lkf1;

    iput p2, p0, Llf1;->o:I

    iput-object p3, p0, Llf1;->p:Ljava/lang/String;

    iput-object p4, p0, Llf1;->q:Ljava/lang/String;

    iput-object p5, p0, Llf1;->r:Ljava/lang/Integer;

    iput-object p6, p0, Llf1;->s:Ljava/lang/Integer;

    iput p7, p0, Llf1;->t:I

    iput-object p8, p0, Llf1;->u:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 10
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

    new-instance v0, Llf1;

    iget v7, p0, Llf1;->t:I

    iget-object v8, p0, Llf1;->u:Ljava/lang/String;

    iget-object v1, p0, Llf1;->n:Lkf1;

    iget v2, p0, Llf1;->o:I

    iget-object v3, p0, Llf1;->p:Ljava/lang/String;

    iget-object v4, p0, Llf1;->q:Ljava/lang/String;

    iget-object v5, p0, Llf1;->r:Ljava/lang/Integer;

    iget-object v6, p0, Llf1;->s:Ljava/lang/Integer;

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Llf1;-><init>(Lkf1;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/String;Le02;)V

    iput-object p1, v0, Llf1;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Llf1;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Llf1;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Llf1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v10, La32;->COROUTINE_SUSPENDED:La32;

    iget v0, p0, Llf1;->l:I

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    if-ne v0, v12, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v11

    :cond_1
    iget-object v0, p0, Llf1;->m:Ljava/lang/Object;

    check-cast v0, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    move-object v13, v0

    move-object v0, p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Llf1;->m:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lid3;

    iget-object v0, p0, Llf1;->n:Lkf1;

    iget-object v0, v0, Lkf1;->a:Lmh1;

    iput-object v13, p0, Llf1;->m:Ljava/lang/Object;

    iput v1, p0, Llf1;->l:I

    iget v1, p0, Llf1;->o:I

    iget-object v2, p0, Llf1;->p:Ljava/lang/String;

    iget-object v3, p0, Llf1;->q:Ljava/lang/String;

    iget-object v4, p0, Llf1;->r:Ljava/lang/Integer;

    iget-object v5, p0, Llf1;->s:Ljava/lang/Integer;

    iget v6, p0, Llf1;->t:I

    const/16 v7, 0x14

    iget-object v8, p0, Llf1;->u:Ljava/lang/String;

    move-object v9, p0

    invoke-interface/range {v0 .. v9}, Lmh1;->i(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;IILjava/lang/String;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast v0, Lei1;

    invoke-virtual {v0}, Lei1;->b()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v11, p0, Llf1;->m:Ljava/lang/Object;

    iput v12, p0, Llf1;->l:I

    invoke-interface {v13, v0, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_4

    :goto_1
    return-object v10

    :cond_4
    :goto_2
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
