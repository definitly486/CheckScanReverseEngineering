.class public final Lax5;
.super Lf02;
.source "SourceFile"


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.domain.interactor.onboardingOneSlide.OnboardingOneSlideInteractor"
    f = "OnboardingOneSlideInteractor.kt"
    l = {
        0x26,
        0x2f
    }
    m = "fetchCurrentSlide"
.end annotation


# instance fields
.field public l:Lp07;

.field public m:Ljava/util/ArrayList;

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lbx5;

.field public p:I


# direct methods
.method public constructor <init>(Lbx5;Lf02;)V
    .locals 0

    iput-object p1, p0, Lax5;->o:Lbx5;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lax5;->n:Ljava/lang/Object;

    iget p1, p0, Lax5;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lax5;->p:I

    iget-object p1, p0, Lax5;->o:Lbx5;

    invoke-virtual {p1, p0}, Lbx5;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
