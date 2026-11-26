.class public final Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lwg6$b;
.implements Lia3$b;
.implements Lan$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;",
        ">;",
        "Lwg6$b;",
        "Lia3$b;",
        "Lan$b;"
    }
.end annotation


# instance fields
.field private final fetchProductsByFilterUseCase:Lp73;

.field private final fetchProductsFiltersUseCase:Lq73;

.field private final filtersState:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Lka3;",
            ">;"
        }
    .end annotation
.end field

.field private final flowRouter:Luf3;

.field private final placeholderState:Lr86;

.field private final preferencesRepository:Ljf6;

.field private final productsDataSource:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Ljava/util/List<",
            "Lpz3;",
            ">;>;"
        }
    .end annotation
.end field

.field private productsPaginator:Lr26;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr26<",
            "Lpz3;",
            ">;"
        }
    .end annotation
.end field

.field private final selectedFilter:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq73;Lp73;Ljf6;Lr86;Luf3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->fetchProductsFiltersUseCase:Lq73;

    iput-object p2, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->fetchProductsByFilterUseCase:Lp73;

    iput-object p3, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->preferencesRepository:Ljf6;

    iput-object p4, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->placeholderState:Lr86;

    iput-object p5, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->flowRouter:Luf3;

    new-instance p1, Lka3;

    sget-object p2, Lkx2;->b:Lkx2;

    invoke-direct {p1, p2}, Lka3;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->filtersState:Lxg5;

    const/4 p1, 0x0

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->selectedFilter:Lxg5;

    invoke-static {p2}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->productsDataSource:Lxg5;

    return-void
.end method

.method public static final synthetic access$getAnonDisclaimer(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->getAnonDisclaimer()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFetchProductsByFilterUseCase$p(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;)Lp73;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->fetchProductsByFilterUseCase:Lp73;

    return-object p0
.end method

.method public static final synthetic access$getFetchProductsFiltersUseCase$p(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;)Lq73;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->fetchProductsFiltersUseCase:Lq73;

    return-object p0
.end method

.method public static final synthetic access$getFiltersState$p(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->filtersState:Lxg5;

    return-object p0
.end method

.method public static final synthetic access$getPlaceholderState$p(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;)Lr86;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->placeholderState:Lr86;

    return-object p0
.end method

.method public static final synthetic access$getPresenterScope(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;)Ly22;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getProductsDataSource$p(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->productsDataSource:Lxg5;

    return-object p0
.end method

.method public static final synthetic access$getSelectedFilter$p(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;)Lxg5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->selectedFilter:Lxg5;

    return-object p0
.end method

.method private final getAnonDisclaimer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcn;

    invoke-direct {v0}, Lcn;-><init>()V

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->preferencesRepository:Ljf6;

    invoke-interface {p0}, Ljf6;->G0()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final loadFilters()V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$b;-><init>(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method private final setUpPaginator(Ljava/lang/Integer;)V
    .locals 8

    iget-object v0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->productsDataSource:Lxg5;

    :cond_0
    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    sget-object v2, Lkx2;->b:Lkx2;

    invoke-interface {v0, v1, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;->showContent(Ljava/util/List;)V

    :cond_1
    new-instance v0, Lr26;

    new-instance v1, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$c;-><init>(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;Ljava/lang/Integer;Le02;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object p1

    new-instance v3, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$a;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$a;-><init>(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;)V

    iget-object v4, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->filtersState:Lxg5;

    iget-object v5, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->productsDataSource:Lxg5;

    new-instance v6, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$d;

    invoke-direct {v6, p0, v2}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter$d;-><init>(Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;Le02;)V

    new-instance v7, Lff3;

    invoke-direct {v7, v4, v5, v6}, Lff3;-><init>(Lhd3;Lhd3;Ldm3;)V

    invoke-direct {v0, v1, p1, v3, v7}, Lr26;-><init>(Lbm3;Ly22;Lr26$a;Lff3;)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lr26;->e:Z

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, v0, Lr26;->d:Lz68;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2, p1}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-boolean p1, v0, Lr26;->f:Z

    invoke-virtual {v0}, Lr26;->a()V

    iput-object v0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->productsPaginator:Lr26;

    return-void
.end method


# virtual methods
.method public final loadContent()V
    .locals 1

    invoke-direct {p0}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->loadFilters()V

    iget-object v0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->selectedFilter:Lxg5;

    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->setUpPaginator(Ljava/lang/Integer;)V

    return-void
.end method

.method public final loadNextPage()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->productsPaginator:Lr26;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lr26;->a()V

    :cond_0
    return-void
.end method

.method public onAnonDisclaimerClicked()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;

    if-eqz p0, :cond_0

    const-string v0, "checkscan://signup"

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onBackClicked()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onFilterClicked(I)V
    .locals 6

    iget-object v0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->selectedFilter:Lxg5;

    :cond_0
    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->filtersState:Lxg5;

    :cond_1
    invoke-interface {v1}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lka3;

    iget-object v2, v2, Lka3;->a:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Loa3;

    iget v5, v4, Loa3;->a:I

    if-ne p1, v5, :cond_2

    const/4 v5, 0x1

    invoke-static {v4, v5}, Loa3;->d(Loa3;Z)Loa3;

    move-result-object v4

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    invoke-static {v4, v5}, Loa3;->d(Loa3;Z)Loa3;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v2, Lka3;

    invoke-direct {v2, v3}, Lka3;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v0, v2}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->setUpPaginator(Ljava/lang/Integer;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 2

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;->showLoading(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->loadContent()V

    return-void
.end method

.method public onProductClicked(I)V
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->flowRouter:Luf3;

    new-instance v0, Lgk6;

    new-instance v1, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Product;

    invoke-direct {v1, p1}, Lcom/warefly/checkscan/products/presentation/flow/ProductsReason$Product;-><init>(I)V

    invoke-direct {v0, v1}, Lgk6;-><init>(Lcom/warefly/checkscan/products/presentation/flow/ProductsReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final refreshContent()V
    .locals 2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;->showError(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;->showLoading(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/products/presenter/ProductsPresenter;->loadContent()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/warefly/checkscan/products/presentation/products/view/ProductsView;->turnOffRefreshing()V

    :cond_2
    return-void
.end method
