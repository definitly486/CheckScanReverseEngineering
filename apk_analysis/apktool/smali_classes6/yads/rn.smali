.class public final Lyads/rn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/DisplayMetrics;

.field public final b:Lyads/o92;

.field public final c:Lyads/h92;

.field public final d:Landroid/graphics/Canvas;

.field public final e:Lyads/fs2;

.field public final f:Landroid/graphics/Paint;

.field public final g:[F


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;Lyads/o92;Lyads/h92;Landroid/graphics/Canvas;Lyads/fs2;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/rn;->a:Landroid/util/DisplayMetrics;

    iput-object p2, p0, Lyads/rn;->b:Lyads/o92;

    iput-object p3, p0, Lyads/rn;->c:Lyads/h92;

    iput-object p4, p0, Lyads/rn;->d:Landroid/graphics/Canvas;

    iput-object p5, p0, Lyads/rn;->e:Lyads/fs2;

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Lyads/rn;->f:Landroid/graphics/Paint;

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    iget-object v0, p2, Lyads/o92;->a:Lyads/as2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    :cond_0
    invoke-static {p4, p1}, Lyads/uq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result p4

    int-to-float p4, p4

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p4, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    const/4 v2, 0x2

    aput p4, v0, v2

    const/4 v2, 0x3

    aput p4, v0, v2

    const/4 v2, 0x4

    aput p4, v0, v2

    const/4 v2, 0x5

    aput p4, v0, v2

    const/4 v2, 0x6

    aput p4, v0, v2

    const/4 v2, 0x7

    aput p4, v0, v2

    iput-object v0, p0, Lyads/rn;->g:[F

    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p0, p2, Lyads/o92;->b:Lyads/l42;

    invoke-static {p0, p5, p1}, Lyads/n51;->a(Lyads/l42;Lyads/fs2;Landroid/util/DisplayMetrics;)F

    move-result p0

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p0, p2, Lyads/o92;->b:Lyads/l42;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lyads/l42;->a:Lyads/as2;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void

    :cond_2
    iput-object p4, p0, Lyads/rn;->g:[F

    return-void
.end method


# virtual methods
.method public final a([FFFFF)V
    .locals 6

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lyads/rn;->c:Lyads/h92;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lyads/h92;->a()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    instance-of v3, v1, Lyads/t22;

    if-eqz v3, :cond_2

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    check-cast v1, Lyads/t22;

    iget-object v1, v1, Lyads/t22;->a:Lyads/as2;

    iget-object v4, p0, Lyads/rn;->e:Lyads/fs2;

    invoke-virtual {v1, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lyads/rn;->d:Landroid/graphics/Canvas;

    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    if-nez p1, :cond_1

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_1
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v0, p1, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :goto_1
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    iget-object v0, p0, Lyads/rn;->b:Lyads/o92;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lyads/o92;->b:Lyads/l42;

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    if-nez v0, :cond_4

    return-void

    :cond_4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v1, p0, Lyads/rn;->b:Lyads/o92;

    iget-object v1, v1, Lyads/o92;->b:Lyads/l42;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lyads/rn;->e:Lyads/fs2;

    iget-object v4, p0, Lyads/rn;->a:Landroid/util/DisplayMetrics;

    invoke-static {v1, v3, v4}, Lyads/n51;->a(Lyads/l42;Lyads/fs2;Landroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr p2, v1

    const/4 v3, 0x0

    invoke-static {v3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    add-float/2addr p3, v1

    invoke-static {v3, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    sub-float/2addr p4, v1

    invoke-static {v3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    sub-float/2addr p5, v1

    invoke-static {v3, p5}, Ljava/lang/Math;->max(FF)F

    move-result p5

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, [F

    :cond_5
    if-eqz v2, :cond_6

    array-length p2, v2

    const/4 p3, 0x0

    :goto_3
    if-ge p3, p2, :cond_6

    aget p4, p1, p3

    sub-float/2addr p4, v1

    invoke-static {v3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    aput p4, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lyads/rn;->d:Landroid/graphics/Canvas;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    if-nez v2, :cond_7

    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_4

    :cond_7
    sget-object p3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p2, v0, v2, p3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    :goto_4
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    iget-object p0, p0, Lyads/rn;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
