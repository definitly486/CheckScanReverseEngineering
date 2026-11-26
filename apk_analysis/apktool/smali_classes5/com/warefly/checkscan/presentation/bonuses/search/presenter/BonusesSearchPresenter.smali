.class public final Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Liv7;
.implements Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a;
.implements Lbv7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;",
        ">;",
        "Liv7;",
        "Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a<",
        "Lcs0;",
        "Ljava/lang/String;",
        ">;",
        "Lbv7;"
    }
.end annotation


# instance fields
.field private final controller:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a<",
            "Lcs0;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final flowRouter:Luf3;

.field private final queryObservable:Lgg3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final querySubject:Lhi0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhi0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final searchInteractor:Llp0;


# direct methods
.method public constructor <init>(Llp0;Luf3;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->searchInteractor:Llp0;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->flowRouter:Luf3;

    new-instance p1, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$a;

    const-string v5, "invalidateAndSubscribe()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    const-string v4, "invalidateAndSubscribe"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p1, v0, v2}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;-><init>(Lll3;Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a$a;)V

    iput-object p1, v2, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->controller:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    new-instance p0, Lhi0;

    invoke-direct {p0}, Lhi0;-><init>()V

    iput-object p0, v2, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->querySubject:Lhi0;

    sget-object p1, Ln00;->LATEST:Ln00;

    invoke-virtual {p0, p1}, Ltq5;->h(Ln00;)Lgg3;

    move-result-object p0

    iput-object p0, v2, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->queryObservable:Lgg3;

    return-void
.end method

.method public static final synthetic access$getController$p(Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;)Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->controller:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    return-object p0
.end method

.method public static final synthetic access$getSearchInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;)Llp0;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->searchInteractor:Llp0;

    return-object p0
.end method

.method public static final synthetic access$invalidateAndSubscribe(Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->invalidateAndSubscribe()V

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$f;Ljava/lang/Object;)Ldt6;
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->onFirstViewAttach$lambda$1(Lnl3;Ljava/lang/Object;)Ldt6;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->onFirstViewAttach$lambda$0(Lnl3;Ljava/lang/Object;)V

    return-void
.end method

.method private final invalidateAndSubscribe()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->searchInteractor:Llp0;

    iget-object v0, v0, Llp0;->i:Ltq5;

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Ltq5;->g(Lhe7;)Lxr5;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltq5;->e(Lhe7;)Lqr5;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lyb8;->h(Lqr5;Lcom/warefly/checkscan/presentation/queue/presenter/QueuePresenter$d;Lnl3;I)Lhh4;

    move-result-object v0

    const-string v1, "invalidateAndSubscribe"

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method private static final onFirstViewAttach$lambda$0(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onFirstViewAttach$lambda$1(Lnl3;Ljava/lang/Object;)Ldt6;
    .locals 0

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldt6;

    return-object p0
.end method


# virtual methods
.method public final loadNext()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->controller:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->a()Lqp1;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v2, v1, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic loadNextPage(ILjava/lang/Object;)Lmz7;
    .locals 0

    .line 37
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->loadNextPage(ILjava/lang/String;)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public loadNextPage(ILjava/lang/String;)Lmz7;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lmz7<",
            "Lk57<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->searchInteractor:Llp0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Llp0;->b:Lrp0;

    iget v1, p0, Llp0;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, p1, v1}, Lrp0;->h(Ljava/lang/String;ILjava/lang/Integer;)Lp08;

    move-result-object p1

    new-instance p2, Lip0;

    invoke-direct {p2, p0}, Lip0;-><init>(Llp0;)V

    new-instance p0, Ljv;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Ljv;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lp08;

    invoke-direct {p2, p1, p0}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method

.method public final onBackClick()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->searchInteractor:Llp0;

    iget-object v1, v0, Llp0;->e:Lhi0;

    new-instance v2, Lx68$c;

    iget-object v3, v0, Llp0;->h:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lx68$c;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lhi0;->onNext(Ljava/lang/Object;)V

    iget-object v1, v0, Llp0;->f:Lhi0;

    new-instance v2, Lx68$c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lx68$c;-><init>(I)V

    invoke-virtual {v1, v2}, Lhi0;->onNext(Ljava/lang/Object;)V

    iget-object v0, v0, Llp0;->g:Lhi0;

    new-instance v1, Lx68$c;

    invoke-direct {v1, v3}, Lx68$c;-><init>(I)V

    invoke-virtual {v0, v1}, Lhi0;->onNext(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onChipClick(Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$e$c$f$a;

    const-string v1, "suggest"

    invoke-static {v1, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lkd$e$c$f;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;->setQueryInSearchView(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->controller:Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/presentation/bonuses/onlineShops/presenter/a;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->searchInteractor:Llp0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Llp0;->d:I

    iget-object v2, v0, Llp0;->b:Lrp0;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lrp0;->j(Ljava/lang/String;ILjava/lang/Integer;)Lp08;

    move-result-object v3

    new-instance v5, Lhp0;

    invoke-direct {v5, v0}, Lhp0;-><init>(Llp0;)V

    new-instance v6, Lwq;

    const/4 v7, 0x2

    invoke-direct {v6, v5, v7}, Lwq;-><init>(Ljava/lang/Object;I)V

    new-instance v5, Lh08;

    invoke-direct {v5, v3, v6}, Lh08;-><init>(Lmz7;Lxl3;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p1, v4, v1}, Lrp0;->h(Ljava/lang/String;ILjava/lang/Integer;)Lp08;

    move-result-object p1

    new-instance v1, Lkp0;

    invoke-direct {v1, v0}, Lkp0;-><init>(Llp0;)V

    new-instance v2, Lxq;

    invoke-direct {v2, v1, v7}, Lxq;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lh08;

    invoke-direct {v1, p1, v2}, Lh08;-><init>(Lmz7;Lxl3;)V

    new-array p1, v7, [Lqq1;

    aput-object v5, p1, v4

    const/4 v2, 0x1

    aput-object v1, p1, v2

    new-instance v1, Ltp1;

    invoke-direct {v1, p1}, Ltp1;-><init>([Lqq1;)V

    new-instance p1, Lxo0;

    invoke-direct {p1, v0}, Lxo0;-><init>(Llp0;)V

    invoke-virtual {v1, p1}, Lqp1;->c(Lqq1;)Lrp1;

    move-result-object p1

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {p1, v0}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, v0}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object p1

    const-string v0, "onChipClick"

    invoke-virtual {p0, p1, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method public onConfirmAdultClick()V
    .locals 0

    return-void
.end method

.method public final onFavoritePromocode(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->searchInteractor:Llp0;

    iget-object v1, v0, Llp0;->a:Lt42;

    new-instance v2, Lh63;

    int-to-long v3, p1

    invoke-direct {v2, p2, v3, v4}, Lh63;-><init>(ZJ)V

    invoke-interface {v1, v2}, Lt42;->f(Lh63;)Lqp1;

    move-result-object v2

    invoke-interface {v1, v3, v4}, Lt42;->b(J)Lmz7;

    move-result-object v1

    invoke-virtual {v2, v1}, Lqp1;->d(Lmz7;)Lrz7;

    move-result-object v1

    new-instance v2, Lcp0;

    invoke-direct {v2, v0, p1}, Lcp0;-><init>(Llp0;I)V

    new-instance v0, Lwo0;

    invoke-direct {v0, v2}, Lwo0;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lh08;

    invoke-direct {v2, v1, v0}, Lh08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v2, v0}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$c;

    invoke-direct {v1, p2, p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$c;-><init>(ZILcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p2, v1, p1}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object p1

    const-string p2, "onFavoritePromocode"

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method public onFavouriteClick(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->searchInteractor:Llp0;

    iget-object v1, v0, Llp0;->b:Lrp0;

    invoke-interface {v1, p1, p2}, Lrp0;->t(IZ)Lqp1;

    move-result-object v1

    iget-object v2, v0, Llp0;->c:Laa;

    int-to-long v3, p1

    invoke-interface {v2, v3, v4}, Laa;->j(J)Lmz7;

    move-result-object v2

    invoke-virtual {v1, v2}, Lqp1;->d(Lmz7;)Lrz7;

    move-result-object v1

    new-instance v2, Lep0;

    invoke-direct {v2, v0, p1}, Lep0;-><init>(Llp0;I)V

    new-instance p1, Lvo0;

    invoke-direct {p1, v2}, Lvo0;-><init>(Ljava/lang/Object;)V

    new-instance v0, Le08;

    invoke-direct {v0, v1, p1}, Le08;-><init>(Lmz7;Lxl3;)V

    sget-object p1, Lne7;->c:Lhe7;

    invoke-virtual {v0, p1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object p1

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$d;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;Z)V

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object p1

    const-string p2, "onFavouriteClick"

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;->setSearchView()V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->queryObservable:Lgg3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lne7;->b:Lhe7;

    const-string v2, "unit is null"

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "scheduler is null"

    invoke-static {v1, v2}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Llg3;

    invoke-direct {v2, v0, v1}, Llg3;-><init>(Lgg3;Lhe7;)V

    new-instance v0, Lnl0;

    const/4 v1, 0x1

    sget-object v3, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$e;->f:Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$e;

    invoke-direct {v0, v3, v1}, Lnl0;-><init>(Lnl3;I)V

    new-instance v1, Lng3;

    invoke-direct {v1, v2, v0}, Lng3;-><init>(Lgg3;Lqx1;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$f;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;)V

    new-instance v2, Ll3;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Ll3;-><init>(Ljava/lang/Object;I)V

    sget v0, Lgg3;->b:I

    const-string v3, "bufferSize"

    invoke-static {v0, v3}, Lnq5;->b(ILjava/lang/String;)V

    instance-of v3, v1, Lkd7;

    if-eqz v3, :cond_2

    check-cast v1, Lkd7;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lrg3;->c:Lrg3;

    goto :goto_0

    :cond_1
    new-instance v1, Lnh3$a;

    invoke-direct {v1, v0, v2}, Lnh3$a;-><init>(Ljava/lang/Object;Lxl3;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v3, Lsh3;

    invoke-direct {v3, v1, v2, v0}, Lsh3;-><init>(Lng3;Ll3;I)V

    move-object v0, v3

    :goto_0
    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lgg3;->h(Lhe7;)Lqh3;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgg3;->c(Lhe7;)Leh3;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lyb8;->i(Lgg3;Lnl3;I)Lih4;

    move-result-object v0

    const-string v1, "queryObservable"

    invoke-virtual {p0, v0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy(Lcp2;Ljava/lang/String;)V

    return-void
.end method

.method public onMoreClick()V
    .locals 4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->flowRouter:Luf3;

    new-instance v1, Lth7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->querySubject:Lhi0;

    invoke-virtual {p0}, Lhi0;->j()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2, v3}, Lth7;-><init>(Ljava/lang/String;IIZ)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    aput-object v1, p0, v3

    invoke-virtual {v0, p0}, Luf3;->j([Llk3;)V

    return-void
.end method

.method public onOrdClick(Lb06;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;->showOrdBottomSheet(Lb06;)V

    :cond_0
    return-void
.end method

.method public final onPromocodeClicked(I)V
    .locals 3

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->flowRouter:Luf3;

    sget-object v0, Lsq0;->COUPON_SEARCH:Lsq0;

    new-instance v1, Lqf7;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lqf7;-><init>(ILsq0;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v1}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onShopClick(I)V
    .locals 3

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->flowRouter:Luf3;

    sget-object v0, Lsq0;->ONLINE_SHOP:Lsq0;

    new-instance v1, Lqf7;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lqf7;-><init>(ILsq0;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v1}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->querySubject:Lhi0;

    invoke-virtual {p0, p1}, Lhi0;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
