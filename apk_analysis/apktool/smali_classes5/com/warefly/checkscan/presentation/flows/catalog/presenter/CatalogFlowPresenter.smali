.class public final Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView;",
        ">;"
    }
.end annotation


# instance fields
.field private final deeplink:Lcom/warefly/checkscan/presentation/Deeplink$Catalog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/Deeplink$Catalog;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$Catalog;

    return-void
.end method

.method private final loadAdmitad(J)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView;

    if-eqz p0, :cond_0

    new-instance v0, Llf7;

    invoke-direct {v0, p1, p2}, Llf7;-><init>(J)V

    const/4 p1, 0x1

    new-array p1, p1, [Llk3;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadAllCategories()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Llk3;

    sget-object v1, Luf7;->a:Luf7;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadBonusProgram(J)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView;

    if-eqz p0, :cond_0

    new-instance v0, Lph7;

    invoke-direct {v0, p1, p2}, Lph7;-><init>(J)V

    const/4 p1, 0x1

    new-array p1, p1, [Llk3;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadCategory(ILjava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView;

    if-eqz p0, :cond_0

    new-instance v0, Lmh7;

    sget-object v4, Luv7;->Category:Luv7;

    const/16 v5, 0xc

    const/4 v3, 0x0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lmh7;-><init>(ILjava/lang/String;Lkd$o0;Luv7;I)V

    const/4 p1, 0x1

    new-array p1, p1, [Llk3;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadCoupon(J)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView;

    if-eqz p0, :cond_0

    new-instance v0, Lgg7;

    invoke-direct {v0, p1, p2}, Lgg7;-><init>(J)V

    const/4 p1, 0x1

    new-array p1, p1, [Llk3;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadFavorites()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView;

    if-eqz p0, :cond_0

    new-instance v0, Log7;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Log7;-><init>(Z)V

    new-array v1, v1, [Llk3;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadOnlineShop(I)V
    .locals 3

    new-instance v0, Lkd$e$a$a$f$c;

    const-string v1, "Deeplink"

    invoke-direct {v0, p1, v1}, Lkd$e$a$a$f;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lkd$e$d$g$d;

    invoke-static {p1, v1}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lkd$e$d$g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView;

    if-eqz p0, :cond_0

    new-instance v0, Llf7;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Llf7;-><init>(J)V

    const/4 p1, 0x1

    new-array p1, p1, [Llk3;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadPromocode(I)V
    .locals 3

    new-instance v0, Lwd;

    const-string v1, "Deeplink"

    invoke-static {p1, v1}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v2}, Lkd$e$d$g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lqd;

    invoke-direct {v0, p1, v1}, Lkd$e$a$a$f;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView;

    if-eqz p0, :cond_0

    new-instance v0, Lgg7;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lgg7;-><init>(J)V

    const/4 p1, 0x1

    new-array p1, p1, [Llk3;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadSearch(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView;

    if-eqz p0, :cond_0

    new-instance v0, Lsf7;

    invoke-direct {v0, p1}, Lsf7;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Llk3;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadSelection(ILjava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView;

    if-eqz p0, :cond_0

    new-instance v0, Lmh7;

    sget-object v4, Luv7;->Selection:Luv7;

    const/16 v5, 0xc

    const/4 v3, 0x0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lmh7;-><init>(ILjava/lang/String;Lkd$o0;Luv7;I)V

    const/4 p1, 0x1

    new-array p1, p1, [Llk3;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method

.method private final loadSpecials()V
    .locals 3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Llk3;

    sget-object v1, Lnf7;->a:Lnf7;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 3

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowPresenter;->deeplink:Lcom/warefly/checkscan/presentation/Deeplink$Catalog;

    instance-of v1, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$BonusesSearch;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$BonusesSearch;

    iget-object v0, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$BonusesSearch;->d:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowPresenter;->loadSearch(Ljava/lang/String;)V

    return-void

    :cond_0
    instance-of v1, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;

    const-string v2, ""

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;

    iget v1, v1, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;->d:I

    check-cast v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;

    iget-object v0, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowPresenter;->loadSelection(ILjava/lang/String;)V

    return-void

    :cond_2
    instance-of v1, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Admitad;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Admitad;

    iget-wide v0, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Admitad;->d:J

    invoke-direct {p0, v0, v1}, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowPresenter;->loadAdmitad(J)V

    return-void

    :cond_3
    instance-of v1, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Coupon;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Coupon;

    iget-wide v0, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Coupon;->d:J

    invoke-direct {p0, v0, v1}, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowPresenter;->loadCoupon(J)V

    return-void

    :cond_4
    instance-of v1, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$OnlineShop;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$OnlineShop;

    iget v0, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$OnlineShop;->d:I

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowPresenter;->loadOnlineShop(I)V

    return-void

    :cond_5
    instance-of v1, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Promocode;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Promocode;

    iget v0, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Promocode;->d:I

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowPresenter;->loadPromocode(I)V

    return-void

    :cond_6
    instance-of v1, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Category;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Category;

    iget v1, v1, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Category;->d:I

    check-cast v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Category;

    iget-object v0, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Category;->e:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    move-object v2, v0

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowPresenter;->loadCategory(ILjava/lang/String;)V

    return-void

    :cond_8
    instance-of v1, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Favorites;

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowPresenter;->loadFavorites()V

    return-void

    :cond_9
    instance-of v1, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Specials;

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowPresenter;->loadSpecials()V

    return-void

    :cond_a
    instance-of v1, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$BonusProgram;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$BonusProgram;

    iget-wide v0, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$BonusProgram;->d:J

    invoke-direct {p0, v0, v1}, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowPresenter;->loadBonusProgram(J)V

    return-void

    :cond_b
    instance-of v0, v0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog$OnlineShopsAllCategories;

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/flows/catalog/presenter/CatalogFlowPresenter;->loadAllCategories()V

    :cond_c
    return-void
.end method
