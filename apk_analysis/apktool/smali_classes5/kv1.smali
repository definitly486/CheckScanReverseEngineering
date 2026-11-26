.class public final Lkv1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;->lottieConfetti:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x7f13000e

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;->lottieConfetti:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lkv1$a;

    invoke-direct {v1, p0}, Lkv1$a;-><init>(Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;)V

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    iget-object v0, v0, Lox4;->c:Lay4;

    invoke-virtual {v0, v1}, Lod0;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/databinding/ConfettiLayoutBinding;->lottieConfetti:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->y:Ljava/util/HashSet;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$a;->PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$a;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->s:Lox4;

    invoke-virtual {p0}, Lox4;->k()V

    return-void
.end method
