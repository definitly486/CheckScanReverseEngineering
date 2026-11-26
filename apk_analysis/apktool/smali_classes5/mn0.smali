.class public final Lmn0;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.bonusBlock.BonusBlockInteractor$updateFavoritePreviewAll$1"
    f = "BonusBlockInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/lang/Boolean;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Z

.field public final synthetic m:Lbm0;

.field public final synthetic n:I


# direct methods
.method public constructor <init>(Lbm0;ILe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm0;",
            "I",
            "Le02<",
            "-",
            "Lmn0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmn0;->m:Lbm0;

    iput p2, p0, Lmn0;->n:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2
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

    new-instance v0, Lmn0;

    iget-object v1, p0, Lmn0;->m:Lbm0;

    iget p0, p0, Lmn0;->n:I

    invoke-direct {v0, v1, p0, p2}, Lmn0;-><init>(Lbm0;ILe02;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lmn0;->l:Z

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lmn0;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lmn0;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lmn0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lmn0;->l:Z

    iget-object v0, p0, Lmn0;->m:Lbm0;

    iget-object v1, v0, Lbm0;->f:Lz68;

    :cond_0
    invoke-virtual {v1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    iget v7, p0, Lmn0;->n:I

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcs0;

    instance-of v8, v6, Len1;

    if-eqz v8, :cond_1

    check-cast v6, Len1;

    iget-object v6, v6, Len1;->a:Ldn1;

    iget v6, v6, Ldn1;->a:I

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    :goto_1
    invoke-static {v3}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v4

    invoke-virtual {v4, v5}, Ly74;->c(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Len1;

    instance-of v6, v4, Len1$a;

    iget-object v4, v4, Len1;->a:Ldn1;

    if-eqz v6, :cond_3

    new-instance v6, Len1$a;

    invoke-static {v4, p1}, Ldn1;->a(Ldn1;Z)Ldn1;

    move-result-object v4

    invoke-direct {v6, v4}, Len1$a;-><init>(Ldn1;)V

    goto :goto_2

    :cond_3
    new-instance v6, Len1$b;

    invoke-static {v4, p1}, Ldn1;->a(Ldn1;Z)Ldn1;

    move-result-object v4

    invoke-direct {v6, v4}, Len1$b;-><init>(Ldn1;)V

    :goto_2
    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v1, v2, v3}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-long v1, v7

    iget-object p0, v0, Lbm0;->d:Ln53;

    long-to-int v0, v1

    invoke-interface {p0, v0, p1}, Ln53;->b(IZ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
