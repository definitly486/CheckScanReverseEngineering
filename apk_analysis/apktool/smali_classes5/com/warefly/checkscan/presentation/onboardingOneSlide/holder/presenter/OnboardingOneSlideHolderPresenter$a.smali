.class public final Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$a;
.super Lb0;
.source "SourceFile"

# interfaces
.implements Ls22;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;->setUpScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$a;->c:Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;

    sget-object p1, Ls22$a;->b:Ls22$a;

    invoke-direct {p0, p1}, Lb0;-><init>(Lo22$b;)V

    return-void
.end method


# virtual methods
.method public final handleException(Lo22;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter$a;->c:Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/presenter/OnboardingOneSlideHolderPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/view/OnboardingOneSlideHolderView;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/holder/view/OnboardingOneSlideHolderView;->showErrorLoading(Z)V

    :cond_0
    return-void
.end method
