.class public final Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;
.super Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter<",
        "Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;",
        ">;"
    }
.end annotation


# instance fields
.field private final filterId:I

.field private final flowRouter:Luf3;

.field private final interactor:Lkz5;

.field private operationsCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpy5;",
            ">;"
        }
    .end annotation
.end field

.field private selectedCategory:Lpy5;


# direct methods
.method public constructor <init>(Luf3;ILkz5;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->flowRouter:Luf3;

    iput p2, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->filterId:I

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->interactor:Lkz5;

    return-void
.end method

.method public static final synthetic access$getFilterId$p(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->filterId:I

    return p0
.end method

.method public static final synthetic access$getInteractor$p(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)Lkz5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->interactor:Lkz5;

    return-object p0
.end method

.method public static final synthetic access$getSelectedCategory$p(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)Lpy5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->selectedCategory:Lpy5;

    return-object p0
.end method

.method public static final synthetic access$initOperationsPaginator(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->initOperationsPaginator()V

    return-void
.end method

.method public static final synthetic access$openPageByFilter(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->openPageByFilter(I)V

    return-void
.end method

.method public static final synthetic access$setOperationsCategories$p(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->operationsCategories:Ljava/util/List;

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->onFirstViewAttach$lambda$0(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)V

    return-void
.end method

.method private final initOperationsPaginator()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;->initOperationsPaginator(Lnl3;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->selectedCategory:Lpy5;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpy5;->a()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->selectedCategory:Lpy5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;->showSelectedCategory(Lpy5;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final onFirstViewAttach$lambda$0(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;->showLoadingCategories(Z)V

    :cond_0
    return-void
.end method

.method private final openPageByFilter(I)V
    .locals 6

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->operationsCategories:Ljava/util/List;

    if-eqz v0, :cond_4

    move-object v1, v0

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

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpy5;

    invoke-virtual {v3}, Lpy5;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_2
    if-eq v3, v5, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpy5;

    goto :goto_3

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpy5;

    :goto_3
    iput-object p1, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->selectedCategory:Lpy5;

    :cond_4
    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onCategoryRemoved()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;->removeCategory()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->selectedCategory:Lpy5;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;->refreshOperations()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;->showBeginList()V

    :cond_1
    return-void
.end method

.method public final onCategorySelected(Lpy5;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->selectedCategory:Lpy5;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;->showSelectedCategory(Lpy5;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/operations/base/OperationsPresenter;->refreshOperations()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;->showBeginList()V

    :cond_1
    return-void
.end method

.method public final onChooseCategoryClicked()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->operationsCategories:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;->showCategories(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsView;->showLoadingCategories(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;->interactor:Lkz5;

    iget-object v0, v0, Lkz5;->a:Loz5;

    invoke-interface {v0}, Loz5;->c()Lmz7;

    move-result-object v0

    sget-object v2, Lne7;->c:Lhe7;

    invoke-virtual {v0, v2}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v2, Lqc;

    invoke-direct {v2, p0}, Lqc;-><init>(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)V

    new-instance v3, Luz7;

    invoke-direct {v3, v0, v2}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter$c;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/operations/allOperations/presenter/AllOperationsPresenter;)V

    invoke-static {v3, v0, v2}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
