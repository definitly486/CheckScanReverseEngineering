.class public final Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;",
        ">;"
    }
.end annotation


# instance fields
.field private final catalogInteractor:Lp61;

.field private final cheueInteractor:Lxd1;

.field private final flowRouter:Luf3;

.field private loadShop:Z

.field private productsPaginator:Ls26;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls26<",
            "Lui6;",
            ">;"
        }
    .end annotation
.end field

.field private shopsPaginator:Ls26;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls26<",
            "Loa4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp61;Lxd1;Luf3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->catalogInteractor:Lp61;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->cheueInteractor:Lxd1;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->flowRouter:Luf3;

    return-void
.end method

.method public static final synthetic access$getCatalogInteractor$p(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;)Lp61;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->catalogInteractor:Lp61;

    return-object p0
.end method

.method public static final synthetic access$getCheueInteractor$p(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;)Lxd1;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->cheueInteractor:Lxd1;

    return-object p0
.end method

.method public static final synthetic access$setLoadShop$p(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->loadShop:Z

    return-void
.end method

.method private final loadNextItems()V
    .locals 1

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->loadShop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->loadNextShopsInCheques()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->loadNextProductInCheques()V

    return-void
.end method

.method private final loadNextProductInCheques()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->productsPaginator:Ls26;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls26;->a()V

    :cond_0
    return-void
.end method

.method private final loadNextShopsInCheques()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->shopsPaginator:Ls26;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls26;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onBackClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onChequeClick(I)V
    .locals 1

    new-instance v0, Lkd$g$c$a;

    invoke-direct {v0}, Lkd$g$c$a;-><init>()V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->flowRouter:Luf3;

    new-instance v0, Lyf7;

    invoke-direct {v0, p1}, Lyf7;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onChipClick(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;->setItemFromChip(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onProductInChequeClick(I)V
    .locals 3

    new-instance v0, Lkd$h0$b$a;

    const-string v1, "SP_ITEM_FROM_CHEQUE_CLICKED"

    const-string v2, "Search products"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Products events"

    invoke-direct {v0, v2, v1}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->flowRouter:Luf3;

    new-instance v0, Lzf7;

    invoke-direct {v0, p1}, Lzf7;-><init>(I)V

    const/4 p1, 0x1

    new-array p1, p1, [Llk3;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {p0, p1}, Luf3;->j([Llk3;)V

    return-void
.end method

.method public final scrollChanged(III)V
    .locals 2

    sub-int/2addr p3, p2

    int-to-double p1, p1

    int-to-double v0, p3

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    cmpl-double p1, p1, v0

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->loadNextItems()V

    :cond_0
    return-void
.end method

.method public final searchItem(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$g$c$b;

    new-instance v1, Lb36;

    const-string v2, "Search"

    invoke-direct {v1, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lkd$g$c;-><init>(Ljava/io/Serializable;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->productsPaginator:Ls26;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ls26;->c:Ls26$l;

    invoke-interface {v0}, Ls26$l;->release()V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->shopsPaginator:Ls26;

    if-eqz v0, :cond_1

    iget-object v0, v0, Ls26;->c:Ls26$l;

    invoke-interface {v0}, Ls26$l;->release()V

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;->hideShops()V

    :cond_2
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/newSearchProducts/view/NewSearchProductsView;->hideProducts()V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->loadShop:Z

    new-instance v0, Ls26;

    new-instance v1, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$a;

    invoke-direct {v1, p0, p1}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;Ljava/lang/String;)V

    new-instance v2, Lhn5;

    new-instance v3, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$b;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;)V

    new-instance v4, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$c;

    invoke-direct {v4, p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;)V

    invoke-direct {v2, v3, v4}, Lhn5;-><init>(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$b;Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$c;)V

    invoke-direct {v0, v1, v2}, Ls26;-><init>(Lnl3;Ls26$m;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->productsPaginator:Ls26;

    invoke-virtual {v0}, Ls26;->c()V

    new-instance v0, Ls26;

    new-instance v1, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$d;

    invoke-direct {v1, p0, p1}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;Ljava/lang/String;)V

    new-instance p1, Lmn5;

    new-instance v2, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$e;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;)V

    invoke-direct {p1, v2}, Lmn5;-><init>(Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter$e;)V

    invoke-direct {v0, v1, p1}, Ls26;-><init>(Lnl3;Ls26$m;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/newSearchProducts/presenter/NewSearchProductPresenter;->shopsPaginator:Ls26;

    invoke-virtual {v0}, Ls26;->c()V

    return-void
.end method
