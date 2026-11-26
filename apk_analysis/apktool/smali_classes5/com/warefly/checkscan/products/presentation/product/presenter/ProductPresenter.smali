.class public final Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lan$b;
.implements Lii6$a;
.implements Lli6$a;
.implements Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/products/presentation/product/view/ProductView;",
        ">;",
        "Lan$b;",
        "Lii6$a;",
        "Lli6$a;",
        "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/a$b;"
    }
.end annotation


# instance fields
.field private final fetchProductDetailsUseCase:Lo73;

.field private final flowRouter:Luf3;

.field private final productContent:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Li57<",
            "Loh6;",
            ">;>;"
        }
    .end annotation
.end field

.field private final productId:I


# direct methods
.method public constructor <init>(ILo73;Luf3;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->productId:I

    iput-object p2, p0, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->fetchProductDetailsUseCase:Lo73;

    iput-object p3, p0, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->flowRouter:Luf3;

    sget-object p1, Li57$b;->a:Li57$b;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->productContent:Lxg5;

    return-void
.end method

.method public static final synthetic access$getProductContent$p(Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->productContent:Lxg5;

    return-object p0
.end method


# virtual methods
.method public final loadContent()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->fetchProductDetailsUseCase:Lo73;

    iget v1, p0, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->productId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ln73;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Ln73;-><init>(Lo73;ILe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v2}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter$a;

    invoke-direct {v1, p0, v3}, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter$a;-><init>(Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onAnonDisclaimerClicked()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductView;

    if-eqz p0, :cond_0

    const-string v0, "checkscan://signup"

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onCollapseShops(Z)V
    .locals 6

    iget-object v0, p0, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->productContent:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li57;

    instance-of v1, v0, Li57$c;

    if-eqz v1, :cond_3

    check-cast v0, Li57$c;

    iget-object v0, v0, Li57$c;->a:Ljava/lang/Object;

    check-cast v0, Loh6;

    iget-object v1, v0, Loh6;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpz3;

    instance-of v4, v3, Lni6;

    if-eqz v4, :cond_0

    check-cast v3, Lni6;

    iget-object v4, v3, Lni6;->a:Ljava/lang/String;

    iget-object v3, v3, Lni6;->c:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lni6;

    invoke-direct {v5, v4, p1, v3}, Lni6;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    move-object v3, v5

    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, v0, Loh6;->a:Ljava/lang/String;

    new-instance v0, Loh6;

    invoke-direct {v0, p1, v2}, Loh6;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance p1, Li57$c;

    invoke-direct {p1, v0}, Li57$c;-><init>(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->productContent:Lxg5;

    :cond_2
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Li57;

    invoke-interface {p0, v0, p1}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    return-void
.end method

.method public onConditionsClicked(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/warefly/checkscan/shared/infoBottomSheet/presentation/b$a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/products/presentation/product/view/ProductView;->showInfoBottomSheet(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    new-instance v0, Lkd$p0$a$a;

    iget v1, p0, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->productId:I

    const-string v2, "Goods"

    invoke-static {v1, v2}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lkd$p0$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->c()V

    iget-object v0, p0, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->productContent:Lxg5;

    new-instance v1, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter$b;-><init>(Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->loadContent()V

    return-void
.end method

.method public final onScanClicked()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductView;

    if-eqz p0, :cond_0

    const-string v0, "checkscan://scan"

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShopItemClicked(I)V
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->flowRouter:Luf3;

    new-instance v0, Lhk6;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lhk6;-><init>(IZ)V

    new-array p1, v1, [Llk3;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Luf3;->j([Llk3;)V

    return-void
.end method
