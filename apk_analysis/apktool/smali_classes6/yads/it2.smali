.class public final Lyads/it2;
.super Lyads/gr4;
.source "SourceFile"


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lyads/gr4;-><init>()V

    iput p1, p0, Lyads/it2;->a:F

    return-void
.end method

.method public static a(Landroidx/transition/TransitionValues;F)F
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    if-eqz p0, :cond_0

    const-string v1, "yandex:fade:alpha"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_2
    return p1
.end method

.method public static final a(Landroidx/transition/TransitionValues;[I)Lj59;
    .locals 1

    .line 30
    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "yandex:fade:screenPosition"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Landroidx/transition/TransitionValues;[I)Lj59;
    .locals 1

    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "yandex:fade:screenPosition"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureEndValues(Landroidx/transition/TransitionValues;)V

    invoke-virtual {p0}, Landroidx/transition/Visibility;->getMode()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "yandex:fade:alpha"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget p0, p0, Lyads/it2;->a:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance p0, Lav5;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lav5;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p0}, Lyads/v56;->a(Landroidx/transition/TransitionValues;Lnl3;)V

    return-void
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    invoke-virtual {p0}, Landroidx/transition/Visibility;->getMode()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "yandex:fade:alpha"

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget p0, p0, Lyads/it2;->a:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance p0, Lvl4;

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lvl4;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p0}, Lyads/v56;->a(Landroidx/transition/TransitionValues;Lnl3;)V

    return-void
.end method

.method public final onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    iget v1, p0, Lyads/it2;->a:F

    invoke-static {p3, v1}, Lyads/it2;->a(Landroidx/transition/TransitionValues;F)F

    move-result p3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p4, v1}, Lyads/it2;->a(Landroidx/transition/TransitionValues;F)F

    move-result v1

    iget-object p4, p4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "yandex:fade:screenPosition"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p4, [I

    invoke-static {p2, p1, p0, p4}, Lyads/ag6;->a(Landroid/view/View;Landroid/view/ViewGroup;Lyads/gr4;[I)Landroid/view/View;

    move-result-object p0

    cmpg-float p1, p3, v1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p3}, Landroid/view/View;->setAlpha(F)V

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 p4, 0x0

    aput p3, p2, p4

    const/4 p3, 0x1

    aput v1, p2, p3

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance p2, Lyads/ht2;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p3

    invoke-direct {p2, p0, p3}, Lyads/ht2;-><init>(Landroid/view/View;F)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method

.method public final onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p3, v1}, Lyads/it2;->a(Landroidx/transition/TransitionValues;F)F

    move-result v1

    iget v2, p0, Lyads/it2;->a:F

    invoke-static {p4, v2}, Lyads/it2;->a(Landroidx/transition/TransitionValues;F)F

    move-result p4

    const-string v2, "yandex:fade:screenPosition"

    invoke-static {p0, p2, p1, p3, v2}, Lyads/v56;->a(Lyads/gr4;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    cmpg-float p1, v1, p4

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 p3, 0x0

    aput v1, p2, p3

    const/4 p3, 0x1

    aput p4, p2, p3

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance p2, Lyads/ht2;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p3

    invoke-direct {p2, p0, p3}, Lyads/ht2;-><init>(Landroid/view/View;F)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method
