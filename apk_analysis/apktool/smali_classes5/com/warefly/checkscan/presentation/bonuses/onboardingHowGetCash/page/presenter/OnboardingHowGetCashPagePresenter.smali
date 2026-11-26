.class public final Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/presenter/OnboardingHowGetCashPagePresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageView;",
        ">;"
    }
.end annotation


# instance fields
.field private final onboardingHowGetCashInteractor:Lvw5;

.field private final page:I


# direct methods
.method public constructor <init>(ILvw5;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/presenter/OnboardingHowGetCashPagePresenter;->page:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/presenter/OnboardingHowGetCashPagePresenter;->onboardingHowGetCashInteractor:Lvw5;

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 2

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/presenter/OnboardingHowGetCashPagePresenter;->onboardingHowGetCashInteractor:Lvw5;

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/presenter/OnboardingHowGetCashPagePresenter;->page:I

    iget-object v1, v1, Lvw5;->a:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq16;

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/view/OnboardingHowGetCashPageView;->showContent(Lq16;)V

    :cond_0
    return-void
.end method

.method public final onScreenClick(Landroid/view/MotionEvent;I)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    div-float/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    cmpl-float p1, p2, p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/page/presenter/OnboardingHowGetCashPagePresenter;->onboardingHowGetCashInteractor:Lvw5;

    if-lez p1, :cond_0

    iget-object p0, p0, Lvw5;->b:Lmu0;

    sget-object p1, Lc28;->Left:Lc28;

    invoke-interface {p0, p1}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p0, p0, Lvw5;->b:Lmu0;

    sget-object p1, Lc28;->Right:Lc28;

    invoke-interface {p0, p1}, Lno7;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
