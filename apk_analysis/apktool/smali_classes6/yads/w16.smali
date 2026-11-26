.class public final Lyads/w16;
.super Landroid/transition/Visibility;
.source "SourceFile"


# instance fields
.field public final a:Lyads/pb2;

.field public final b:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Lyads/pb2;)V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    iput-object p1, p0, Lyads/w16;->a:Lyads/pb2;

    const/4 p1, 0x0

    iput-object p1, p0, Lyads/w16;->b:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Lyads/pb2;Ljava/lang/Float;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 10
    iput-object p1, p0, Lyads/w16;->a:Lyads/pb2;

    .line 11
    iput-object p2, p0, Lyads/w16;->b:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 5

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p3, p0, Lyads/w16;->a:Lyads/pb2;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 p4, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    packed-switch p3, :pswitch_data_0

    invoke-static {}, Lme0;->e()V

    return-object p4

    :pswitch_0
    move p3, v2

    goto :goto_0

    :pswitch_1
    move p3, v1

    goto :goto_0

    :pswitch_2
    move p3, v3

    goto :goto_0

    :pswitch_3
    move p3, v0

    :goto_0
    iget-object v4, p0, Lyads/w16;->a:Lyads/pb2;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    invoke-static {}, Lme0;->e()V

    return-object p4

    :pswitch_4
    move v0, v2

    goto :goto_1

    :pswitch_5
    move v0, v1

    goto :goto_1

    :pswitch_6
    move v0, v3

    :goto_1
    :pswitch_7
    iget-object p4, p0, Lyads/w16;->b:Ljava/lang/Float;

    if-eqz p4, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget-object v1, p0, Lyads/w16;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, p4

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p4

    invoke-static {p1, p4}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v1

    :goto_2
    mul-float/2addr p3, v1

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    iget-object p3, p0, Lyads/w16;->b:Ljava/lang/Float;

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lyads/w16;->b:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    mul-float/2addr p0, p1

    goto :goto_3

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    :goto_3
    mul-float/2addr v0, p0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    sget-object p0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p1

    const/4 p3, 0x2

    new-array p4, p3, [F

    const/4 v0, 0x0

    aput p1, p4, v0

    const/4 p1, 0x1

    aput v3, p4, p1

    invoke-static {p0, p4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result v1

    new-array p3, p3, [F

    aput v1, p3, v0

    aput v3, p3, p1

    invoke-static {p4, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    filled-new-array {p0, p1}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p3, p0, Lyads/w16;->a:Lyads/pb2;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 p4, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    packed-switch p3, :pswitch_data_0

    invoke-static {}, Lme0;->e()V

    return-object p4

    :pswitch_0
    move p3, v2

    goto :goto_0

    :pswitch_1
    move p3, v1

    goto :goto_0

    :pswitch_2
    move p3, v3

    goto :goto_0

    :pswitch_3
    move p3, v0

    :goto_0
    iget-object v4, p0, Lyads/w16;->a:Lyads/pb2;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    invoke-static {}, Lme0;->e()V

    return-object p4

    :pswitch_4
    move v0, v2

    goto :goto_1

    :pswitch_5
    move v0, v1

    goto :goto_1

    :pswitch_6
    move v0, v3

    :goto_1
    :pswitch_7
    sget-object p4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iget-object v1, p0, Lyads/w16;->b:Ljava/lang/Float;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lyads/w16;->b:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, v1

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p1, v1}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v2

    :goto_2
    mul-float/2addr p3, v2

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x1

    aput p3, v2, v5

    invoke-static {p4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    sget-object p4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    iget-object v2, p0, Lyads/w16;->b:Ljava/lang/Float;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lyads/w16;->b:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    mul-float/2addr p0, p1

    goto :goto_3

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result p0

    :goto_3
    mul-float/2addr v0, p0

    new-array p0, v1, [F

    aput v3, p0, v4

    aput v0, p0, v5

    invoke-static {p4, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    filled-new-array {p3, p0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
