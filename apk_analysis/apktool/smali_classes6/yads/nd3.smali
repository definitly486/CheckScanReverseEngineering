.class public final Lyads/nd3;
.super Lyads/px4;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Lyads/iw5;

.field public final f:Lyads/ld3;

.field public g:Landroid/graphics/drawable/BitmapDrawable;

.field public final h:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(IIILyads/iw5;Lyads/ld3;)V
    .locals 0

    invoke-direct {p0}, Lyads/px4;-><init>()V

    iput p1, p0, Lyads/nd3;->b:I

    iput p2, p0, Lyads/nd3;->c:I

    iput p3, p0, Lyads/nd3;->d:I

    iput-object p4, p0, Lyads/nd3;->e:Lyads/iw5;

    iput-object p5, p0, Lyads/nd3;->f:Lyads/ld3;

    const/4 p1, 0x0

    iput-object p1, p0, Lyads/nd3;->g:Landroid/graphics/drawable/BitmapDrawable;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lyads/nd3;->h:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2

    if-eqz p5, :cond_7

    iget p2, p0, Lyads/nd3;->d:I

    if-lez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p2

    invoke-static {p2}, Lw65;->b(F)I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result p1

    invoke-static {p1}, Lw65;->b(F)I

    move-result p1

    iget-object p3, p0, Lyads/nd3;->g:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    goto :goto_0

    :cond_1
    iget p3, p0, Lyads/nd3;->c:I

    :goto_0
    iget-object p4, p0, Lyads/nd3;->e:Lyads/iw5;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    if-eqz p4, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p4, v0, :cond_4

    const/4 p2, 0x0

    if-eq p4, v1, :cond_3

    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lme0;->e()V

    return p2

    :cond_3
    move p1, p2

    goto :goto_1

    :cond_4
    add-int/2addr p2, p1

    add-int/2addr p2, p3

    div-int/lit8 p1, p2, 0x2

    goto :goto_1

    :cond_5
    add-int p1, p2, p3

    :goto_1
    sub-int p2, p1, p3

    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p4, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p3, p4

    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v0, v1

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p2, p3

    iput p2, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr p1, v0

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object p1, p0, Lyads/nd3;->g:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0

    :cond_6
    iget p0, p0, Lyads/nd3;->b:I

    return p0

    :cond_7
    :goto_2
    iget p0, p0, Lyads/nd3;->b:I

    return p0
.end method

.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 1

    iget-object p2, p0, Lyads/nd3;->g:Landroid/graphics/drawable/BitmapDrawable;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    iget-object p4, p0, Lyads/nd3;->e:Lyads/iw5;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    if-eqz p4, :cond_3

    const/4 p9, 0x1

    const/4 v0, 0x2

    if-eq p4, p9, :cond_2

    if-eq p4, v0, :cond_4

    const/4 p6, 0x3

    if-ne p4, p6, :cond_1

    move p7, p8

    goto :goto_0

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_2
    add-int/2addr p6, p8

    add-int/2addr p6, p3

    div-int/lit8 p7, p6, 0x2

    goto :goto_0

    :cond_3
    add-int p7, p6, p3

    :cond_4
    :goto_0
    int-to-float p4, p7

    int-to-float p3, p3

    sub-float/2addr p4, p3

    iget-object p3, p0, Lyads/nd3;->h:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p6

    invoke-virtual {p3, p6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lyads/nd3;->h:Landroid/graphics/RectF;

    invoke-virtual {p0, p5, p4}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {p1, p5, p4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
