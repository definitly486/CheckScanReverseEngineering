.class public final Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$a;->collect(Lid3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lid3;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lid3;


# direct methods
.method public constructor <init>(Lid3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$a$a;->b:Lid3;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$a$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$a$a$a;

    iget v1, v0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$a$a$a;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$a$a$a;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$a$a$a;

    invoke-direct {v0, p0, p2}, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$a$a$a;-><init>(Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$a$a;Le02;)V

    :goto_0
    iget-object p2, v0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$a$a$a;->l:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$a$a$a;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lr57;->b(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzj3;

    sget-object v4, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;->h:Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment$a;

    iget-wide v5, v2, Lzj3;->a:J

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;

    invoke-direct {v2}, Lcom/warefly/checkscan/presentation/onboardingCard/slides/view/OnBoardingCardSlideFragment;-><init>()V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lb36;

    const-string v6, "SLIDE_KEY"

    invoke-direct {v5, v6, v4}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v5}, [Lb36;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iput v3, v0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$a$a$a;->m:I

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/presenter/OnBoardingCardSlidesPresenter$a$a;->b:Lid3;

    invoke-interface {p0, p2, v0}, Lid3;->emit(Ljava/lang/Object;Le02;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
