.class public final Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.products.presentation.products.presenter.ProductsPresenter$setUpPaginator$2"
    f = "ProductsPresenter.kt"
    l = {
        0x63
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->setUpPaginator(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/lang/Integer;",
        "Le02<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public synthetic m:I

.field public final synthetic n:Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

.field public final synthetic o:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;Ljava/lang/Integer;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;",
            "Ljava/lang/Integer;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;->n:Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;->o:Ljava/lang/Integer;

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

    new-instance v0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;

    iget-object v1, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;->n:Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;->o:Ljava/lang/Integer;

    invoke-direct {v0, v1, p0, p2}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;-><init>(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;Ljava/lang/Integer;Le02;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    iput p0, v0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;->m:I

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Le02;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;->n:Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget p0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;->m:I

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget p1, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;->m:I

    invoke-static {v4}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->access$getPresenterScope(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;)Ly22;

    move-result-object v1

    new-instance v5, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c$a;

    iget-object v6, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;->o:Ljava/lang/Integer;

    invoke-direct {v5, v4, v6, p1, v2}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c$a;-><init>(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;Ljava/lang/Integer;ILe02;)V

    const/4 v6, 0x3

    invoke-static {v1, v2, v2, v5, v6}, Lav0;->a(Ly22;Lo22;Lc32;Lbm3;I)Lnk2;

    move-result-object v1

    iput p1, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;->m:I

    iput v3, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;->l:I

    invoke-virtual {v1, p0}, Lsb4;->u(Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move v7, p1

    move-object p1, p0

    move p0, v7

    :goto_0
    check-cast p1, Ljava/util/List;

    invoke-static {v4}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->access$getProductsDataSource$p(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;)Lxg5;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, v1, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p0, :cond_4

    invoke-static {v4}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->access$getPlaceholderState$p(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;)Lr86;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, v0}, Lr86;->a(Z)V

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
