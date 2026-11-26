.class public final Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$d;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Ldm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.products.presentation.products.presenter.ProductsPresenter$setUpPaginator$3"
    f = "ProductsPresenter.kt"
    l = {}
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
        "Ldm3<",
        "Lka3;",
        "Ljava/util/List<",
        "+",
        "Lpz3;",
        ">;",
        "Le02<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lpz3;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:Lka3;

.field public synthetic m:Ljava/util/List;

.field public final synthetic n:Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$d;->n:Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lka3;

    check-cast p2, Ljava/util/List;

    check-cast p3, Le02;

    new-instance v0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$d;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$d;->n:Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    invoke-direct {v0, p0, p3}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$d;-><init>(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$d;->l:Lka3;

    check-cast p2, Ljava/util/List;

    iput-object p2, v0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$d;->m:Ljava/util/List;

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {v0, p0}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$d;->l:Lka3;

    iget-object v0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$d;->m:Ljava/util/List;

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$d;->n:Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->access$getAnonDisclaimer(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
