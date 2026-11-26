.class public final Lyads/g24;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/vc4;

.field public final b:Lyads/nc4;

.field public final c:Lyads/lc4;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/vc4;

    invoke-direct {v0}, Lyads/vc4;-><init>()V

    iput-object v0, p0, Lyads/g24;->a:Lyads/vc4;

    new-instance v0, Lyads/nc4;

    invoke-direct {v0}, Lyads/nc4;-><init>()V

    iput-object v0, p0, Lyads/g24;->b:Lyads/nc4;

    new-instance v0, Lyads/lc4;

    invoke-direct {v0}, Lyads/lc4;-><init>()V

    iput-object v0, p0, Lyads/g24;->c:Lyads/lc4;

    return-void
.end method


# virtual methods
.method public final a(Lyads/d9;Lyads/bf5;Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/b05;Ljava/util/List;Lyads/j24;Lyads/uj5;Ly22;)Lyads/yf5;
    .locals 10

    move-object/from16 v0, p7

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v6, Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {v6, v1}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    new-instance v2, Lyads/oc4;

    invoke-direct {v2, v1, p1, p2}, Lyads/oc4;-><init>(Landroid/content/Context;Lyads/d9;Lyads/bf5;)V

    new-instance v3, Lyads/wc4;

    invoke-direct {v3, v6}, Lyads/wc4;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lyads/uj5;->b:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_0

    :cond_0
    move-wide v7, v4

    :goto_0
    cmp-long v0, v7, v4

    const/4 v4, 0x0

    if-lez v0, :cond_1

    new-instance v0, Lyads/ic4;

    invoke-direct {v0, v6, v3, v2}, Lyads/ic4;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lyads/wc4;Lyads/oc4;)V

    new-instance v5, Lyads/sc4;

    invoke-direct {v5, v0, v7, v8}, Lyads/sc4;-><init>(Lyads/ic4;J)V

    invoke-virtual {v6, v5}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_1

    :cond_1
    move-object v0, v4

    :goto_1
    new-instance v5, Lyads/bs4;

    invoke-direct {v5, v2, v0}, Lyads/bs4;-><init>(Lyads/oc4;Lyads/ic4;)V

    invoke-virtual {v6, v5}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v5, p0, Lyads/g24;->b:Lyads/nc4;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget v8, Lcom/yandex/mobile/ads/R$layout;->monetization_ads_internal_multibanner_controls:I

    const-class v9, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;

    invoke-static {v1, v9, v8, v4}, Lyads/dc5;->a(Landroid/content/Context;Ljava/lang/Class;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;

    if-nez v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    if-eqz v8, :cond_3

    invoke-virtual {v8, v6}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a(Landroidx/viewpager2/widget/ViewPager2;)V

    new-instance v4, Lyads/y60;

    invoke-direct {v4, v3, v2, v0}, Lyads/y60;-><init>(Lyads/wc4;Lyads/oc4;Lyads/ic4;)V

    invoke-virtual {v8, v4}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->setOnClickLeftButtonListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lyads/z60;

    invoke-direct {v4, v3, v2, v0}, Lyads/z60;-><init>(Lyads/wc4;Lyads/oc4;Lyads/ic4;)V

    invoke-virtual {v8, v4}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->setOnClickRightButtonListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lyads/g24;->c:Lyads/lc4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjh2;)V

    invoke-static {p5}, Lyads/tc4;->a(Ljava/util/List;)D

    move-result-wide v1

    new-instance v3, Lyads/l25;

    double-to-float v1, v1

    invoke-direct {v3, v1}, Lyads/l25;-><init>(F)V

    invoke-virtual {v0, v3}, Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;->setMeasureSpecProvider(Lyads/wx3;)V

    iget-object p0, p0, Lyads/g24;->a:Lyads/vc4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lyads/xt2;->e:Lyads/xt2;

    invoke-static {p0, v1}, Lyads/yt2;->a(Landroid/content/Context;Lyads/xt2;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_4
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v8, :cond_5

    invoke-virtual {v0, v8, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {p3, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lyads/xc4;

    move-object p0, p2

    check-cast p0, Lyads/do6;

    iget-object p0, p0, Lyads/do6;->a:Landroid/content/Context;

    invoke-static {p0, p0}, Lyads/mw;->a(Landroid/content/Context;Landroid/content/Context;)Lyads/q84;

    move-result-object v5

    move-object v4, p4

    move-object/from16 v7, p8

    move-object v3, v6

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lyads/xc4;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lyads/b05;Lyads/q84;Lyads/d9;Ly22;)V

    new-instance p0, Lyads/yf5;

    move-object/from16 p1, p6

    invoke-direct {p0, p3, v2, p1}, Lyads/yf5;-><init>(Lcom/monetization/ads/nativeads/CustomizableMediaView;Lyads/xc4;Lyads/j24;)V

    return-object p0
.end method
