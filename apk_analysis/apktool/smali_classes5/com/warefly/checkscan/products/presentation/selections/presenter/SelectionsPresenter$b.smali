.class public final Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$b;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.products.presentation.selections.presenter.SelectionsPresenter$loadFilters$1"
    f = "SelectionsPresenter.kt"
    l = {
        0x42
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;->loadFilters()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
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

.field public final synthetic m:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$b;->m:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0
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

    new-instance p1, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$b;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$b;->m:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    invoke-direct {p1, p0, p2}, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$b;-><init>(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$b;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$b;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$b;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$b;->m:Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;->access$getFetchSelectionsFiltersUseCase$p(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;)Lf83;

    move-result-object p1

    iput v3, p0, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter$b;->l:I

    iget-object p1, p1, Lf83;->a:Luj6;

    invoke-interface {p1, p0}, Luj6;->f(Lf02;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    invoke-static {v4}, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;->access$getSelectedFilter$p(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;)Lxg5;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_5

    invoke-static {p1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loa3;

    if-eqz v1, :cond_4

    iget v1, v1, Loa3;->a:I

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v5

    goto :goto_1

    :cond_4
    move-object v1, v2

    :cond_5
    :goto_1
    invoke-interface {p0, v0, v1}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v4}, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;->access$getFiltersState$p(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;)Lxg5;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lka3;

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Loa3;

    iget v6, v5, Loa3;->a:I

    invoke-static {v4}, Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;->access$getSelectedFilter$p(Lcom/warefly/checkscan/products/presentation/selections/presenter/SelectionsPresenter;)Lxg5;

    move-result-object v7

    invoke-interface {v7}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-nez v7, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v6, v7, :cond_8

    invoke-static {v5, v3}, Loa3;->d(Loa3;Z)Loa3;

    move-result-object v5

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v6, 0x0

    invoke-static {v5, v6}, Loa3;->d(Loa3;Z)Loa3;

    move-result-object v5

    :goto_4
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    new-instance v1, Lka3;

    invoke-direct {v1, v2}, Lka3;-><init>(Ljava/util/List;)V

    invoke-interface {v0, p0, v1}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
