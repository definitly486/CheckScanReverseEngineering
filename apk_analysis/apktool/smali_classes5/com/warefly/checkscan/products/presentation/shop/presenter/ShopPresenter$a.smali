.class public final Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter$a;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.products.presentation.shop.presenter.ShopPresenter$loadContent$1"
    f = "ShopPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;->loadContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Li57<",
        "+",
        "Lmu7;",
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
.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter$a;->m:Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
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

    new-instance v0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter$a;

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter$a;->m:Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter$a;-><init>(Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;Le02;)V

    iput-object p1, v0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter$a;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Li57;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter$a;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter$a;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter$a;->l:Ljava/lang/Object;

    check-cast p1, Li57;

    instance-of v0, p1, Li57$a;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter$a;->m:Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;

    if-eqz p1, :cond_0

    invoke-interface {p1, v1}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;->showError(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;

    if-eqz p0, :cond_a

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;->showLoading(Z)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Li57$b;->a:Li57$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;

    if-eqz p0, :cond_a

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;->showLoading(Z)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Li57$c;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;->showError(Z)V

    :cond_3
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;->showLoading(Z)V

    :cond_4
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;

    if-eqz v0, :cond_5

    move-object v2, p1

    check-cast v2, Li57$c;

    iget-object v2, v2, Li57$c;->a:Ljava/lang/Object;

    check-cast v2, Lmu7;

    iget-object v3, v2, Lmu7;->c:Ljava/lang/String;

    iget-object v2, v2, Lmu7;->d:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;->showImage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;

    if-eqz v0, :cond_6

    move-object v2, p1

    check-cast v2, Li57$c;

    iget-object v2, v2, Li57$c;->a:Ljava/lang/Object;

    check-cast v2, Lmu7;

    iget-boolean v2, v2, Lmu7;->a:Z

    invoke-interface {v0, v2}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;->showScanButton(Z)V

    :cond_6
    check-cast p1, Li57$c;

    iget-object p1, p1, Li57$c;->a:Ljava/lang/Object;

    check-cast p1, Lmu7;

    iget-boolean v0, p1, Lmu7;->a:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;

    if-eqz v0, :cond_7

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;->showToolbarTitle(Z)V

    :cond_7
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;->setMerchantScrollListener()V

    :cond_8
    iget-object v0, p1, Lmu7;->b:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;

    if-eqz v1, :cond_9

    invoke-interface {v1, v0}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;->setToolbarTitle(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;

    if-eqz p0, :cond_a

    iget-object p1, p1, Lmu7;->e:Ljava/util/ArrayList;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;->showContent(Ljava/util/List;)V

    :cond_a
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
