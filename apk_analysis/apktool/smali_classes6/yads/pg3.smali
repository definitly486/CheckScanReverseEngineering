.class public final Lyads/pg3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/qc;


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public b:Z

.field public c:Z

.field public d:Lll3;

.field public final e:Landroid/widget/FrameLayout;

.field public final f:Lyads/og3;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lyads/uc;Lyads/yb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/pg3;->a:Landroid/view/ViewGroup;

    new-instance v0, Lyads/og3;

    invoke-direct {v0, p0}, Lyads/og3;-><init>(Lyads/pg3;)V

    iput-object v0, p0, Lyads/pg3;->f:Lyads/og3;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-boolean p3, p3, Lyads/yb;->d:Z

    if-eqz p3, :cond_0

    sget p3, Lcom/yandex/mobile/ads/R$style;->MonetizationAdsInternal_AdtuneTheme_Dark:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/yandex/mobile/ads/R$style;->MonetizationAdsInternal_AdtuneTheme_Light:I

    :goto_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lyads/pg3;->e:Landroid/widget/FrameLayout;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p2}, Lyads/pg3;->a(Lyads/uc;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x42200000    # 40.0f

    mul-float/2addr p3, p2

    float-to-int p3, p3

    const/4 v1, 0x0

    mul-float/2addr v1, p2

    float-to-int p2, v1

    new-instance v1, Landroid/widget/ImageButton;

    invoke-direct {v1, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/yandex/mobile/ads/R$drawable;->monetization_ads_internal_ic_close_gray:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Lm5a;

    invoke-direct {v0, p0}, Lm5a;-><init>(Lyads/pg3;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const p3, 0x800035

    iput p3, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, v1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final a(Lyads/pg3;Landroid/view/View;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lyads/pg3;->dismiss()V

    return-void
.end method

.method public static a(Lyads/uc;)V
    .locals 1

    .line 38
    new-instance v0, Ln5a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static final a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Lll3;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lyads/pg3;->d:Lll3;

    return-void
.end method

.method public final dismiss()V
    .locals 2

    iget-boolean v0, p0, Lyads/pg3;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/pg3;->c:Z

    iget-object v0, p0, Lyads/pg3;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lyads/pg3;->f:Lyads/og3;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-boolean v0, p0, Lyads/pg3;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/pg3;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lyads/pg3;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Lyads/pg3;->d:Lll3;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public final show()V
    .locals 4

    iget-boolean v0, p0, Lyads/pg3;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/pg3;->b:Z

    iget-object v0, p0, Lyads/pg3;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lyads/pg3;->e:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lyads/pg3;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lyads/pg3;->a:Landroid/view/ViewGroup;

    iget-object p0, p0, Lyads/pg3;->f:Lyads/og3;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
