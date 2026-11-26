.class public final Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/ui/dotindicator/BaseDotsIndicator$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment$b;

.field public static b:I = 0x2

.field public static c:Lgw5;

.field public static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment$b;->a:Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment$b;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    sget p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment$b;->d:I

    return p0
.end method

.method public final b(I)V
    .locals 1

    sput p1, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment$b;->d:I

    sget-object p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment$b;->c:Lgw5;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lgw5;->b(FI)V

    :cond_0
    return-void
.end method

.method public final c(Lgw5;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p1, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment$b;->c:Lgw5;

    return-void
.end method

.method public final d()V
    .locals 0

    const/4 p0, 0x0

    sput-object p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment$b;->c:Lgw5;

    return-void
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getCount()I
    .locals 0

    sget p0, Lcom/warefly/checkscan/presentation/onboardingOneSlide/oneSlide/view/OnboardingOneSlideFragment$b;->b:I

    return p0
.end method
