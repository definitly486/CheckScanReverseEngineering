.class public Lcom/monetization/ads/nativeads/CustomizableMediaView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final f:I


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private final d:Lyads/se6;

.field private e:Lyads/gc0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/R$layout;->monetization_ads_internal_outstream_controls_default:I

    sput v0, Lcom/monetization/ads/nativeads/CustomizableMediaView;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/monetization/ads/nativeads/CustomizableMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/monetization/ads/nativeads/CustomizableMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 71
    new-instance v0, Lyads/te6;

    invoke-direct {v0}, Lyads/te6;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/monetization/ads/nativeads/CustomizableMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILyads/te6;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILyads/te6;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-eqz p2, :cond_0

    sget-object p3, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalMediaView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalMediaView_monetization_internal_video_controls_layout:I

    sget p3, Lcom/monetization/ads/nativeads/CustomizableMediaView;->f:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;->a:I

    sget p2, Lcom/yandex/mobile/ads/R$styleable;->MonetizationAdsInternalMediaView_monetization_internal_video_scale_type:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-static {}, Lyads/se6;->values()[Lyads/se6;

    move-result-object p3

    invoke-static {p2, p3}, Lyr;->O(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/se6;

    iput-object p2, p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;->d:Lyads/se6;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    sget p1, Lcom/monetization/ads/nativeads/CustomizableMediaView;->f:I

    iput p1, p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;->a:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;->d:Lyads/se6;

    :goto_0
    new-instance p1, Lyads/vl;

    new-instance p2, Lk72;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lk72;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2}, Lyads/vl;-><init>(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private static final a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)V
    .locals 4

    iget-object v0, p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;->e:Lyads/gc0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    check-cast v0, Lyads/bg5;

    iget-object v0, v0, Lyads/bg5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/eg5;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lyads/eg5;->f:Lyads/ql5;

    iget v3, v2, Lyads/ql5;->b:I

    if-lt v1, v3, :cond_0

    iget v1, v2, Lyads/ql5;->c:I

    if-ge p0, v1, :cond_1

    :cond_0
    iget-object p0, v0, Lyads/eg5;->e:Lyads/z14;

    iget-object v1, v0, Lyads/eg5;->i:Lyads/dg5;

    sget-object v2, Lyads/eg5;->k:[Lze4;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2, p0}, Lsr5;->setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/monetization/ads/nativeads/CustomizableMediaView;)V
    .locals 0

    invoke-static {p0}, Lcom/monetization/ads/nativeads/CustomizableMediaView;->a(Lcom/monetization/ads/nativeads/CustomizableMediaView;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;->a:I

    return-void
.end method

.method public final getHeightMeasureSpec()I
    .locals 0

    iget p0, p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;->c:I

    return p0
.end method

.method public final getOnSizeChangedListener$mobileads_externalRelease()Lyads/gc0;
    .locals 0

    iget-object p0, p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;->e:Lyads/gc0;

    return-object p0
.end method

.method public final getVideoControlsLayoutId()I
    .locals 0

    iget p0, p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;->a:I

    return p0
.end method

.method public final getVideoScaleType()Lyads/se6;
    .locals 0

    iget-object p0, p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;->d:Lyads/se6;

    return-object p0
.end method

.method public final getWidthMeasureSpec()I
    .locals 0

    iget p0, p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;->b:I

    return p0
.end method

.method public final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iput p1, p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;->b:I

    iput p2, p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;->c:I

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p0, p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;->e:Lyads/gc0;

    if-eqz p0, :cond_1

    check-cast p0, Lyads/bg5;

    iget-object p0, p0, Lyads/bg5;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/eg5;

    if-eqz p0, :cond_1

    iget-object p3, p0, Lyads/eg5;->f:Lyads/ql5;

    iget p4, p3, Lyads/ql5;->b:I

    if-lt p1, p4, :cond_0

    iget p1, p3, Lyads/ql5;->c:I

    if-ge p2, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lyads/eg5;->e:Lyads/z14;

    iget-object p2, p0, Lyads/eg5;->i:Lyads/dg5;

    sget-object p3, Lyads/eg5;->k:[Lze4;

    const/4 p4, 0x2

    aget-object p3, p3, p4

    invoke-virtual {p2, p0, p3, p1}, Lsr5;->setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final setOnSizeChangedListener$mobileads_externalRelease(Lyads/gc0;)V
    .locals 0

    iput-object p1, p0, Lcom/monetization/ads/nativeads/CustomizableMediaView;->e:Lyads/gc0;

    return-void
.end method
