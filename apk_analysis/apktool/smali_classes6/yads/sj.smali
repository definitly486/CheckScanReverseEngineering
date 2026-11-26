.class public Lyads/sj;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Lyads/wj;


# static fields
.field public static final synthetic f:[Lze4;


# instance fields
.field public final a:Lyads/th;

.field public final b:Lyads/hp0;

.field public final c:Lyads/hp0;

.field public final d:Landroid/graphics/Matrix;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lyads/sj;

    const-string v1, "gravity"

    const-string v2, "getGravity()I"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v1

    const-string v2, "aspectRatio"

    const-string v4, "getAspectRatio()F"

    invoke-static {v0, v2, v4, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v2

    const-string v4, "imageScale"

    const-string v5, "getImageScale()Lcom/yandex/div/internal/widget/AspectImageView$Scale;"

    invoke-static {v0, v4, v5, v3}, Lyads/mo;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lxe4;

    move-result-object v0

    const/4 v4, 0x3

    new-array v4, v4, [Lze4;

    aput-object v1, v4, v3

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v0, v4, v1

    sput-object v4, Lyads/sj;->f:[Lze4;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1, v2, v0, v1}, Lyads/sj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0, v1}, Lyads/sj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lyads/th;

    invoke-direct {p1}, Lyads/th;-><init>()V

    iput-object p1, p0, Lyads/sj;->a:Lyads/th;

    invoke-static {}, Lyads/vj;->a()Lyads/hp0;

    move-result-object p1

    iput-object p1, p0, Lyads/sj;->b:Lyads/hp0;

    sget-object p1, Lyads/qj;->b:Lyads/qj;

    invoke-static {p1}, Lyads/nh6;->a(Ljava/lang/Object;)Lyads/hp0;

    move-result-object p1

    iput-object p1, p0, Lyads/sj;->c:Lyads/hp0;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lyads/sj;->d:Landroid/graphics/Matrix;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/sj;->e:Z

    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 p3, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lyads/sj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getBaseline()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final invalidate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/sj;->e:Z

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lyads/sj;->d:Landroid/graphics/Matrix;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_0
    iget-boolean v0, p0, Lyads/sj;->e:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    if-gez v0, :cond_2

    move v0, v3

    :cond_2
    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    if-gez v1, :cond_3

    move v1, v3

    :cond_3
    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v5, p0, Lyads/sj;->a:Lyads/th;

    sget-object v6, Lyads/sj;->f:[Lze4;

    aget-object v7, v6, v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v5, Lyads/th;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    invoke-static {v5, v7}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v5

    iget-object v7, p0, Lyads/sj;->c:Lyads/hp0;

    const/4 v8, 0x2

    aget-object v9, v6, v8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast v7, Lyads/qj;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const/4 v9, 0x1

    if-eqz v7, :cond_7

    if-eq v7, v9, :cond_6

    if-eq v7, v8, :cond_5

    const/4 v10, 0x3

    if-ne v7, v10, :cond_4

    div-float v7, v0, v4

    goto :goto_0

    :cond_4
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_5
    div-float v7, v0, v4

    div-float v10, v1, v2

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    goto :goto_0

    :cond_6
    div-float v7, v0, v4

    div-float v10, v1, v2

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    goto :goto_0

    :cond_7
    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    iget-object v10, p0, Lyads/sj;->c:Lyads/hp0;

    aget-object v6, v6, v8

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v10, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast v6, Lyads/qj;

    sget-object v8, Lyads/rj;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v8, v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_8

    div-float v6, v1, v2

    goto :goto_1

    :cond_8
    move v6, v7

    :goto_1
    and-int/lit8 v8, v5, 0x7

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    if-eq v8, v9, :cond_a

    const/4 v9, 0x5

    if-eq v8, v9, :cond_9

    move v0, v11

    goto :goto_2

    :cond_9
    mul-float/2addr v4, v7

    sub-float/2addr v0, v4

    goto :goto_2

    :cond_a
    invoke-static {v4, v7, v0, v10}, Lrg;->b(FFFF)F

    move-result v0

    :goto_2
    and-int/lit8 v4, v5, 0x70

    const/16 v5, 0x10

    if-eq v4, v5, :cond_c

    const/16 v5, 0x50

    if-eq v4, v5, :cond_b

    goto :goto_3

    :cond_b
    mul-float/2addr v2, v6

    sub-float v11, v1, v2

    goto :goto_3

    :cond_c
    invoke-static {v2, v6, v1, v10}, Lrg;->b(FFFF)F

    move-result v11

    :goto_3
    iget-object v1, p0, Lyads/sj;->d:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v1, v7, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v1, v0, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lyads/sj;->d:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_4
    iput-boolean v3, p0, Lyads/sj;->e:Z

    :cond_d
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/sj;->e:Z

    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object v0, p0, Lyads/sj;->b:Lyads/hp0;

    sget-object v1, Lyads/sj;->f:[Lze4;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lyads/hp0;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lyads/sj;->a(I)Z

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v4, 0x40000000    # 2.0f

    if-eq p2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-nez p1, :cond_2

    if-nez v2, :cond_2

    int-to-float p1, p2

    div-float/2addr p1, v0

    invoke-static {p1}, Lw65;->b(F)I

    move-result v4

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    if-eqz v2, :cond_3

    int-to-float p1, p2

    div-float/2addr p1, v0

    invoke-static {p1}, Lw65;->b(F)I

    move-result v4

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    if-nez v2, :cond_4

    int-to-float p1, v4

    mul-float/2addr p1, v0

    invoke-static {p1}, Lw65;->b(F)I

    move-result p2

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    if-eqz v2, :cond_5

    int-to-float p1, p2

    div-float/2addr p1, v0

    invoke-static {p1}, Lw65;->b(F)I

    move-result v4

    :cond_5
    :goto_1
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/sj;->e:Z

    return-void
.end method

.method public final setAspectRatio(F)V
    .locals 3

    iget-object v0, p0, Lyads/sj;->b:Lyads/hp0;

    sget-object v1, Lyads/sj;->f:[Lze4;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lyads/hp0;->setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    return-void
.end method

.method public final setGravity(I)V
    .locals 3

    iget-object v0, p0, Lyads/sj;->a:Lyads/th;

    sget-object v1, Lyads/sj;->f:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lyads/th;->setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    return-void
.end method

.method public final setImageScale(Lyads/qj;)V
    .locals 3

    iget-object v0, p0, Lyads/sj;->c:Lyads/hp0;

    sget-object v1, Lyads/sj;->f:[Lze4;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lyads/hp0;->setValue(Ljava/lang/Object;Lze4;Ljava/lang/Object;)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    return-void
.end method
