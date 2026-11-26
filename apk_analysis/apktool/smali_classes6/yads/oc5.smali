.class public final Lyads/oc5;
.super Lyads/gr4;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lyads/gr4;-><init>()V

    iput p1, p0, Lyads/oc5;->a:F

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Lyads/oc5;->b:F

    iput p1, p0, Lyads/oc5;->c:F

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lyads/gr4;-><init>()V

    .line 13
    iput p1, p0, Lyads/oc5;->a:F

    .line 14
    iput p2, p0, Lyads/oc5;->b:F

    .line 15
    iput p3, p0, Lyads/oc5;->c:F

    return-void
.end method

.method public static a(Landroidx/transition/TransitionValues;F)F
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 66
    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    if-eqz p0, :cond_0

    const-string v1, "yandex:scale:scaleX"

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

    .line 67
    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "yandex:scale:screenPosition"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static b(Landroidx/transition/TransitionValues;F)F
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    if-eqz p0, :cond_0

    const-string v1, "yandex:scale:scaleY"

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

.method public static final b(Landroidx/transition/TransitionValues;[I)Lj59;
    .locals 1

    .line 30
    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "yandex:scale:screenPosition"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/view/View;FFFF)Landroid/animation/ObjectAnimator;
    .locals 4

    cmpg-float v0, p2, p4

    if-nez v0, :cond_0

    cmpg-float v0, p3, p5

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 p2, 0x1

    aput p4, v2, p2

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v1, [F

    aput p3, v1, v3

    aput p5, v1, p2

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    filled-new-array {p4, p2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance p3, Lyads/nc5;

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p5

    invoke-direct {p3, p0, p1, p4, p5}, Lyads/nc5;-><init>(Lyads/oc5;Landroid/view/View;FF)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p2
.end method

.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 6

    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureEndValues(Landroidx/transition/TransitionValues;)V

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroidx/transition/Visibility;->getMode()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "yandex:scale:scaleY"

    const-string v3, "yandex:scale:scaleX"

    const/4 v5, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget v1, p0, Lyads/oc5;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget p0, p0, Lyads/oc5;->a:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {p0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lyads/v56;->a:Lyads/k11;

    iget-object p0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    new-array v0, v5, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {p1, v0}, Lyads/oc5;->a(Landroidx/transition/TransitionValues;[I)Lj59;

    return-void
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 6

    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v1

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/transition/Visibility;->getMode()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "yandex:scale:scaleY"

    const-string v4, "yandex:scale:scaleX"

    const/4 v5, 0x2

    if-eq v1, v2, :cond_1

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget v1, p0, Lyads/oc5;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget p0, p0, Lyads/oc5;->a:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lyads/v56;->a:Lyads/k11;

    iget-object p0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    new-array v0, v5, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-static {p1, v0}, Lyads/oc5;->b(Landroidx/transition/TransitionValues;[I)Lj59;

    return-void
.end method

.method public final onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v0, p0, Lyads/oc5;->a:F

    invoke-static {p3, v0}, Lyads/oc5;->a(Landroidx/transition/TransitionValues;F)F

    move-result v3

    iget v0, p0, Lyads/oc5;->a:F

    invoke-static {p3, v0}, Lyads/oc5;->b(Landroidx/transition/TransitionValues;F)F

    move-result v4

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p4, p3}, Lyads/oc5;->a(Landroidx/transition/TransitionValues;F)F

    move-result v5

    invoke-static {p4, p3}, Lyads/oc5;->b(Landroidx/transition/TransitionValues;F)F

    move-result v6

    iget-object p3, p4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string p4, "yandex:scale:screenPosition"

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, [I

    invoke-static {p2, p1, p0, p3}, Lyads/ag6;->a(Landroid/view/View;Landroid/view/ViewGroup;Lyads/gr4;[I)Landroid/view/View;

    move-result-object v2

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lyads/oc5;->a(Landroid/view/View;FFFF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public final onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 7

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Lyads/oc5;->a(Landroidx/transition/TransitionValues;F)F

    move-result v3

    invoke-static {p3, v0}, Lyads/oc5;->b(Landroidx/transition/TransitionValues;F)F

    move-result v4

    iget v0, p0, Lyads/oc5;->a:F

    invoke-static {p4, v0}, Lyads/oc5;->a(Landroidx/transition/TransitionValues;F)F

    move-result v5

    iget v0, p0, Lyads/oc5;->a:F

    invoke-static {p4, v0}, Lyads/oc5;->b(Landroidx/transition/TransitionValues;F)F

    move-result v6

    const-string p4, "yandex:scale:screenPosition"

    invoke-static {p0, p2, p1, p3, p4}, Lyads/v56;->a(Lyads/gr4;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lyads/oc5;->a(Landroid/view/View;FFFF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method
