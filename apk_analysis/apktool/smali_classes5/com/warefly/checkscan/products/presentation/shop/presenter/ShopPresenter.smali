.class public final Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lwg6$b;
.implements Lan$b;
.implements Liv1$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;",
        ">;",
        "Lwg6$b;",
        "Lan$b;",
        "Liv1$a;"
    }
.end annotation


# instance fields
.field private final fetchShopDetailsUseCase:Lh83;

.field private final flowRouter:Luf3;

.field private final isMerchant:Z

.field private final selectionId:I


# direct methods
.method public constructor <init>(IZLh83;Luf3;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;->selectionId:I

    iput-boolean p2, p0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;->isMerchant:Z

    iput-object p3, p0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;->fetchShopDetailsUseCase:Lh83;

    iput-object p4, p0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;->flowRouter:Luf3;

    return-void
.end method


# virtual methods
.method public final loadContent()V
    .locals 5

    iget-object v0, p0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;->fetchShopDetailsUseCase:Lh83;

    iget v1, p0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;->selectionId:I

    iget-boolean v2, p0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;->isMerchant:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lg83;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lg83;-><init>(Lh83;IZLe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v3}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter$a;

    invoke-direct {v1, p0, v4}, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter$a;-><init>(Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onAnonDisclaimerClicked()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;

    if-eqz p0, :cond_0

    const-string v0, "checkscan://signup"

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onConditionsClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;->showInfoBottomSheet(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    new-instance v0, Lkd$p0$a$c;

    iget v1, p0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;->selectionId:I

    const-string v2, "Selections"

    invoke-static {v1, v2}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lkd$p0$a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->c()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;->loadContent()V

    return-void
.end method

.method public onProductClicked(I)V
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/shop/presenter/ShopPresenter;->flowRouter:Luf3;

    new-instance v0, Lfk6;

    invoke-direct {v0, p1}, Lfk6;-><init>(I)V

    const/4 p1, 0x1

    new-array p1, p1, [Llk3;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Luf3;->j([Llk3;)V

    return-void
.end method

.method public final onScanClicked()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/shop/view/ShopView;

    if-eqz p0, :cond_0

    const-string v0, "checkscan://scan"

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
