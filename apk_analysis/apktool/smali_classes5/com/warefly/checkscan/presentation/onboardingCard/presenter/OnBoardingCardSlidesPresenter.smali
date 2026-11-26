.class public final Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView;",
        ">;"
    }
.end annotation


# instance fields
.field private final currentSlideIndex:Lxg5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxg5<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final flowRouter:Luf3;

.field private final onboardingCardSlidesInteractor:Luw5;


# direct methods
.method public constructor <init>(Luw5;Luf3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->onboardingCardSlidesInteractor:Luw5;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->flowRouter:Luf3;

    const/4 p1, 0x0

    invoke-static {p1}, Lpx;->a(Ljava/lang/Object;)Lz68;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->currentSlideIndex:Lxg5;

    return-void
.end method

.method public static final synthetic access$onFirstViewAttach$changeViewStateByPos(Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;Lb36;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->onFirstViewAttach$changeViewStateByPos(Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;Lb36;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onFirstViewAttach$handleEvent(Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;La41;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->onFirstViewAttach$handleEvent(Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;La41;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onFirstViewAttach$lambda$2(Ljava/util/List;ILe02;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->onFirstViewAttach$lambda$2(Ljava/util/List;ILe02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final changeViewStateByPos(Lb36;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb36<",
            "+",
            "Ljava/util/List<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lb36;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p1, p1, Lb36;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1, v2}, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView;->setLeftButtonVisible(Z)V

    :cond_1
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly74;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView;->setSelectedSlide(I)V

    :cond_2
    return-void
.end method

.method private final handleEvent(La41;)V
    .locals 1

    sget-object v0, La41$b;->a:La41$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->currentSlideIndex:Lxg5;

    :cond_0
    invoke-interface {v0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p0, p1}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_2
    instance-of v0, p1, La41$a;

    if-eqz v0, :cond_4

    check-cast p1, La41$a;

    iget-object p1, p1, La41$a;->a:Ljava/lang/String;

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void

    :cond_3
    sget-object v0, Lkd$x$a$a;->e:Lkd$x$a$a;

    invoke-virtual {v0}, Lkd;->a()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private static final synthetic onFirstViewAttach$changeViewStateByPos(Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;Lb36;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->changeViewStateByPos(Lb36;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final synthetic onFirstViewAttach$handleEvent(Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;La41;Le02;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->handleEvent(La41;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final onFirstViewAttach$lambda$2(Ljava/util/List;ILe02;)Ljava/lang/Object;
    .locals 1

    new-instance p2, Lb36;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p2, p0, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method


# virtual methods
.method public final onButtonLeftClick()V
    .locals 2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->currentSlideIndex:Lxg5;

    :cond_0
    invoke-interface {p0}, Lxg5;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0, v0, v1}, Lxg5;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final onButtonRightClick()V
    .locals 1

    sget-object v0, Lkd$x$a$b;->e:Lkd$x$a$b;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->onboardingCardSlidesInteractor:Luw5;

    iget-object v0, v0, Luw5;->c:Lz68;

    sget-object v1, Lkx2;->b:Lkx2;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lz68;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->onDestroy()V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 9

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->onboardingCardSlidesInteractor:Luw5;

    iget-object v0, v0, Luw5;->c:Lz68;

    invoke-static {v0}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$a;

    invoke-direct {v1, v0}, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$a;-><init>(Lgy6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$b;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v7}, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;Le02;)V

    new-instance v3, Ldf3;

    invoke-direct {v3, v1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->currentSlideIndex:Lxg5;

    new-instance v1, Lcf3;

    invoke-direct {v1, v0}, Lcf3;-><init>(Lhd3;)V

    sget-object v0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$c;->c:Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$c;

    new-instance v8, Lff3;

    invoke-direct {v8, v3, v1, v0}, Lff3;-><init>(Lhd3;Lhd3;Ldm3;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$d;

    const-string v5, "changeViewStateByPos(Lkotlin/Pair;)V"

    const/4 v6, 0x4

    const/4 v1, 0x2

    const-class v3, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;

    const-string v4, "changeViewStateByPos"

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lk8;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ldf3;

    invoke-direct {v1, v8, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->onboardingCardSlidesInteractor:Luw5;

    iget-object v0, v0, Luw5;->b:Lzs7;

    invoke-static {v0}, Lbf3;->a(Lvg5;)Lfy6;

    move-result-object v8

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$e;

    const-string v5, "handleEvent(Lcom/warefly/checkscan/presentation/onboardingCard/models/CardSlideEvent;)V"

    const/4 v1, 0x2

    const-string v4, "handleEvent"

    invoke-direct/range {v0 .. v6}, Lk8;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Ldf3;

    invoke-direct {v1, v8, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->onboardingCardSlidesInteractor:Luw5;

    iget-object v0, v0, Luw5;->a:Low5;

    invoke-interface {v0}, Low5;->a()Ltb7;

    move-result-object v0

    const-string v1, "removeOnboarding"

    const/4 v3, 0x2

    invoke-static {v0, v1, v7, v3}, Lm13;->c(Lhd3;Ljava/lang/String;Lnl3;I)Lde3;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final onSlideSelected(I)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter;->currentSlideIndex:Lxg5;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lxg5;->setValue(Ljava/lang/Object;)V

    return-void
.end method
