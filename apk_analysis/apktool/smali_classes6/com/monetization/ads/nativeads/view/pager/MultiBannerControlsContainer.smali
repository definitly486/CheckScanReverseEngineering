.class public final Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private final a:Lyads/tj2;

.field private final b:Lyads/un2;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lyads/tj2;

    invoke-direct {p1}, Lyads/tj2;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a:Lyads/tj2;

    new-instance p1, Lyads/un2;

    invoke-direct {p1}, Lyads/un2;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->b:Lyads/un2;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p1, Lyads/tj2;

    invoke-direct {p1}, Lyads/tj2;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a:Lyads/tj2;

    .line 23
    new-instance p1, Lyads/un2;

    invoke-direct {p1}, Lyads/un2;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->b:Lyads/un2;

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Lyads/tj2;

    invoke-direct {p1}, Lyads/tj2;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a:Lyads/tj2;

    .line 27
    new-instance p1, Lyads/un2;

    invoke-direct {p1}, Lyads/un2;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->b:Lyads/un2;

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->c:Z

    return-void
.end method

.method private final a(II)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sget v3, Lcom/yandex/mobile/ads/R$id;->left_scroll_control_button:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/ImageView;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v3, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    sget v4, Lcom/yandex/mobile/ads/R$id;->right_scroll_control_button:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v6, v4, Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    check-cast v4, Landroid/widget/ImageView;

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    sget v6, Lcom/yandex/mobile/ads/R$id;->dot_indicator:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    check-cast v6, Landroid/widget/ImageView;

    goto :goto_2

    :cond_2
    move-object v6, v5

    :goto_2
    iget-boolean v7, v0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->c:Z

    const/16 v8, 0x8

    if-eqz v7, :cond_10

    sget v3, Lcom/yandex/mobile/ads/R$id;->dot_indicator:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    check-cast v3, Landroid/widget/ImageView;

    goto :goto_3

    :cond_3
    move-object v3, v5

    :goto_3
    const/4 v4, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, v0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a:Lyads/tj2;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v7, v7, Lyads/tj2;->a:Lyads/ip0;

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v9, v7}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v4, v11, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    invoke-static {v10}, Lw65;->b(F)I

    move-result v10

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    const/high16 v12, 0x40400000    # 3.0f

    invoke-static {v4, v12, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    invoke-static {v11}, Lw65;->b(F)I

    move-result v15

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    const/high16 v11, 0x41400000    # 12.0f

    invoke-static {v4, v11, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    invoke-static {v9}, Lw65;->b(F)I

    move-result v9

    mul-int v11, v7, v2

    add-int/lit8 v12, v2, 0x1

    mul-int/2addr v12, v10

    add-int/2addr v11, v12

    new-instance v12, Landroid/graphics/RectF;

    int-to-float v13, v11

    int-to-float v14, v9

    move/from16 v18, v4

    const/4 v4, 0x0

    invoke-direct {v12, v4, v4, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-array v4, v8, [F

    move v13, v6

    :goto_4
    if-ge v13, v8, :cond_4

    aput v14, v4, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_4
    new-instance v13, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v14, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v14, v4, v12, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v13, v14}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v13, v11}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v13, v9}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {v13}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    const/high16 v9, -0x1000000

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v4, 0x66

    invoke-virtual {v13, v4}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    new-array v9, v2, [Landroid/graphics/drawable/ShapeDrawable;

    move v12, v6

    :goto_5
    if-ge v12, v2, :cond_6

    new-instance v14, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v5, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v5}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v14, v5}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v14, v7}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {v14, v7}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v14}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    if-eq v12, v1, :cond_5

    invoke-virtual {v14, v4}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    :cond_5
    sget-object v5, Lj59;->a:Lj59;

    aput-object v14, v9, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_5

    :cond_6
    new-instance v4, Ll68;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ll68;-><init>(I)V

    invoke-virtual {v4, v13}, Ll68;->a(Ljava/lang/Object;)V

    invoke-virtual {v4, v9}, Ll68;->b(Ljava/lang/Object;)V

    iget-object v4, v4, Ll68;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/graphics/drawable/Drawable;

    new-instance v12, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v12, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v2, :cond_7

    add-int v5, v10, v7

    mul-int v6, v5, v4

    add-int v14, v6, v10

    add-int/lit8 v13, v4, 0x1

    mul-int/2addr v5, v13

    sub-int v16, v11, v5

    move/from16 v17, v15

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    move v4, v13

    goto :goto_6

    :cond_7
    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_8
    move/from16 v18, v4

    :goto_7
    sget v3, Lcom/yandex/mobile/ads/R$id;->left_scroll_control_button:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/ImageView;

    if-eqz v4, :cond_9

    check-cast v3, Landroid/widget/ImageView;

    goto :goto_8

    :cond_9
    const/4 v3, 0x0

    :goto_8
    sget v4, Lcom/yandex/mobile/ads/R$id;->right_scroll_control_button:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_a

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    goto :goto_9

    :cond_a
    const/4 v5, 0x0

    :goto_9
    if-eqz v3, :cond_d

    if-eqz v5, :cond_d

    if-nez v1, :cond_b

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_b
    const/4 v0, 0x0

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_c

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_c
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_d
    if-nez v3, :cond_e

    goto :goto_a

    :cond_e
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_a
    if-nez v5, :cond_f

    goto :goto_d

    :cond_f
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_10
    if-nez v3, :cond_11

    goto :goto_b

    :cond_11
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_b
    if-nez v4, :cond_12

    goto :goto_c

    :cond_12
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_c
    if-nez v6, :cond_13

    :goto_d
    return-void

    :cond_13
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public static final synthetic a(Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;II)V
    .locals 0

    .line 409
    invoke-direct {p0, p1, p2}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a(II)V

    return-void
.end method

.method private static final a(Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 398
    instance-of p6, p1, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p6, :cond_2

    .line 399
    iget-boolean p6, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->c:Z

    .line 400
    iget-object p7, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->b:Lyads/un2;

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 401
    iget-object p2, p7, Lyads/un2;->a:Lyads/ip0;

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x43100000    # 144.0f

    invoke-static {p2, p3}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result p2

    .line 403
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 p7, 0x42c00000    # 96.0f

    invoke-static {p3, p7}, Lyads/ip0;->a(Landroid/content/Context;F)I

    move-result p3

    const/4 p7, 0x0

    if-lt p4, p2, :cond_0

    if-lt p5, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p7

    .line 404
    :goto_0
    iput-boolean p2, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->c:Z

    if-eq p2, p6, :cond_2

    .line 405
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 406
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p2

    .line 407
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p7

    .line 408
    :cond_1
    invoke-direct {p0, p2, p7}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a(II)V

    :cond_2
    return-void
.end method

.method public static synthetic b(Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a(Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;Landroid/view/View;IIIIIIII)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    .line 395
    new-instance v0, Lyads/mc4;

    invoke-direct {v0, p1, p0}, Lyads/mc4;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;)V

    .line 396
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 397
    new-instance v0, Lef5;

    invoke-direct {v0, p0}, Lef5;-><init>(Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final setOnClickLeftButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/R$id;->left_scroll_control_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final setOnClickRightButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/R$id;->right_scroll_control_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
