.class public final Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:Lyads/wx3;

.field private final b:Lyads/tf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 40
    invoke-direct/range {v0 .. v7}, Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILyads/wx3;Lyads/uf;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 38
    invoke-direct/range {v0 .. v7}, Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILyads/wx3;Lyads/uf;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const/16 v6, 0x18

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 39
    invoke-direct/range {v0 .. v7}, Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILyads/wx3;Lyads/uf;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILyads/wx3;Lyads/uf;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-object p4, p0, Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;->a:Lyads/wx3;

    .line 43
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    new-instance p1, Lyads/tf;

    invoke-direct {p1, p0}, Lyads/tf;-><init>(Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;)V

    .line 45
    iput-object p1, p0, Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;->b:Lyads/tf;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILyads/wx3;Lyads/uf;ILjh2;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    :cond_1
    move v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    new-instance p4, Lyads/uk5;

    invoke-direct {p4}, Lyads/uk5;-><init>()V

    :cond_2
    move-object v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    new-instance p5, Lyads/uf;

    invoke-direct {p5}, Lyads/uf;-><init>()V

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILyads/wx3;Lyads/uf;)V

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1b

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;->b:Lyads/tf;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lyads/tf;->a:Lyads/yf;

    invoke-virtual {p0}, Lyads/yf;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;->a:Lyads/wx3;

    invoke-interface {v0, p1, p2}, Lyads/wx3;->a(II)Lyads/vx3;

    move-result-object p1

    iget p2, p1, Lyads/vx3;->a:I

    iget p1, p1, Lyads/vx3;->b:I

    invoke-super {p0, p2, p1}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1b

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;->b:Lyads/tf;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lyads/tf;->a:Lyads/yf;

    invoke-virtual {p0}, Lyads/yf;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setAutoSizeTextType(I)V
    .locals 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;->b:Lyads/tf;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lyads/tf;->a:Lyads/yf;

    iget-object v0, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lyads/yf;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v2, 0x41400000    # 12.0f

    const/4 v3, 0x2

    invoke-static {v3, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/high16 v4, 0x42e00000    # 112.0f

    invoke-static {v3, v4, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-lez v3, :cond_8

    cmpg-float v3, p1, v2

    if-lez v3, :cond_7

    iput v1, p0, Lyads/yf;->a:I

    iput v2, p0, Lyads/yf;->d:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lyads/yf;->c:F

    iget-object v4, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    sub-float/2addr p1, v2

    div-float/2addr p1, v3

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    add-int/2addr p1, v1

    new-array v2, p1, [I

    move v3, v0

    :goto_0
    if-ge v3, p1, :cond_1

    iget v4, p0, Lyads/yf;->d:F

    int-to-float v5, v3

    iget v6, p0, Lyads/yf;->c:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v0

    :goto_1
    if-ge v4, p1, :cond_4

    aget v5, v2, v4

    if-lez v5, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne p1, v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v2, p1, [I

    :goto_2
    if-ge v0, p1, :cond_6

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iput-object v2, p0, Lyads/yf;->e:[I

    iput-boolean v1, p0, Lyads/yf;->b:Z

    invoke-virtual {p0}, Lyads/yf;->a()V

    return-void

    :cond_7
    const-string p0, "px) is less or equal to minimum auto-size text size ("

    const-string v0, "px)"

    const-string v1, "Maximum auto-size text size ("

    invoke-static {v1, p1, p0, v2, v0}, Lgg;->d(Ljava/lang/String;FLjava/lang/Object;FLjava/lang/Object;)V

    return-void

    :cond_8
    const-string p0, "Minimum auto-size text size ("

    const-string p1, "px) is less or equal to (0px)"

    invoke-static {p0, v2, p1}, Ldq;->c(Ljava/lang/String;FLjava/lang/Object;)V

    return-void

    :cond_9
    const-string p0, "Unknown auto-size text type: "

    invoke-static {p1, p0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_a
    iput v0, p0, Lyads/yf;->a:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lyads/yf;->d:F

    iput p1, p0, Lyads/yf;->c:F

    new-array p1, v0, [I

    iput-object p1, p0, Lyads/yf;->e:[I

    iput-boolean v0, p0, Lyads/yf;->b:Z

    :cond_b
    return-void
.end method

.method public final setMeasureSpecProvider(Lyads/wx3;)V
    .locals 0

    iput-object p1, p0, Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;->a:Lyads/wx3;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;->b:Lyads/tf;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lyads/tf;->a:Lyads/yf;

    iget-object v0, p0, Lyads/yf;->g:Lcom/monetization/ads/fullscreen/template/view/ExtendedTextView;

    iget v0, p0, Lyads/yf;->a:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lyads/yf;->a(IF)V

    :cond_2
    :goto_0
    return-void
.end method
