.class public final Lyads/rm5;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "SourceFile"


# instance fields
.field public final a:Lyads/kn5;

.field public final b:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lyads/kn5;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lyads/rm5;->a:Lyads/kn5;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lyads/rm5;->b:Landroid/graphics/Rect;

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 0

    iget-object p0, p0, Lyads/rm5;->a:Lyads/kn5;

    if-nez p1, :cond_0

    iget p0, p0, Lyads/kn5;->s:F

    return p0

    :cond_0
    iget-object p1, p0, Lyads/kn5;->v:Ljava/lang/Float;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_1
    iget p0, p0, Lyads/kn5;->s:F

    return p0
.end method

.method public final getVirtualViewAt(FF)I
    .locals 3

    iget-object p2, p0, Lyads/rm5;->a:Lyads/kn5;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p2, p1, p2

    const/4 v0, 0x0

    if-gez p2, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lyads/rm5;->a:Lyads/kn5;

    float-to-int p1, p1

    invoke-virtual {p0}, Lyads/kn5;->j()Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p0, Lyads/jn5;->b:Lyads/jn5;

    goto :goto_0

    :cond_1
    iget p2, p0, Lyads/kn5;->s:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1, p2}, Lyads/kn5;->a(IF)I

    move-result p2

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget-object v1, p0, Lyads/kn5;->v:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lyads/kn5;->a(IF)I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p2, p0, :cond_2

    sget-object p0, Lyads/jn5;->b:Lyads/jn5;

    goto :goto_0

    :cond_2
    sget-object p0, Lyads/jn5;->c:Lyads/jn5;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 p1, 0x1

    if-ne p0, p1, :cond_3

    return p1

    :cond_3
    invoke-static {}, Lme0;->e()V

    :cond_4
    return v0
.end method

.method public final getVisibleVirtualViews(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lyads/rm5;->a:Lyads/kn5;

    iget-object p0, p0, Lyads/kn5;->v:Ljava/lang/Float;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    return-void
.end method

.method public final onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 6

    const/16 v0, 0x1000

    const-wide v1, 0x3fa999999999999aL    # 0.05

    const/4 v3, 0x1

    if-eq p2, v0, :cond_3

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_2

    const v0, 0x102003d

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p3, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lyads/rm5;->a(I)F

    move-result p2

    iget-object p3, p0, Lyads/rm5;->a:Lyads/kn5;

    iget v0, p3, Lyads/kn5;->n:F

    iget p3, p3, Lyads/kn5;->m:F

    sub-float/2addr v0, p3

    float-to-double v4, v0

    mul-double/2addr v4, v1

    invoke-static {v4, v5}, Lw65;->a(D)I

    move-result p3

    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lyads/rm5;->a(I)F

    move-result p2

    iget-object p3, p0, Lyads/rm5;->a:Lyads/kn5;

    iget v0, p3, Lyads/kn5;->n:F

    iget p3, p3, Lyads/kn5;->m:F

    sub-float/2addr v0, p3

    float-to-double v4, v0

    mul-double/2addr v4, v1

    invoke-static {v4, v5}, Lw65;->a(D)I

    move-result p3

    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    :goto_0
    iget-object p3, p0, Lyads/rm5;->a:Lyads/kn5;

    if-nez p1, :cond_4

    sget-object v0, Lyads/jn5;->b:Lyads/jn5;

    goto :goto_1

    :cond_4
    iget-object v0, p3, Lyads/kn5;->v:Ljava/lang/Float;

    if-eqz v0, :cond_5

    sget-object v0, Lyads/jn5;->c:Lyads/jn5;

    goto :goto_1

    :cond_5
    sget-object v0, Lyads/jn5;->b:Lyads/jn5;

    :goto_1
    invoke-virtual {p3, v0, p2}, Lyads/kn5;->setValueToAccessibilityThumb$mobileads_externalRelease(Lyads/jn5;F)V

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    return v3
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5

    const-string v0, "android.widget.SeekBar"

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lyads/rm5;->a:Lyads/kn5;

    iget v1, v0, Lyads/kn5;->m:F

    iget v0, v0, Lyads/kn5;->n:F

    invoke-virtual {p0, p1}, Lyads/rm5;->a(I)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v1, v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->obtain(IFFF)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setRangeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lyads/rm5;->a:Lyads/kn5;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lyads/rm5;->a:Lyads/kn5;

    iget-object v2, v1, Lyads/kn5;->v:Ljava/lang/Float;

    const/4 v3, 0x1

    const-string v4, ""

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/yandex/mobile/ads/R$string;->monetization_ads_divkit_div_slider_range_start:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/yandex/mobile/ads/R$string;->monetization_ads_divkit_div_slider_range_end:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    if-ne p1, v3, :cond_4

    sget v0, Lyads/kn5;->H:I

    iget-object v0, p0, Lyads/rm5;->a:Lyads/kn5;

    iget-object v0, v0, Lyads/kn5;->x:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lyads/hn5;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iget-object v1, p0, Lyads/rm5;->a:Lyads/kn5;

    iget-object v1, v1, Lyads/kn5;->x:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lyads/hn5;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    goto :goto_1

    :cond_4
    sget v0, Lyads/kn5;->H:I

    iget-object v0, p0, Lyads/rm5;->a:Lyads/kn5;

    iget-object v0, v0, Lyads/kn5;->t:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lyads/hn5;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iget-object v1, p0, Lyads/rm5;->a:Lyads/kn5;

    iget-object v1, v1, Lyads/kn5;->t:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lyads/hn5;->a(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    :goto_1
    iget-object v2, p0, Lyads/rm5;->a:Lyads/kn5;

    invoke-virtual {p0, p1}, Lyads/rm5;->a(I)F

    move-result p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lyads/kn5;->a(IF)I

    move-result p1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, p1

    iget-object p1, p0, Lyads/rm5;->b:Landroid/graphics/Rect;

    iput v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lyads/rm5;->a:Lyads/kn5;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lyads/rm5;->a:Lyads/kn5;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lyads/rm5;->a:Lyads/kn5;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lyads/rm5;->a:Lyads/kn5;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lyads/rm5;->a:Lyads/kn5;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lyads/rm5;->a:Lyads/kn5;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lyads/rm5;->b:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    return-void
.end method
