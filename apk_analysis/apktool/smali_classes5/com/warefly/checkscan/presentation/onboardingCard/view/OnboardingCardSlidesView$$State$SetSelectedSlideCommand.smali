.class public Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView$$State$SetSelectedSlideCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetSelectedSlideCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView;",
        ">;"
    }
.end annotation


# instance fields
.field public final pos:I


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView$$State;I)V
    .locals 1

    const-string p1, "setSelectedSlide"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput p2, p0, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView$$State$SetSelectedSlideCommand;->pos:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView;)V
    .locals 0

    .line 6
    iget p0, p0, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView$$State$SetSelectedSlideCommand;->pos:I

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView;->setSelectedSlide(I)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView$$State$SetSelectedSlideCommand;->apply(Lcom/warefly/checkscan/presentation/onboardingCard/view/OnboardingCardSlidesView;)V

    return-void
.end method
