.class public Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$SetUpSlidesCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetUpSlidesCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;",
        ">;"
    }
.end annotation


# instance fields
.field public final slides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "setUpSlides"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$SetUpSlidesCommand;->slides:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$SetUpSlidesCommand;->slides:Ljava/util/List;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;->setUpSlides(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView$$State$SetUpSlidesCommand;->apply(Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideView;)V

    return-void
.end method
