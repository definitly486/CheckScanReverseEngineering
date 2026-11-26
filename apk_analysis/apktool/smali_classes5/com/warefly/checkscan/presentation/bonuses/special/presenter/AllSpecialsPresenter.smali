.class public final Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lk58$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;",
        ">;",
        "Lk58$a;"
    }
.end annotation


# instance fields
.field private final blockInteractor:Lbm0;

.field private final flowRouter:Luf3;

.field private final sendBannerWatchUseCase:Lmo7;


# direct methods
.method public constructor <init>(Luf3;Lbm0;Lmo7;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;->blockInteractor:Lbm0;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;->sendBannerWatchUseCase:Lmo7;

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;->loadSpecials$lambda$0(Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;)V

    return-void
.end method

.method private final loadSpecials()V
    .locals 5

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;->showLoadingPage(Z)V

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;->blockInteractor:Lbm0;

    sget-object v2, Lfc0;->PROMO:Lfc0;

    iget-object v3, v0, Lbm0;->a:Lrp0;

    iget v0, v0, Lbm0;->e:I

    const/4 v4, 0x0

    invoke-interface {v3, v2, v0, v4}, Lrp0;->b(Lfc0;ILjava/lang/Integer;)Lmz7;

    move-result-object v0

    new-instance v2, Lbm0$h;

    sget-object v3, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter$a;->f:Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter$a;

    invoke-direct {v2, v3}, Lbm0$h;-><init>(Lnl3;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lp08;

    invoke-direct {v3, v0, v2}, Lp08;-><init>(Lmz7;Lxl3;)V

    sget-object v0, Lne7;->c:Lhe7;

    invoke-virtual {v3, v0}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v2, Lsc;

    invoke-direct {v2, p0}, Lsc;-><init>(Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;)V

    new-instance v3, Luz7;

    invoke-direct {v3, v0, v2}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter$c;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;)V

    invoke-static {v3, v0, v2}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    invoke-static {p0, v0, v4, v1, v4}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final loadSpecials$lambda$0(Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;)V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;->showLoadingPage(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onBannerShown(I)V
    .locals 1

    new-instance v0, Lkd$e$c$g$b;

    invoke-direct {v0, p1}, Lkd$e$c$g$b;-><init>(I)V

    invoke-virtual {v0}, Lkd;->c()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;->sendBannerWatchUseCase:Lmo7;

    invoke-virtual {p0, p1}, Lmo7;->a(I)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;->loadSpecials()V

    return-void
.end method

.method public final onRefresh()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;->loadSpecials()V

    return-void
.end method

.method public onSpecialAdClicked(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lb06;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lb06;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lb06;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lkd$e0$f;

    invoke-direct {v1, v0}, Lkd$e0$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;->showAdInfoDialog(Lb06;)V

    :cond_0
    return-void
.end method

.method public onSpecialClicked(Lhc0$b;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lhc0$b;->c:Lb06;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb06;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lkd$e0$e;

    invoke-direct {v1, v0}, Lkd$e0$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lkd;->a()V

    :cond_0
    new-instance v0, Lkd$e$c$g$a;

    iget v1, p1, Lhc0$b;->e:I

    invoke-direct {v0, v1}, Lkd$e$c$g$a;-><init>(I)V

    invoke-virtual {v0}, Lkd;->c()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;

    if-eqz p0, :cond_1

    iget-object p1, p1, Lhc0$b;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
