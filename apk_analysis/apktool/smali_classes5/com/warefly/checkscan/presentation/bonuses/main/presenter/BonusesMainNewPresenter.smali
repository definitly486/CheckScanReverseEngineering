.class public final Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lm81;
.implements Lov0$a;
.implements Ljv7;
.implements Ll58$c;
.implements Lpw8$b;
.implements Ldw0$a;
.implements Lrw8;
.implements Les3$a;
.implements Lpo0$a;
.implements Lb7$a;
.implements Lr88$a;
.implements Lmr0$a;
.implements Luu5$a;
.implements Lz44;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;",
        ">;",
        "Lm81;",
        "Lov0$a;",
        "Ljv7;",
        "Ll58$c;",
        "Lpw8$b;",
        "Ldw0$a;",
        "Lrw8;",
        "Les3$a;",
        "Lpo0$a;",
        "Lb7$a;",
        "Lr88$a;",
        "Lmr0$a;",
        "Luu5$a;",
        "Lz44;"
    }
.end annotation


# instance fields
.field private final activateAccountPromocodeUseCase:Lk6;

.field private final avatarState:Lkz;

.field private final bonusBlockInteractor:Lwl0;

.field private final bonusesAutoScrollState:Lqp0;

.field private final desktopInteractor:Lzl2;

.field private final fetchHidableBannerLinkUseCase:Li73;

.field private final flowRouter:Luf3;

.field private final notificationsInteractor:Lpp5;

.field private final preferencesRepository:Ljf6;

.field private final scrollDirection:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Lti7;",
            ">;"
        }
    .end annotation
.end field

.field private final sendBannerWatchUseCase:Lmo7;

.field private stepActionAfterSignUp:Ljava/lang/String;

.field private final subscriptionInteractor:Lic8;


# direct methods
.method public constructor <init>(Lwl0;Luf3;Lzl2;Ljf6;Li73;Lk6;Lmo7;Lpp5;Lic8;Lkz;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusBlockInteractor:Lwl0;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->flowRouter:Luf3;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->desktopInteractor:Lzl2;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->preferencesRepository:Ljf6;

    iput-object p5, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->fetchHidableBannerLinkUseCase:Li73;

    iput-object p6, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->activateAccountPromocodeUseCase:Lk6;

    iput-object p7, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->sendBannerWatchUseCase:Lmo7;

    iput-object p8, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->notificationsInteractor:Lpp5;

    iput-object p9, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->subscriptionInteractor:Lic8;

    iput-object p10, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->avatarState:Lkz;

    new-instance p1, Lqp0;

    new-instance p2, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$a;

    invoke-direct {p2, p0}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    invoke-direct {p1, p2}, Lqp0;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$a;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusesAutoScrollState:Lqp0;

    sget-object p1, Lti7;->Up:Lti7;

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->scrollDirection:Lxg5;

    return-void
.end method

.method public static final synthetic access$getBonusBlockInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)Lwl0;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusBlockInteractor:Lwl0;

    return-object p0
.end method

.method public static final synthetic access$getBonusesAutoScrollState$p(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)Lqp0;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusesAutoScrollState:Lqp0;

    return-object p0
.end method

.method public static final synthetic access$getPresenterScope(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)Ly22;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handlePromocodeActivationResult(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Lo6;)Lj59;
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->handlePromocodeActivationResult(Lo6;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->onFirstViewAttach$lambda$1(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Ljava/lang/Object;)V

    return-void
.end method

.method private final handlePromocodeActivationResult(Lo6;)Lj59;
    .locals 4

    instance-of v0, p1, Lq6;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusBlockInteractor:Lwl0;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lwl0;->k(Z)Ldf3;

    move-result-object v0

    invoke-static {v0, v2}, Lpx;->h(Lhd3;Ly22;)Ls68;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz p0, :cond_1

    check-cast p1, Lq6;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;->showPromocodeSuccessBottomSheet(Lq6;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_0
    instance-of v0, p1, Lm6;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz p0, :cond_1

    check-cast p1, Lm6;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;->showPromocodeErrorBottomSheet(Lm6;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    return-object v1

    :cond_2
    invoke-static {}, Lme0;->e()V

    return-object v1
.end method

.method private static final onFirstViewAttach$lambda$1(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->stepActionAfterSignUp:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->stepActionAfterSignUp:Ljava/lang/String;

    return-void
.end method

.method private final updateToolbar()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->preferencesRepository:Ljf6;

    invoke-interface {p0}, Ljf6;->F()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;->showToolbar(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final changePosSpecialByUser(I)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusesAutoScrollState:Lqp0;

    if-ltz p1, :cond_0

    iget-object p0, p0, Lqp0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public enableScroll(Z)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusesAutoScrollState:Lqp0;

    iget-object p0, p0, Lqp0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final getCurrentSpecialPos()I
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusesAutoScrollState:Lqp0;

    iget-object p0, p0, Lqp0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public onActiveSubscriptionBannerClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;->openCustomTab(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onButtonChipItemClick(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;->openDeeplink(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onButtonSeeAllClick(I)V
    .locals 3

    sget-object v0, Lkd$o;->e:Lkd$o;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->flowRouter:Luf3;

    sget-object v0, Lsq0;->CATEGORIES:Lsq0;

    new-instance v1, Lqf7;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lqf7;-><init>(ILsq0;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v1}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onCategoryClick(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$e$c$b$b;

    const-string v1, "Category_from_the_main"

    invoke-static {p2, v1}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lkd$e$c$b;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lkd;->c()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->flowRouter:Luf3;

    new-instance v0, Lqf7;

    sget-object v1, Lsq0;->CATEGORY_FLOW:Lsq0;

    invoke-direct {v0, p2, v1, p1}, Lqf7;-><init>(ILsq0;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onChooseRegion()V
    .locals 3

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->flowRouter:Luf3;

    new-instance v0, Lcg7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcg7;-><init>(I)V

    const/4 v2, 0x1

    new-array v2, v2, [Llk3;

    aput-object v0, v2, v1

    invoke-virtual {p0, v2}, Luf3;->j([Llk3;)V

    return-void
.end method

.method public final onContentScrolled(I)V
    .locals 1

    const/16 v0, -0x14

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->scrollDirection:Lxg5;

    sget-object p1, Lti7;->Up:Lti7;

    invoke-interface {p0, p1}, Lxg5;->setValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->scrollDirection:Lxg5;

    sget-object p1, Lti7;->Down:Lti7;

    invoke-interface {p0, p1}, Lxg5;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->onDestroy()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusesAutoScrollState:Lqp0;

    iget-object p0, p0, Lqp0;->i:Ls68;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 9

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusBlockInteractor:Lwl0;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lwl0;->k(Z)Ldf3;

    move-result-object v5

    new-instance v4, Lkm0;

    const/4 v2, 0x0

    invoke-direct {v4, v0, v2}, Lkm0;-><init>(Lwl0;Le02;)V

    sget v3, Lse3;->a:I

    new-instance v3, Lj91;

    const/4 v7, -0x2

    sget-object v8, Lcu0;->SUSPEND:Lcu0;

    sget-object v6, Lgx2;->b:Lgx2;

    invoke-direct/range {v3 .. v8}, Lj91;-><init>(Ldm3;Lhd3;Lo22;ILcu0;)V

    new-instance v4, Llm0;

    invoke-direct {v4, v0, v2}, Llm0;-><init>(Lwl0;Le02;)V

    new-instance v5, Ldf3;

    invoke-direct {v5, v3, v4}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-static {v5, v1}, Lpx;->h(Lhd3;Ly22;)Ls68;

    iget-object v3, v0, Lwl0;->d:Lbo0;

    new-instance v4, Ljn0;

    invoke-direct {v4, v0, v1, v2}, Ljn0;-><init>(Lwl0;Ly22;Le02;)V

    iget-object v0, v3, Lbo0;->a:Lzs7;

    new-instance v3, Ldf3;

    invoke-direct {v3, v0, v4}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-static {v3, v1}, Lpx;->h(Lhd3;Ly22;)Ls68;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->desktopInteractor:Lzl2;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v1

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$b;

    invoke-direct {v3, p0, v2}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Le02;)V

    invoke-virtual {v0, v1, v3}, Lzl2;->c(Ly22;Lbm3;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusBlockInteractor:Lwl0;

    iget-object v0, v0, Lwl0;->h:Lgy6;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$c;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Le02;)V

    new-instance v3, Ldf3;

    invoke-direct {v3, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    const/4 v0, 0x3

    invoke-static {v3, v2, v2, v0}, Lm13;->c(Lhd3;Ljava/lang/String;Lnl3;I)Lde3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->F()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->scrollDirection:Lxg5;

    const-wide/16 v3, 0x1f4

    invoke-static {v0, v3, v4}, Ls39;->b(Lhd3;J)Lhd3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$d;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->notificationsInteractor:Lpp5;

    iget-object v0, v0, Lpp5;->e:Lz68;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$e;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Le02;)V

    new-instance v3, Ldf3;

    invoke-direct {v3, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->subscriptionInteractor:Lic8;

    iget-object v0, v0, Lic8;->c:Lz68;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$f;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Le02;)V

    new-instance v3, Ldf3;

    invoke-direct {v3, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->avatarState:Lkz;

    iget-object v0, v0, Lkz;->a:Ly68;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$g;

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$g;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Le02;)V

    new-instance v2, Ldf3;

    invoke-direct {v2, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v2}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    :goto_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->updateToolbar()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->flowRouter:Luf3;

    new-instance v1, Lcr0;

    invoke-direct {v1, p0}, Lcr0;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    invoke-virtual {v0, v1}, Luf3;->l(Lt57;)V

    return-void
.end method

.method public onGroupShopRectangleAllClick(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->flowRouter:Luf3;

    new-instance v0, Lqf7;

    sget-object v1, Lsq0;->SELECTION_FLOW:Lsq0;

    invoke-direct {v0, p1, v1, p2}, Lqf7;-><init>(ILsq0;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onGroupShopRectangleFavoriteClick(II)V
    .locals 5

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusBlockInteractor:Lwl0;

    iget-object v1, v0, Lwl0;->g:Lz68;

    invoke-virtual {v1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lqn1;->v0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lfs3;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lfs3;

    iget v4, v4, Lfs3;->a:I

    if-ne v4, p1, :cond_2

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    check-cast v2, Lfs3;

    if-nez v2, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p2, Lrd3;

    invoke-direct {p2, p1}, Lrd3;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object p1, v2, Lfs3;->e:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lsv7$c;

    iget v2, v2, Lsv7;->a:I

    if-ne v2, p2, :cond_5

    goto :goto_2

    :cond_6
    move-object v1, v3

    :goto_2
    check-cast v1, Lsv7$c;

    if-nez v1, :cond_7

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p2, Lrd3;

    invoke-direct {p2, p1}, Lrd3;-><init>(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    iget-object p1, v0, Lwl0;->a:Ltn0;

    iget-boolean v1, v1, Lsv7;->b:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {p1, p2, v1}, Ltn0;->a(IZ)Ltb7;

    move-result-object p1

    new-instance v1, Lkn0;

    invoke-direct {v1, v0, p2, v3}, Lkn0;-><init>(Lwl0;ILe02;)V

    new-instance p2, Ldf3;

    invoke-direct {p2, p1, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    :goto_3
    new-instance p1, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$h;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v3}, Lpg8;-><init>(ILe02;)V

    new-instance v0, Ldf3;

    invoke-direct {v0, p2, p1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    const/4 p1, 0x3

    invoke-static {v0, v3, v3, p1}, Lm13;->c(Lhd3;Ljava/lang/String;Lnl3;I)Lde3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onGroupShopRectangleItemClick(I)V
    .locals 3

    new-instance v0, Lkd$e$d$g$a;

    invoke-direct {v0, p1}, Lkd$e$d$g$a;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    sget-object v0, Lkd$e$d$g$b;->e:Lkd$e$d$g$b;

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lkd$e$a$a$f$a;

    invoke-direct {v0, p1}, Lkd$e$a$a$f$a;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->flowRouter:Luf3;

    sget-object v0, Lsq0;->ONLINE_SHOP:Lsq0;

    new-instance v1, Lqf7;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lqf7;-><init>(ILsq0;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v1}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onHelperTitleWithYellowButtonClick(Lsq0;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lkd$c0;->e:Lkd$c0;

    invoke-virtual {p1}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->flowRouter:Luf3;

    new-instance p1, Lqf7;

    sget-object v0, Lsq0;->HOW_GET_CASHBACK_SLIDES:Lsq0;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Lqf7;-><init>(ILsq0;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, p1}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onHiddenChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusesAutoScrollState:Lqp0;

    iget-object v0, v0, Lqp0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->updateToolbar()V

    :cond_0
    return-void
.end method

.method public onHidePromoBanner(I)V
    .locals 3

    new-instance v0, Lkd$m$b$b;

    invoke-direct {v0, p1}, Lkd$m$b$b;-><init>(I)V

    invoke-virtual {v0}, Lkd;->c()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$i;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$i;-><init>(ILe02;Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public final onNotificationsClicked()V
    .locals 2

    sget-object v0, Lkd$v$a$b;->e:Lkd$v$a$b;

    invoke-virtual {v0}, Lkd;->c()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->flowRouter:Luf3;

    new-instance v0, Lqh7;

    sget-object v1, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications;->b:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications;

    invoke-direct {v0, v1}, Lqh7;-><init>(Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onOfflineOnlineShopClick(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7cbda3bc

    if-eq v1, v2, :cond_2

    const v2, 0x71ef75e6

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "online-shops-categories"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lkd$e$c$e;

    const-string v1, "Online block"

    invoke-direct {v0, v1}, Lkd$e$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->c()V

    goto :goto_0

    :cond_2
    const-string v1, "goods-showcase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lkd$e$c$d;

    const-string v1, "Offline block"

    invoke-direct {v0, v1}, Lkd$e$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->c()V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;->openDeeplink(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public onOpenPromoLink(I)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->fetchHidableBannerLinkUseCase:Li73;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lh73;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lh73;-><init>(Li73;ILe02;)V

    new-instance v0, Ltb7;

    invoke-direct {v0, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {v0}, Ls57;->a(Lhd3;)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$j;

    invoke-direct {v1, p1, v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$j;-><init>(ILe02;Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    new-instance p1, Ldf3;

    invoke-direct {p1, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onOrdPromoClicked(Lb06;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lb06;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lkd$e0$a;

    const-string v2, "AlfaCredit_"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Ord"

    invoke-direct {v1, v2, v0}, Lkd;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1}, Lkd;->a()V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;->showOrdDialog(Lb06;)V

    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusesAutoScrollState:Lqp0;

    const/4 v0, 0x0

    iget-object p0, p0, Lqp0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onPreviewFavoriteClick(I)V
    .locals 5

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusBlockInteractor:Lwl0;

    iget-object v1, v0, Lwl0;->g:Lz68;

    invoke-virtual {v1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lsv7;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lsv7;

    iget v4, v4, Lsv7;->a:I

    if-ne v4, p1, :cond_2

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    check-cast v2, Lsv7;

    if-nez v2, :cond_4

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Lrd3;

    invoke-direct {v0, p1}, Lrd3;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lwl0;->a:Ltn0;

    iget-boolean v2, v2, Lsv7;->b:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v1, p1, v2}, Ltn0;->a(IZ)Ltb7;

    move-result-object v1

    new-instance v2, Lln0;

    invoke-direct {v2, v0, p1, v3}, Lln0;-><init>(Lwl0;ILe02;)V

    new-instance v0, Ldf3;

    invoke-direct {v0, v1, v2}, Ldf3;-><init>(Lhd3;Lbm3;)V

    :goto_2
    const/4 p1, 0x3

    invoke-static {v0, v3, v3, p1}, Lm13;->c(Lhd3;Ljava/lang/String;Lnl3;I)Lde3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onPreviewShopClick(I)V
    .locals 3

    new-instance v0, Lkd$e$d$g$a;

    invoke-direct {v0, p1}, Lkd$e$d$g$a;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    sget-object v0, Lkd$e$d$g$b;->e:Lkd$e$d$g$b;

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lkd$e$a$a$f$a;

    invoke-direct {v0, p1}, Lkd$e$a$a$f$a;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->flowRouter:Luf3;

    sget-object v0, Lsq0;->ONLINE_SHOP:Lsq0;

    new-instance v1, Lqf7;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, v2}, Lqf7;-><init>(ILsq0;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v1}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final onProfileClicked()V
    .locals 4

    sget-object v0, Lkd$a$i$a;->e:Lkd$a$i$a;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkd$a$h$c;

    invoke-direct {v0}, Lkd$a$h$c;-><init>()V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->flowRouter:Luf3;

    new-instance v0, Lqh7;

    sget-object v1, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$MainProfile;->b:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$MainProfile;

    invoke-direct {v0, v1}, Lqh7;-><init>(Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void

    :cond_0
    new-instance v0, Lkd$a$h$a;

    invoke-direct {v0}, Lkd$a$h$a;-><init>()V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->flowRouter:Luf3;

    new-instance v0, Lix;

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onPromocodeButtonActivate(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$a$j$a;

    invoke-direct {v0, p1}, Lkd$a$j$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->activateAccountPromocodeUseCase:Lk6;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lj6;

    const-string v2, "BONUSES"

    const/4 v3, 0x0

    invoke-direct {v1, v0, p1, v2, v3}, Lj6;-><init>(Lk6;Ljava/lang/String;Ljava/lang/String;Le02;)V

    new-instance p1, Ltb7;

    invoke-direct {p1, v1}, Ltb7;-><init>(Lbm3;)V

    invoke-static {p1}, Ls57;->a(Lhd3;)Lde3;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$k;

    invoke-direct {v0, p0, v3}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$k;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onPromocodeTextChanged(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkd$a$j$c;->e:Lkd$a$j$c;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusBlockInteractor:Lwl0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lwl0;->g:Lz68;

    :cond_0
    invoke-virtual {p0}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

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

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpz3;

    instance-of v4, v3, Ljr0;

    if-eqz v4, :cond_1

    check-cast v3, Ljr0;

    iget-object v4, v3, Ljr0;->a:Ljava/lang/String;

    iget-object v5, v3, Ljr0;->b:Ljava/lang/String;

    iget-object v3, v3, Ljr0;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljr0;

    invoke-direct {v6, v4, v5, v3, p1}, Ljr0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v6

    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v2}, Lz68;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->updateToolbar()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusesAutoScrollState:Lqp0;

    const/4 v1, 0x1

    iget-object v0, v0, Lqp0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$l;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Le02;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method

.method public final onSearchClick()V
    .locals 3

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->flowRouter:Luf3;

    new-instance v0, Lsf7;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-direct {v0, v1}, Lsf7;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Llk3;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Luf3;->j([Llk3;)V

    return-void
.end method

.method public onSpecialItemClick(Lo58;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkd$e$c$g$a;

    iget v1, p1, Lo58;->d:I

    invoke-direct {v0, v1}, Lkd$e$c$g$a;-><init>(I)V

    invoke-virtual {v0}, Lkd;->c()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lo58;->b:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;->openDeeplink(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSpecialItemOrdClick(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lb06;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lkd$e0$e;

    invoke-direct {v1, v0}, Lkd$e0$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lkd;->a()V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;->showOrdDialog(Lb06;)V

    :cond_1
    return-void
.end method

.method public final onSpecialShown(I)V
    .locals 1

    new-instance v0, Lkd$e$c$g$b;

    invoke-direct {v0, p1}, Lkd$e$c$g$b;-><init>(I)V

    invoke-virtual {v0}, Lkd;->c()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->sendBannerWatchUseCase:Lmo7;

    invoke-virtual {p0, p1}, Lmo7;->a(I)V

    return-void
.end method

.method public onStepActionClicked(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->preferencesRepository:Ljf6;

    invoke-interface {v0}, Ljf6;->G0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->stepActionAfterSignUp:Ljava/lang/String;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->flowRouter:Luf3;

    new-instance v0, Lix;

    new-instance v2, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 v3, 0x7

    invoke-direct {v2, v1, v1, v3}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v2}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Luf3;->c:Lo87;

    invoke-virtual {p1, v0}, Lo87;->d(Ldf7;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;->openDeeplink(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusBlockInteractor:Lwl0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lwl0;->a:Ltn0;

    invoke-interface {p1, p3}, Ltn0;->b(Ljava/lang/String;)Ltb7;

    move-result-object p1

    new-instance p3, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$m;

    invoke-direct {p3, p2, v1}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter$m;-><init>(Ljava/lang/String;Le02;)V

    new-instance p2, Ldf3;

    invoke-direct {p2, p1, p3}, Ldf3;-><init>(Lhd3;Lbm3;)V

    const/4 p1, 0x3

    invoke-static {p2, v1, v1, p1}, Lm13;->c(Lhd3;Ljava/lang/String;Lnl3;I)Lde3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInGlobal(Lhd3;)Lmb4;

    :cond_3
    return-void
.end method

.method public onSubTitleWithYellowButtonClick(Lsq0;ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->flowRouter:Luf3;

    new-instance v0, Lqf7;

    invoke-direct {v0, p2, p1, p3}, Lqf7;-><init>(ILsq0;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public onTitleWithButtonClick(ILsq0;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->flowRouter:Luf3;

    new-instance v0, Lqf7;

    invoke-direct {v0, p1, p2, p3}, Lqf7;-><init>(ILsq0;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method

.method public final sendPromoBannerShownEvent(I)V
    .locals 1

    new-instance v0, Lkd$m$b$c;

    invoke-direct {v0, p1}, Lkd$m$b$c;-><init>(I)V

    invoke-virtual {v0}, Lkd;->c()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->sendBannerWatchUseCase:Lmo7;

    invoke-virtual {p0, p1}, Lmo7;->a(I)V

    return-void
.end method

.method public sendPromocodeStartInteraction()V
    .locals 0

    sget-object p0, Lkd$a$j$i;->e:Lkd$a$j$i;

    invoke-virtual {p0}, Lkd;->a()V

    return-void
.end method

.method public final setScrollState(Z)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->bonusesAutoScrollState:Lqp0;

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lqp0;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
