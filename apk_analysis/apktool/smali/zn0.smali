.class public final Lzn0;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.bonuses.repositories.BonusBlocksRepositoryImpl$updateFavoriteStatusShop$1"
    f = "BonusBlocksRepositoryImpl.kt"
    l = {
        0x49,
        0x4d
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Lid3<",
        "-",
        "Ljava/lang/Boolean;",
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

.field public final synthetic n:Lao0;

.field public final synthetic o:I

.field public final synthetic p:Z


# direct methods
.method public constructor <init>(Lao0;IZLe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lao0;",
            "IZ",
            "Le02<",
            "-",
            "Lzn0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lzn0;->n:Lao0;

    iput p2, p0, Lzn0;->o:I

    iput-boolean p3, p0, Lzn0;->p:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 3
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

    new-instance v0, Lzn0;

    iget v1, p0, Lzn0;->o:I

    iget-boolean v2, p0, Lzn0;->p:Z

    iget-object p0, p0, Lzn0;->n:Lao0;

    invoke-direct {v0, p0, v1, v2, p2}, Lzn0;-><init>(Lao0;IZLe02;)V

    iput-object p1, v0, Lzn0;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lid3;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lzn0;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lzn0;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lzn0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lzn0;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-boolean v4, p0, Lzn0;->p:Z

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v1, p0, Lzn0;->m:Ljava/lang/Object;

    check-cast v1, Lid3;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lzn0;->m:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lid3;

    iget-object p1, p0, Lzn0;->n:Lao0;

    iget-object p1, p1, Lao0;->a:Lel0;

    iget v6, p0, Lzn0;->o:I

    int-to-long v6, v6

    new-instance v8, Le63;

    invoke-direct {v8, v4, v6, v7}, Le63;-><init>(ZJ)V

    iput-object v1, p0, Lzn0;->m:Ljava/lang/Object;

    iput v5, p0, Lzn0;->l:I

    invoke-interface {p1, v8, p0}, Lel0;->k(Le63;Le02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    check-cast p1, La57;

    iget-object p1, p1, La57;->a:Lz47;

    iget p1, p1, Lz47;->e:I

    const/16 v6, 0xc8

    if-gt v6, p1, :cond_4

    const/16 v6, 0x12d

    if-ge p1, v6, :cond_4

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    move v4, v5

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object v2, p0, Lzn0;->m:Ljava/lang/Object;

    iput v3, p0, Lzn0;->l:I

    invoke-interface {v1, p1, p0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
