.class public final Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter$b;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.bonuses.onboardingHowGetCash.presenter.OnboardingHowGetCashPresenter$onFirstViewAttach$2"
    f = "OnboardingHowGetCashPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/lang/Integer;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public synthetic l:I

.field public final synthetic m:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;Le02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter$b;->m:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
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

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter$b;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter$b;->m:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;Le02;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    iput p0, v0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter$b;->l:I

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Le02;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter$b;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter$b;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget p1, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter$b;->l:I

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter$b;->m:Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/presenter/OnboardingHowGetCashPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/onboardingHowGetCash/view/OnboardingHowGetCashView;->setPage(I)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
