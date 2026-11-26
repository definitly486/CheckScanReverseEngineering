.class public final Lgv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field public final b:Ld15;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/Rect;

.field public final f:I


# direct methods
.method public constructor <init>(Ld15;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lsq5;->c:Landroid/graphics/Paint;

    iput-object v0, p0, Lgv0;->c:Landroid/graphics/Paint;

    sget-object v0, Lsq5;->b:Landroid/graphics/RectF;

    iput-object v0, p0, Lgv0;->d:Landroid/graphics/RectF;

    sget-object v0, Lsq5;->a:Landroid/graphics/Rect;

    iput-object v0, p0, Lgv0;->e:Landroid/graphics/Rect;

    iput-object p1, p0, Lgv0;->b:Ld15;

    iput p2, p0, Lgv0;->f:I

    return-void
.end method


# virtual methods
.method public final drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    iget-object p5, p0, Lgv0;->d:Landroid/graphics/RectF;

    iget-object p7, p0, Lgv0;->e:Landroid/graphics/Rect;

    if-eqz p11, :cond_5

    instance-of p10, p8, Landroid/text/Spanned;

    if-eqz p10, :cond_5

    check-cast p8, Landroid/text/Spanned;

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p8

    if-ne p8, p9, :cond_5

    iget-object p8, p0, Lgv0;->c:Landroid/graphics/Paint;

    invoke-virtual {p8, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object p2, p0, Lgv0;->b:Ld15;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p9, p2, Ld15;->a:I

    invoke-virtual {p8}, Landroid/graphics/Paint;->getColor()I

    move-result p10

    invoke-virtual {p8, p10}, Landroid/graphics/Paint;->setColor(I)V

    iget p2, p2, Ld15;->c:I

    if-eqz p2, :cond_0

    int-to-float p2, p2

    invoke-virtual {p8, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p2

    :try_start_0
    invoke-virtual {p8}, Landroid/graphics/Paint;->descent()F

    move-result p10

    invoke-virtual {p8}, Landroid/graphics/Paint;->ascent()F

    move-result p11

    sub-float/2addr p10, p11

    const/high16 p11, 0x3f000000    # 0.5f

    add-float/2addr p10, p11

    float-to-int p10, p10

    invoke-static {p9, p10}, Ljava/lang/Math;->min(II)I

    move-result p10

    div-int/lit8 p10, p10, 0x2

    sub-int p12, p9, p10

    div-int/lit8 p12, p12, 0x2

    if-lez p4, :cond_1

    :goto_0
    add-int/2addr p3, p12

    goto :goto_1

    :cond_1
    sub-int/2addr p3, p9

    goto :goto_0

    :goto_1
    add-int p4, p3, p10

    invoke-virtual {p8}, Landroid/graphics/Paint;->descent()F

    move-result p9

    invoke-virtual {p8}, Landroid/graphics/Paint;->ascent()F

    move-result p12

    add-float/2addr p9, p12

    const/high16 p12, 0x40000000    # 2.0f

    div-float/2addr p9, p12

    add-float/2addr p9, p11

    float-to-int p9, p9

    add-int/2addr p6, p9

    div-int/lit8 p9, p10, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p6, p9

    add-int/2addr p10, p6

    iget p0, p0, Lgv0;->f:I

    if-eqz p0, :cond_3

    const/4 p9, 0x1

    if-ne p0, p9, :cond_2

    goto :goto_2

    :cond_2
    :try_start_1
    invoke-virtual {p7, p3, p6, p4, p10}, Landroid/graphics/Rect;->set(IIII)V

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p8, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, p7, p8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_2
    int-to-float p3, p3

    int-to-float p6, p6

    int-to-float p4, p4

    int-to-float p7, p10

    invoke-virtual {p5, p3, p6, p4, p7}, Landroid/graphics/RectF;->set(FFFF)V

    if-nez p0, :cond_4

    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    goto :goto_3

    :cond_4
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    :goto_3
    invoke-virtual {p8, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, p5, p8}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :goto_5
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0

    :cond_5
    return-void
.end method

.method public final getLeadingMargin(Z)I
    .locals 0

    iget-object p0, p0, Lgv0;->b:Ld15;

    iget p0, p0, Ld15;->a:I

    return p0
.end method
