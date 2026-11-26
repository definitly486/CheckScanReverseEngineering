.class public final Lyads/q96;
.super Lyads/gr4;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lyads/gr4;-><init>()V

    iput p1, p0, Lyads/q96;->a:F

    iput p2, p0, Lyads/q96;->b:F

    return-void
.end method

.method public static final a(Landroidx/transition/TransitionValues;[I)Lj59;
    .locals 1

    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "yandex:verticalTranslation:screenPosition"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Landroidx/transition/TransitionValues;[I)Lj59;
    .locals 1

    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "yandex:verticalTranslation:screenPosition"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureEndValues(Landroidx/transition/TransitionValues;)V

    new-instance p0, Lmi5;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lmi5;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p0}, Lyads/v56;->a(Landroidx/transition/TransitionValues;Lnl3;)V

    return-void
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    new-instance p0, Lq92;

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lq92;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p0}, Lyads/v56;->a(Landroidx/transition/TransitionValues;Lnl3;)V

    return-void
.end method

.method public final onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 5

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p3

    iget v0, p0, Lyads/q96;->a:F

    int-to-float p3, p3

    mul-float/2addr v0, p3

    iget v1, p0, Lyads/q96;->b:F

    mul-float/2addr v1, p3

    iget-object p3, p4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string p4, "yandex:verticalTranslation:screenPosition"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, [I

    invoke-static {p2, p1, p0, p3}, Lyads/ag6;->a(Landroid/view/View;Landroid/view/ViewGroup;Lyads/gr4;[I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    new-instance p3, Lyads/p96;

    invoke-direct {p3, p1}, Lyads/p96;-><init>(Landroid/view/View;)V

    iget p4, p0, Lyads/q96;->a:F

    invoke-virtual {p3, p1, p4}, Lyads/p96;->set(Landroid/view/View;F)V

    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    invoke-static {p4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    iget v1, p0, Lyads/q96;->a:F

    iget p0, p0, Lyads/q96;->b:F

    new-array v2, v2, [F

    aput v1, v2, v4

    aput p0, v2, v0

    invoke-static {p3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    filled-new-array {p4, p0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p1, Lyads/o96;

    invoke-direct {p1, p2}, Lyads/o96;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method

.method public final onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 4

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget p4, p0, Lyads/q96;->b:F

    iget v0, p0, Lyads/q96;->a:F

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const-string v1, "yandex:verticalTranslation:screenPosition"

    invoke-static {p0, p2, p1, p3, v1}, Lyads/v56;->a(Lyads/gr4;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    sget-object p3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p4, v2, v3

    const/4 p4, 0x1

    aput v0, v2, p4

    invoke-static {p3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    new-instance v0, Lyads/p96;

    invoke-direct {v0, p2}, Lyads/p96;-><init>(Landroid/view/View;)V

    iget v2, p0, Lyads/q96;->b:F

    iget p0, p0, Lyads/q96;->a:F

    new-array v1, v1, [F

    aput v2, v1, v3

    aput p0, v1, p4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    filled-new-array {p3, p0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-instance p1, Lyads/o96;

    invoke-direct {p1, p2}, Lyads/o96;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p0
.end method
