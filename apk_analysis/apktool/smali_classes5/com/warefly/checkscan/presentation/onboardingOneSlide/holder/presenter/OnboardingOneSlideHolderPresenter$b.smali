.class public final Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$b;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.onboardingOneSlide.holder.presenter.OnboardingOneSlideHolderPresenter$setUpScreen$2"
    f = "OnboardingOneSlideHolderPresenter.kt"
    l = {
        0x1d
    }
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;->setUpScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ly22;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public l:I

.field public final synthetic m:Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$b;->m:Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$b;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$b;->m:Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;

    invoke-direct {p1, p0, p2}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$b;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$b;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    iget v1, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$b;->l:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$b;->m:Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;->access$getOnboardingOneSlideInteractor$p(Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;)Lbx5;

    move-result-object p1

    iput v2, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$b;->l:I

    invoke-virtual {p1, p0}, Lbx5;->a(Lf02;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;

    invoke-virtual {v3}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/view/OnboardingOneSlideHolderView;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/view/OnboardingOneSlideHolderView;->showErrorLoading(Z)V

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v3}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/view/OnboardingOneSlideHolderView;

    if-eqz p0, :cond_5

    new-instance v1, Lkh7;

    invoke-direct {v1, p1}, Lkh7;-><init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/OnboardingOneSlideModel;)V

    new-array p1, v2, [Llk3;

    aput-object v1, p1, v0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;->access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;)Luf3;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    sget-object p1, Lcom/warefly/checkscan/presentation/e;->a:Lcom/warefly/checkscan/presentation/e;

    invoke-virtual {p0, p1}, Lo87;->g(Ldf7;)V

    :cond_5
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
