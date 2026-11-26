.class public final Lyads/qm5;
.super Lyads/gr4;
.source "SourceFile"


# static fields
.field public static final c:Lyads/jm5;

.field public static final d:Lyads/lm5;

.field public static final e:Lyads/km5;

.field public static final f:Lyads/im5;


# instance fields
.field public final a:I

.field public final b:Lyads/nm5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/jm5;

    invoke-direct {v0}, Lyads/jm5;-><init>()V

    sput-object v0, Lyads/qm5;->c:Lyads/jm5;

    new-instance v0, Lyads/lm5;

    invoke-direct {v0}, Lyads/lm5;-><init>()V

    sput-object v0, Lyads/qm5;->d:Lyads/lm5;

    new-instance v0, Lyads/km5;

    invoke-direct {v0}, Lyads/km5;-><init>()V

    sput-object v0, Lyads/qm5;->e:Lyads/km5;

    new-instance v0, Lyads/im5;

    invoke-direct {v0}, Lyads/im5;-><init>()V

    sput-object v0, Lyads/qm5;->f:Lyads/im5;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lyads/gr4;-><init>()V

    iput p1, p0, Lyads/qm5;->a:I

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    const/16 p1, 0x30

    if-eq p2, p1, :cond_0

    sget-object p1, Lyads/qm5;->f:Lyads/im5;

    goto :goto_0

    :cond_0
    sget-object p1, Lyads/qm5;->d:Lyads/lm5;

    goto :goto_0

    :cond_1
    sget-object p1, Lyads/qm5;->e:Lyads/km5;

    goto :goto_0

    :cond_2
    sget-object p1, Lyads/qm5;->c:Lyads/jm5;

    :goto_0
    iput-object p1, p0, Lyads/qm5;->b:Lyads/nm5;

    return-void
.end method

.method public static a(Landroid/view/View;Lyads/qm5;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iget-object v2, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    sget v3, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_transition_position:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, [I

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, [I

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    aget v6, v2, v5

    sub-int/2addr v6, p3

    int-to-float v6, v6

    add-float/2addr v6, v0

    aget v2, v2, v3

    sub-int/2addr v2, p4

    int-to-float v2, v2

    add-float/2addr v2, v1

    goto :goto_1

    :cond_1
    move/from16 v6, p5

    move/from16 v2, p6

    :goto_1
    sub-float v7, v6, v0

    invoke-static {v7}, Lw65;->b(F)I

    move-result v7

    add-int/2addr v7, p3

    sub-float v8, v2, v1

    invoke-static {v8}, Lw65;->b(F)I

    move-result v8

    add-int/2addr v8, p4

    invoke-virtual {p0, v6}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    cmpg-float v9, v6, p7

    if-nez v9, :cond_2

    cmpg-float v9, v2, p8

    if-nez v9, :cond_2

    return-object v4

    :cond_2
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v9, 0x2

    new-array v10, v9, [F

    aput v6, v10, v5

    aput p7, v10, v3

    invoke-static {v4, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v9, v9, [F

    aput v2, v9, v5

    aput p8, v9, v3

    invoke-static {v6, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    filled-new-array {v4, v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Lyads/om5;

    iget-object p2, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object p4, p0

    move-object p3, p2

    move/from16 p7, v0

    move/from16 p8, v1

    move-object p2, v3

    move/from16 p5, v7

    move/from16 p6, v8

    invoke-direct/range {p2 .. p8}, Lyads/om5;-><init>(Landroid/view/View;Landroid/view/View;IIFF)V

    invoke-virtual {p1, p2}, Landroidx/transition/Transition;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    invoke-virtual {v2, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2, p2}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    move-object/from16 p0, p9

    invoke-virtual {v2, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v2
.end method

.method public static final a(Landroidx/transition/TransitionValues;[I)Lj59;
    .locals 1

    .line 139
    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "yandex:slide:screenPosition"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final b(Landroidx/transition/TransitionValues;[I)Lj59;
    .locals 1

    iget-object p0, p0, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "yandex:slide:screenPosition"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureEndValues(Landroidx/transition/TransitionValues;)V

    new-instance p0, Leo;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Leo;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p0}, Lyads/v56;->a(Landroidx/transition/TransitionValues;Lnl3;)V

    return-void
.end method

.method public final captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/transition/Visibility;->captureStartValues(Landroidx/transition/TransitionValues;)V

    new-instance p0, Lx12;

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lx12;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p0}, Lyads/v56;->a(Landroidx/transition/TransitionValues;Lnl3;)V

    return-void
.end method

.method public final onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    if-nez p4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v4, p4, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "yandex:slide:screenPosition"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, [I

    iget-object v5, p0, Lyads/qm5;->b:Lyads/nm5;

    iget v6, p0, Lyads/qm5;->a:I

    invoke-interface {v5, v6, p2, p1}, Lyads/nm5;->a(ILandroid/view/View;Landroid/view/ViewGroup;)F

    move-result v5

    iget-object v6, p0, Lyads/qm5;->b:Lyads/nm5;

    iget v7, p0, Lyads/qm5;->a:I

    invoke-interface {v6, v7, p2, p1}, Lyads/nm5;->b(ILandroid/view/View;Landroid/view/ViewGroup;)F

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v8

    invoke-static {p2, p1, p0, v4}, Lyads/ag6;->a(Landroid/view/View;Landroid/view/ViewGroup;Lyads/gr4;[I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v9, 0x1

    aget v4, v4, v9

    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v9

    move-object v1, p0

    move v3, v2

    move-object v2, p4

    invoke-static/range {v0 .. v9}, Lyads/qm5;->a(Landroid/view/View;Lyads/qm5;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public final onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 11

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p4, p3, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "yandex:slide:screenPosition"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p4, [I

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v7

    iget-object v1, p0, Lyads/qm5;->b:Lyads/nm5;

    iget v2, p0, Lyads/qm5;->a:I

    invoke-interface {v1, v2, p2, p1}, Lyads/nm5;->a(ILandroid/view/View;Landroid/view/ViewGroup;)F

    move-result v8

    iget-object v1, p0, Lyads/qm5;->b:Lyads/nm5;

    iget v2, p0, Lyads/qm5;->a:I

    invoke-interface {v1, v2, p2, p1}, Lyads/nm5;->b(ILandroid/view/View;Landroid/view/ViewGroup;)F

    move-result v9

    invoke-static {p0, p2, p1, p3, v0}, Lyads/v56;->a(Lyads/gr4;Landroid/view/View;Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    const/4 p1, 0x0

    aget v4, p4, p1

    const/4 p1, 0x1

    aget v5, p4, p1

    invoke-virtual {p0}, Landroidx/transition/Transition;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v10

    move-object v2, p0

    move-object v3, p3

    invoke-static/range {v1 .. v10}, Lyads/qm5;->a(Landroid/view/View;Lyads/qm5;Landroidx/transition/TransitionValues;IIFFFFLandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method
