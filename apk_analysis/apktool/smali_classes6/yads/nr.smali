.class public Lyads/nr;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# static fields
.field public static final G:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

.field public static final H:Landroidx/core/util/Pools$SynchronizedPool;


# instance fields
.field public A:Landroidx/viewpager/widget/PagerAdapter;

.field public B:Lyads/jr;

.field public C:Lyads/lr;

.field public final D:Lyads/qu5;

.field public E:Lyads/sg3;

.field public final F:Landroidx/core/util/Pools$SimplePool;

.field public final a:Ljava/util/ArrayList;

.field public b:Lyads/kr;

.field public final c:Lyads/ir;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:J

.field public final i:I

.field public j:Lyads/cf2;

.field public k:Landroid/content/res/ColorStateList;

.field public final l:Z

.field public m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:Z

.field public final r:Z

.field public final s:I

.field public final t:Lyads/an4;

.field public final u:I

.field public final v:I

.field public w:I

.field public x:Lyads/fr;

.field public y:Landroid/animation/ValueAnimator;

.field public z:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lyads/nr;->G:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lyads/nr;->H:Landroidx/core/util/Pools$SynchronizedPool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 404
    invoke-direct {p0, p1, v0}, Lyads/nr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 403
    invoke-direct {p0, p1, p2, v0}, Lyads/nr;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyads/nr;->a:Ljava/util/ArrayList;

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lyads/nr;->h:J

    sget-object v0, Lyads/cf2;->a:Lyads/bf2;

    iput-object v0, p0, Lyads/nr;->j:Lyads/cf2;

    const v0, 0x7fffffff

    iput v0, p0, Lyads/nr;->m:I

    new-instance v0, Lyads/an4;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, p0, v1}, Lyads/an4;-><init>(Landroid/view/ViewGroup;F)V

    iput-object v0, p0, Lyads/nr;->t:Lyads/an4;

    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lyads/nr;->F:Landroidx/core/util/Pools$SimplePool;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    sget-object v1, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout:[I

    sget v2, Lcom/yandex/mobile/ads/R$style;->monetization_ads_divkit_Div_Tabs_IndicatorTabLayout:I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    sget-object v1, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_BaseIndicatorTabLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v1, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_BaseIndicatorTabLayout_monetization_ads_divkit_tabIndicatorPaddingTop:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    sget v2, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_BaseIndicatorTabLayout_monetization_ads_divkit_tabIndicatorPaddingBottom:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v3, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_BaseIndicatorTabLayout_monetization_ads_divkit_tabTextBoldOnSelection:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lyads/nr;->l:Z

    sget v3, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_BaseIndicatorTabLayout_monetization_ads_divkit_tabContentEnd:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lyads/nr;->v:I

    sget v3, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_BaseIndicatorTabLayout_monetization_ads_divkit_tabEllipsizeEnabled:I

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lyads/nr;->q:Z

    sget v3, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_BaseIndicatorTabLayout_monetization_ads_divkit_tabScrollPaddingEnabled:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lyads/nr;->r:Z

    sget v3, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_BaseIndicatorTabLayout_monetization_ads_divkit_tabScrollPadding:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lyads/nr;->s:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lyads/ir;

    invoke-direct {p2, p1, v1, v2}, Lyads/ir;-><init>(Landroid/content/Context;II)V

    iput-object p2, p0, Lyads/nr;->c:Lyads/ir;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, p2, v0, v1}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabIndicatorHeight:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iget v2, p2, Lyads/ir;->a:I

    if-eq v2, v1, :cond_0

    iput v1, p2, Lyads/ir;->a:I

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    sget v1, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabIndicatorColor:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iget v2, p2, Lyads/ir;->b:I

    if-eq v2, v1, :cond_2

    shr-int/lit8 v2, v1, 0x18

    if-nez v2, :cond_1

    iput v3, p2, Lyads/ir;->b:I

    goto :goto_0

    :cond_1
    iput v1, p2, Lyads/ir;->b:I

    :goto_0
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2
    sget v1, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabBackground:I

    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iget v2, p2, Lyads/ir;->c:I

    if-eq v2, v1, :cond_4

    shr-int/lit8 v2, v1, 0x18

    if-nez v2, :cond_3

    iput v3, p2, Lyads/ir;->c:I

    goto :goto_1

    :cond_3
    iput v1, p2, Lyads/ir;->c:I

    :goto_1
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    new-instance v1, Lyads/qu5;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lyads/qu5;-><init>(Landroid/content/Context;Lyads/ir;)V

    iput-object v1, p0, Lyads/nr;->D:Lyads/qu5;

    sget p2, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabPadding:I

    invoke-virtual {p3, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lyads/nr;->g:I

    iput p2, p0, Lyads/nr;->f:I

    iput p2, p0, Lyads/nr;->e:I

    iput p2, p0, Lyads/nr;->d:I

    sget v1, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabPaddingStart:I

    invoke-virtual {p3, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lyads/nr;->d:I

    sget p2, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabPaddingTop:I

    iget v1, p0, Lyads/nr;->e:I

    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lyads/nr;->e:I

    sget p2, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabPaddingEnd:I

    iget v1, p0, Lyads/nr;->f:I

    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lyads/nr;->f:I

    sget p2, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabPaddingBottom:I

    iget v1, p0, Lyads/nr;->g:I

    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lyads/nr;->g:I

    sget p2, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabTextAppearance:I

    sget v1, Lcom/yandex/mobile/ads/R$style;->monetization_ads_divkit_Div_Tabs_IndicatorTabLayout_Text:I

    invoke-virtual {p3, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lyads/nr;->i:I

    sget-object v1, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    sget p2, Landroidx/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lyads/nr;->k:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    sget p1, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabTextColor:I

    invoke-virtual {p3, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_5

    sget p1, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabTextColor:I

    invoke-virtual {p3, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lyads/nr;->k:Landroid/content/res/ColorStateList;

    :cond_5
    sget p1, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabSelectedTextColor:I

    invoke-virtual {p3, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabSelectedTextColor:I

    invoke-virtual {p3, p1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iget-object p2, p0, Lyads/nr;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    sget-object v1, Landroid/widget/HorizontalScrollView;->SELECTED_STATE_SET:[I

    sget-object v2, Landroid/widget/HorizontalScrollView;->EMPTY_STATE_SET:[I

    filled-new-array {v1, v2}, [[I

    move-result-object v1

    filled-new-array {p1, p2}, [I

    move-result-object p1

    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p2, p0, Lyads/nr;->k:Landroid/content/res/ColorStateList;

    :cond_6
    sget p1, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabMinWidth:I

    invoke-virtual {p3, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lyads/nr;->n:I

    sget p1, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabMaxWidth:I

    invoke-virtual {p3, p1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lyads/nr;->o:I

    sget p1, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabContentStart:I

    invoke-virtual {p3, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lyads/nr;->u:I

    sget p1, Lcom/yandex/mobile/ads/R$styleable;->monetization_ads_divkit_TabLayout_monetization_ads_divkit_tabMode:I

    invoke-virtual {p3, p1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lyads/nr;->w:I

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/yandex/mobile/ads/R$dimen;->monetization_ads_divkit_tab_scrollable_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lyads/nr;->p:I

    invoke-virtual {p0}, Lyads/nr;->a()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public final a(IF)I
    .locals 4

    .line 227
    iget v0, p0, Lyads/nr;->w:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 228
    iget-object v0, p0, Lyads/nr;->c:Lyads/ir;

    .line 229
    invoke-virtual {v0, p1}, Lyads/ir;->a(I)I

    move-result v2

    .line 230
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 231
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 232
    iget-boolean v3, p0, Lyads/nr;->r:Z

    if-eqz v3, :cond_1

    .line 233
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    iget p0, p0, Lyads/nr;->s:I

    sub-int/2addr p1, p0

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 234
    iget-object v3, p0, Lyads/nr;->c:Lyads/ir;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 235
    iget-object v3, p0, Lyads/nr;->c:Lyads/ir;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 237
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    add-int/2addr v2, v1

    int-to-float v1, v2

    mul-float/2addr v1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr v1, p2

    float-to-int p2, v1

    add-int/2addr p1, p2

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    .line 239
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p2, p0

    return p2

    :cond_4
    return v1
.end method

.method public a(Landroid/content/Context;)Lyads/xu5;
    .locals 0

    .line 192
    new-instance p0, Lyads/xu5;

    invoke-direct {p0, p1}, Lyads/xu5;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public final a()V
    .locals 5

    .line 240
    iget v0, p0, Lyads/nr;->w:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 241
    iget v0, p0, Lyads/nr;->u:I

    iget v2, p0, Lyads/nr;->d:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 242
    iget v2, p0, Lyads/nr;->v:I

    iget v3, p0, Lyads/nr;->f:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    .line 243
    :goto_0
    iget-object v3, p0, Lyads/nr;->c:Lyads/ir;

    invoke-static {v3, v0, v1, v2, v1}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 244
    iget v0, p0, Lyads/nr;->w:I

    .line 245
    iget-object v2, p0, Lyads/nr;->c:Lyads/ir;

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const v0, 0x800003

    .line 246
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    .line 247
    :cond_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_1
    move v0, v1

    .line 248
    :goto_2
    iget-object v2, p0, Lyads/nr;->c:Lyads/ir;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 249
    iget-object v2, p0, Lyads/nr;->c:Lyads/ir;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 250
    instance-of v3, v2, Lyads/xu5;

    if-nez v3, :cond_2

    goto :goto_4

    .line 251
    :cond_2
    iget v3, p0, Lyads/nr;->n:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    goto :goto_3

    .line 252
    :cond_3
    iget v3, p0, Lyads/nr;->w:I

    if-nez v3, :cond_4

    iget v3, p0, Lyads/nr;->p:I

    goto :goto_3

    :cond_4
    move v3, v1

    .line 253
    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 254
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    .line 255
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, 0x0

    .line 256
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 257
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final a(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lyads/nr;->c:Lyads/ir;

    .line 212
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 213
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 214
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    .line 216
    invoke-virtual {p0, p1, v1}, Lyads/nr;->a(IF)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 217
    iget-object v2, p0, Lyads/nr;->y:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_3

    .line 218
    new-array v2, v3, [I

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lyads/nr;->y:Landroid/animation/ValueAnimator;

    .line 219
    sget-object v3, Lyads/nr;->G:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 220
    iget-object v2, p0, Lyads/nr;->y:Landroid/animation/ValueAnimator;

    iget-wide v3, p0, Lyads/nr;->h:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 221
    iget-object v2, p0, Lyads/nr;->y:Landroid/animation/ValueAnimator;

    new-instance v3, Ld4a;

    invoke-direct {v3, p0}, Ld4a;-><init>(Lyads/nr;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 222
    :cond_3
    iget-object v2, p0, Lyads/nr;->y:Landroid/animation/ValueAnimator;

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 223
    iget-object v0, p0, Lyads/nr;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 224
    :cond_4
    iget-object v0, p0, Lyads/nr;->c:Lyads/ir;

    iget-wide v1, p0, Lyads/nr;->h:J

    invoke-virtual {v0, p1, v1, v2}, Lyads/ir;->a(IJ)V

    return-void

    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 225
    invoke-virtual {p0, p1, v1, v0}, Lyads/nr;->setScrollPosition(IFZ)V

    return-void
.end method

.method public final a(IFZ)V
    .locals 4

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 173
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_5

    .line 174
    iget-object v1, p0, Lyads/nr;->c:Lyads/ir;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    iget-object v1, p0, Lyads/nr;->c:Lyads/ir;

    .line 176
    iget-object v2, v1, Lyads/ir;->m:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, v1, Lyads/ir;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 178
    :cond_1
    iput p1, v1, Lyads/ir;->d:I

    .line 179
    iput p2, v1, Lyads/ir;->e:F

    .line 180
    invoke-virtual {v1}, Lyads/ir;->a()V

    .line 181
    iget v2, v1, Lyads/ir;->e:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    .line 182
    iget v2, v1, Lyads/ir;->t:F

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_3

    .line 183
    iput v3, v1, Lyads/ir;->t:F

    .line 184
    iget v2, v1, Lyads/ir;->d:I

    add-int/lit8 v2, v2, 0x1

    .line 185
    iget v3, v1, Lyads/ir;->l:I

    if-ge v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_0
    iput v2, v1, Lyads/ir;->u:I

    .line 186
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 187
    :cond_3
    iget-object v1, p0, Lyads/nr;->y:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    iget-object v1, p0, Lyads/nr;->y:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 189
    :cond_4
    invoke-virtual {p0, p1, p2}, Lyads/nr;->a(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    if-eqz p3, :cond_5

    .line 190
    invoke-virtual {p0, v0}, Lyads/nr;->b(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 226
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method

.method public final a(Landroid/widget/TextView;)V
    .locals 0

    .line 191
    return-void
.end method

.method public final a(Lyads/kr;Z)V
    .locals 10

    iget-object v0, p1, Lyads/kr;->c:Lyads/nr;

    if-ne v0, p0, :cond_7

    iget-object v0, p1, Lyads/kr;->d:Lyads/xu5;

    iget-object v1, p0, Lyads/nr;->c:Lyads/ir;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lyads/nr;->D:Lyads/qu5;

    iget-object v2, p0, Lyads/nr;->c:Lyads/ir;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget-object v4, v1, Lyads/qu5;->c:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lyads/qu5;->b:Lyads/ir;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ne v4, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v1, Lyads/qu5;->b:Lyads/ir;

    const/16 v5, 0x11

    if-nez v2, :cond_1

    new-instance v2, Landroid/widget/ImageView;

    iget-object v6, v1, Lyads/qu5;->a:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, v1, Lyads/qu5;->e:I

    iget v8, v1, Lyads/qu5;->d:I

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v1, Lyads/qu5;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    new-instance v6, Landroid/widget/ImageView;

    iget-object v7, v1, Lyads/qu5;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v1, Lyads/qu5;->e:I

    iget v9, v1, Lyads/qu5;->d:I

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v1, Lyads/qu5;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {v0, v3}, Lyads/xu5;->setSelected(Z)V

    :cond_3
    iget-object v0, p0, Lyads/nr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p1, Lyads/kr;->b:I

    iget-object v1, p0, Lyads/nr;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lyads/nr;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v3

    :goto_1
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lyads/nr;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/kr;

    iput v0, v2, Lyads/kr;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_6

    iget-object p0, p1, Lyads/kr;->c:Lyads/nr;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1, v3}, Lyads/nr;->b(Lyads/kr;Z)V

    return-void

    :cond_5
    const-string p0, "Tab not attached to a TabLayout"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    const-string p0, "Tab belongs to a different TabLayout."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lyads/xu5;)V
    .locals 4

    .line 193
    iget v0, p0, Lyads/nr;->d:I

    iget v1, p0, Lyads/nr;->e:I

    iget v2, p0, Lyads/nr;->f:I

    iget v3, p0, Lyads/nr;->g:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lyads/xu5;->setTabPadding(IIII)V

    .line 194
    iget-object v0, p0, Lyads/nr;->j:Lyads/cf2;

    iget v1, p0, Lyads/nr;->i:I

    .line 195
    iput-object v0, p1, Lyads/xu5;->c:Lyads/cf2;

    .line 196
    iput v1, p1, Lyads/xu5;->e:I

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lyads/xu5;->e:I

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 199
    :cond_0
    iget-object v0, p0, Lyads/nr;->E:Lyads/sg3;

    .line 200
    iput-object v0, p1, Lyads/xu5;->d:Lyads/sg3;

    .line 201
    iget-object v0, p0, Lyads/nr;->k:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 203
    :cond_1
    iget-boolean v0, p0, Lyads/nr;->l:Z

    .line 204
    iput-boolean v0, p1, Lyads/xu5;->f:Z

    .line 205
    iget-boolean v0, p0, Lyads/nr;->q:Z

    .line 206
    iput-boolean v0, p1, Lyads/xu5;->g:Z

    if-eqz v0, :cond_2

    .line 207
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 208
    new-instance v0, Lx3;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lx3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lyads/xu5;->setMaxWidthProvider(Lyads/vu5;)V

    .line 209
    new-instance v0, Ly3;

    invoke-direct {v0, p0, v1}, Ly3;-><init>(Ljava/lang/Object;I)V

    .line 210
    iput-object v0, p1, Lyads/xu5;->i:Lyads/wu5;

    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 0

    .line 8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()I
    .locals 0

    .line 69
    iget p0, p0, Lyads/nr;->m:I

    return p0
.end method

.method public final b(I)V
    .locals 5

    .line 64
    iget-object v0, p0, Lyads/nr;->c:Lyads/ir;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 65
    iget-object v1, p0, Lyads/nr;->c:Lyads/ir;

    invoke-virtual {v1, p1}, Lyads/ir;->a(I)I

    move-result p1

    if-ge p1, v0, :cond_1

    .line 66
    iget-object v1, p0, Lyads/nr;->c:Lyads/ir;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 67
    iget-object v3, p0, Lyads/nr;->c:Lyads/ir;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 68
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Lyads/kr;Z)V
    .locals 2

    iget-object v0, p0, Lyads/nr;->b:Lyads/kr;

    if-ne v0, p1, :cond_1

    if-eqz v0, :cond_7

    iget-object p2, p0, Lyads/nr;->x:Lyads/fr;

    if-eqz p2, :cond_0

    invoke-interface {p2, v0}, Lyads/fr;->b(Lyads/kr;)V

    :cond_0
    iget p1, p1, Lyads/kr;->b:I

    invoke-virtual {p0, p1}, Lyads/nr;->a(I)V

    return-void

    :cond_1
    if-eqz p2, :cond_6

    const/4 p2, -0x1

    if-eqz p1, :cond_2

    iget v0, p1, Lyads/kr;->b:I

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    if-eq v0, p2, :cond_3

    invoke-virtual {p0, v0}, Lyads/nr;->b(I)V

    :cond_3
    iget-object v1, p0, Lyads/nr;->b:Lyads/kr;

    if-eqz v1, :cond_4

    iget v1, v1, Lyads/kr;->b:I

    if-ne v1, p2, :cond_5

    :cond_4
    if-eq v0, p2, :cond_5

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, v1}, Lyads/nr;->setScrollPosition(IFZ)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Lyads/nr;->a(I)V

    :cond_6
    :goto_1
    iput-object p1, p0, Lyads/nr;->b:Lyads/kr;

    if-eqz p1, :cond_7

    iget-object p0, p0, Lyads/nr;->x:Lyads/fr;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lyads/fr;->a(Lyads/kr;)V

    :cond_7
    return-void
.end method

.method public final c()Lyads/kr;
    .locals 4

    sget-object v0, Lyads/nr;->H:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/kr;

    if-nez v0, :cond_0

    new-instance v0, Lyads/kr;

    invoke-direct {v0}, Lyads/kr;-><init>()V

    :cond_0
    iput-object p0, v0, Lyads/kr;->c:Lyads/nr;

    iget-object v1, p0, Lyads/nr;->F:Landroidx/core/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroidx/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/xu5;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lyads/nr;->a(Landroid/content/Context;)Lyads/xu5;

    move-result-object v1

    invoke-virtual {p0, v1}, Lyads/nr;->a(Lyads/xu5;)V

    :cond_1
    iget-object v2, v1, Lyads/xu5;->j:Lyads/kr;

    if-eq v0, v2, :cond_2

    iput-object v0, v1, Lyads/xu5;->j:Lyads/kr;

    iget-object v2, v0, Lyads/kr;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lyads/xu5;->i:Lyads/wu5;

    if-eqz v2, :cond_2

    check-cast v2, Ly3;

    invoke-virtual {v2, v1}, Ly3;->b(Lyads/xu5;)V

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget v2, p0, Lyads/nr;->n:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    goto :goto_0

    :cond_3
    iget v2, p0, Lyads/nr;->w:I

    if-nez v2, :cond_4

    iget v2, p0, Lyads/nr;->p:I

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    iput-object v1, v0, Lyads/kr;->d:Lyads/xu5;

    return-object v0
.end method

.method public final d()V
    .locals 6

    invoke-virtual {p0}, Lyads/nr;->e()V

    iget-object v0, p0, Lyads/nr;->A:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Lyads/nr;->c()Lyads/kr;

    move-result-object v3

    iget-object v4, p0, Lyads/nr;->A:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lyads/kr;->a:Ljava/lang/CharSequence;

    iget-object v4, v3, Lyads/kr;->d:Lyads/xu5;

    if-eqz v4, :cond_1

    iget-object v5, v4, Lyads/xu5;->j:Lyads/kr;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    iget-object v5, v5, Lyads/kr;->a:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v4, Lyads/xu5;->i:Lyads/wu5;

    if-eqz v5, :cond_1

    check-cast v5, Ly3;

    invoke-virtual {v5, v4}, Ly3;->b(Lyads/xu5;)V

    :cond_1
    invoke-virtual {p0, v3, v1}, Lyads/nr;->a(Lyads/kr;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lyads/nr;->z:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lyads/nr;->b:Lyads/kr;

    if-eqz v1, :cond_3

    iget v1, v1, Lyads/kr;->b:I

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    :goto_2
    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lyads/nr;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lyads/nr;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/kr;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lyads/nr;->b(Lyads/kr;Z)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lyads/nr;->e()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lyads/nr;->t:Lyads/an4;

    invoke-virtual {p0, p1}, Lyads/an4;->a(Landroid/view/MotionEvent;)V

    return v0
.end method

.method public final e()V
    .locals 7

    iget-object v0, p0, Lyads/nr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_5

    iget-object v2, p0, Lyads/nr;->c:Lyads/ir;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lyads/xu5;

    iget-object v3, p0, Lyads/nr;->c:Lyads/ir;

    invoke-virtual {v3, v0}, Lyads/ir;->a(I)I

    move-result v3

    iget-object v4, p0, Lyads/nr;->c:Lyads/ir;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v4, p0, Lyads/nr;->D:Lyads/qu5;

    iget-object v5, v4, Lyads/qu5;->c:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v4, Lyads/qu5;->b:Lyads/ir;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lyads/qu5;->b:Lyads/ir;

    if-nez v3, :cond_1

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    iget-object v3, v2, Lyads/xu5;->j:Lyads/kr;

    if-eqz v3, :cond_3

    iput-object v1, v2, Lyads/xu5;->j:Lyads/kr;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Lyads/xu5;->i:Lyads/wu5;

    if-eqz v1, :cond_3

    check-cast v1, Ly3;

    invoke-virtual {v1, v2}, Ly3;->b(Lyads/xu5;)V

    :cond_3
    invoke-virtual {v2, v6}, Lyads/xu5;->setSelected(Z)V

    iget-object v1, p0, Lyads/nr;->F:Landroidx/core/util/Pools$SimplePool;

    invoke-virtual {v1, v2}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lyads/nr;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/kr;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iput-object v1, v2, Lyads/kr;->c:Lyads/nr;

    iput-object v1, v2, Lyads/kr;->d:Lyads/xu5;

    iput-object v1, v2, Lyads/kr;->a:Ljava/lang/CharSequence;

    const/4 v3, -0x1

    iput v3, v2, Lyads/kr;->b:I

    sget-object v3, Lyads/nr;->H:Landroidx/core/util/Pools$SynchronizedPool;

    invoke-virtual {v3, v2}, Landroidx/core/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iput-object v1, p0, Lyads/nr;->b:Lyads/kr;

    return-void
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final onMeasure(II)V
    .locals 4

    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Lw65;->b(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lyads/nr;->o:I

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Lyads/pq;->a(Ljava/lang/Number;Landroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v1}, Lw65;->b(F)I

    move-result v1

    sub-int v1, v0, v1

    :goto_1
    iput v1, p0, Lyads/nr;->m:I

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget v1, p0, Lyads/nr;->w:I

    if-eq v1, v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_5

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_5

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    :cond_5
    return-void
.end method

.method public final onOverScrolled(IIZZ)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onOverScrolled(IIZZ)V

    iget-object p0, p0, Lyads/nr;->t:Lyads/an4;

    iget-boolean p1, p0, Lyads/an4;->b:Z

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lyads/an4;->a:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Landroidx/core/view/ViewCompat;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    :cond_0
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    iget-object p0, p0, Lyads/nr;->t:Lyads/an4;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lyads/an4;->b:Z

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    if-eqz p3, :cond_2

    if-eq p3, p1, :cond_2

    iget-object p1, p0, Lyads/nr;->b:Lyads/kr;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Lyads/kr;->b:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lyads/nr;->setScrollPosition(IFZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAnimationDuration(J)V
    .locals 0

    iput-wide p1, p0, Lyads/nr;->h:J

    return-void
.end method

.method public setAnimationType(Lyads/er;)V
    .locals 0

    iget-object p0, p0, Lyads/nr;->c:Lyads/ir;

    invoke-virtual {p0, p1}, Lyads/ir;->a(Lyads/er;)V

    return-void
.end method

.method public setFocusTracker(Lyads/sg3;)V
    .locals 0

    iput-object p1, p0, Lyads/nr;->E:Lyads/sg3;

    return-void
.end method

.method public setOnTabSelectedListener(Lyads/fr;)V
    .locals 0

    iput-object p1, p0, Lyads/nr;->x:Lyads/fr;

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lyads/nr;->a(IFZ)V

    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1

    iget-object p0, p0, Lyads/nr;->c:Lyads/ir;

    iget v0, p0, Lyads/ir;->b:I

    if-eq v0, p1, :cond_1

    shr-int/lit8 v0, p1, 0x18

    if-nez v0, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lyads/ir;->b:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lyads/ir;->b:I

    :goto_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setTabBackgroundColor(I)V
    .locals 1

    iget-object p0, p0, Lyads/nr;->c:Lyads/ir;

    iget v0, p0, Lyads/ir;->c:I

    if-eq v0, p1, :cond_1

    shr-int/lit8 v0, p1, 0x18

    if-nez v0, :cond_0

    const/4 p1, -0x1

    iput p1, p0, Lyads/ir;->c:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lyads/ir;->c:I

    :goto_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setTabDelimiter(Landroid/graphics/Bitmap;II)V
    .locals 7

    iget-object p0, p0, Lyads/nr;->D:Lyads/qu5;

    iput-object p1, p0, Lyads/qu5;->c:Landroid/graphics/Bitmap;

    iput p3, p0, Lyads/qu5;->d:I

    iput p2, p0, Lyads/qu5;->e:I

    iget-object p1, p0, Lyads/qu5;->b:Lyads/ir;

    iget-boolean p2, p1, Lyads/ir;->s:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p3

    :goto_0
    if-lez p1, :cond_0

    iget-object p2, p0, Lyads/qu5;->b:Lyads/ir;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 p1, p1, -0x2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyads/qu5;->b:Lyads/ir;

    iget-boolean p2, p1, Lyads/ir;->s:Z

    const/4 v0, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    iput-boolean p2, p1, Lyads/ir;->s:Z

    iget p2, p1, Lyads/ir;->e:F

    sub-float p2, v1, p2

    iget v2, p1, Lyads/ir;->t:F

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_2

    iput p2, p1, Lyads/ir;->t:F

    iget p2, p1, Lyads/ir;->d:I

    add-int/2addr p2, p3

    iget v2, p1, Lyads/ir;->l:I

    if-ge p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput p2, p1, Lyads/ir;->u:I

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p1}, Lyads/ir;->a()V

    :cond_3
    iget-object p1, p0, Lyads/qu5;->c:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lyads/qu5;->b:Lyads/ir;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, p3

    :goto_2
    iget-object v2, p0, Lyads/qu5;->b:Lyads/ir;

    if-ge p2, p1, :cond_4

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lyads/qu5;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lyads/qu5;->e:I

    iget v6, p0, Lyads/qu5;->d:I

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lyads/qu5;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    mul-int/lit8 v4, p2, 0x2

    sub-int/2addr v4, p3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    iget-boolean p0, v2, Lyads/ir;->s:Z

    if-eq p0, p3, :cond_7

    iput-boolean p3, v2, Lyads/ir;->s:Z

    iget p0, v2, Lyads/ir;->e:F

    sub-float/2addr v1, p0

    iget p0, v2, Lyads/ir;->t:F

    cmpl-float p0, v1, p0

    if-eqz p0, :cond_6

    iput v1, v2, Lyads/ir;->t:F

    iget p0, v2, Lyads/ir;->d:I

    add-int/2addr p0, p3

    iget p1, v2, Lyads/ir;->l:I

    if-ge p0, p1, :cond_5

    move v0, p0

    :cond_5
    iput v0, v2, Lyads/ir;->u:I

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_6
    invoke-virtual {v2}, Lyads/ir;->a()V

    :cond_7
    return-void
.end method

.method public setTabIndicatorCornersRadii([F)V
    .locals 1

    iget-object p0, p0, Lyads/nr;->c:Lyads/ir;

    iget-object v0, p0, Lyads/ir;->i:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lyads/ir;->i:[F

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setTabIndicatorHeight(I)V
    .locals 1

    iget-object p0, p0, Lyads/nr;->c:Lyads/ir;

    iget v0, p0, Lyads/ir;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lyads/ir;->a:I

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setTabItemSpacing(I)V
    .locals 4

    iget-object p0, p0, Lyads/nr;->c:Lyads/ir;

    iget v0, p0, Lyads/ir;->f:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lyads/ir;->f:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lyads/ir;->f:I

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    iget v0, p0, Lyads/nr;->w:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lyads/nr;->w:I

    invoke-virtual {p0}, Lyads/nr;->a()V

    :cond_0
    return-void
.end method

.method public setTabPaddings(IIII)V
    .locals 0

    iput p1, p0, Lyads/nr;->d:I

    iput p2, p0, Lyads/nr;->e:I

    iput p3, p0, Lyads/nr;->f:I

    iput p4, p0, Lyads/nr;->g:I

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    return-void
.end method

.method public setTabTextColors(II)V
    .locals 2

    .line 38
    sget-object v0, Landroid/widget/HorizontalScrollView;->SELECTED_STATE_SET:[I

    sget-object v1, Landroid/widget/HorizontalScrollView;->EMPTY_STATE_SET:[I

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    .line 39
    filled-new-array {p2, p1}, [I

    move-result-object p1

    .line 40
    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, v0, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 41
    invoke-virtual {p0, p2}, Lyads/nr;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 3

    iget-object v0, p0, Lyads/nr;->k:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lyads/nr;->k:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lyads/nr;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lyads/nr;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/kr;

    iget-object v1, v1, Lyads/kr;->d:Lyads/xu5;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lyads/nr;->k:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTabsEnabled(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lyads/nr;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lyads/nr;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/kr;

    iget-object v1, v1, Lyads/kr;->d:Lyads/xu5;

    invoke-virtual {v1, p1}, Lyads/xu5;->setEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 3

    iget-object v0, p0, Lyads/nr;->z:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lyads/nr;->C:Lyads/lr;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    iput-object p1, p0, Lyads/nr;->z:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lyads/nr;->C:Lyads/lr;

    if-nez v1, :cond_1

    new-instance v1, Lyads/lr;

    invoke-direct {v1, p0}, Lyads/lr;-><init>(Lyads/nr;)V

    iput-object v1, p0, Lyads/nr;->C:Lyads/lr;

    :cond_1
    const/4 v2, 0x0

    iput v2, v1, Lyads/lr;->c:I

    iput v2, v1, Lyads/lr;->b:I

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    new-instance v1, Lyads/mr;

    invoke-direct {v1, p1}, Lyads/mr;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {p0, v1}, Lyads/nr;->setOnTabSelectedListener(Lyads/fr;)V

    iget-object p1, p0, Lyads/nr;->A:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lyads/nr;->B:Lyads/jr;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    iput-object v0, p0, Lyads/nr;->A:Landroidx/viewpager/widget/PagerAdapter;

    iget-object p1, p0, Lyads/nr;->B:Lyads/jr;

    if-nez p1, :cond_3

    new-instance p1, Lyads/jr;

    invoke-direct {p1, p0}, Lyads/jr;-><init>(Lyads/nr;)V

    iput-object p1, p0, Lyads/nr;->B:Lyads/jr;

    :cond_3
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-virtual {p0}, Lyads/nr;->d()V

    return-void

    :cond_4
    const-string p0, "ViewPager does not have a PagerAdapter set"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lyads/nr;->z:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, p1}, Lyads/nr;->setOnTabSelectedListener(Lyads/fr;)V

    iget-object v0, p0, Lyads/nr;->A:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lyads/nr;->B:Lyads/jr;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_6
    iput-object p1, p0, Lyads/nr;->A:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0}, Lyads/nr;->d()V

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 2

    iget-object v0, p0, Lyads/nr;->c:Lyads/ir;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method
