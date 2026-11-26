.class public abstract Lka1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lpq7;

.field public c:Lid2$b;

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:Landroid/graphics/RectF;

.field public i:Landroid/graphics/RectF;

.field public j:I

.field public k:I

.field public final l:Landroid/graphics/Paint;

.field public m:Z

.field public n:Lzb9;

.field public o:Lsn1;


# direct methods
.method public constructor <init>(Lpq7;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lka1;->a:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lka1;->g:F

    const/16 v1, 0xb4

    iput v1, p0, Lka1;->j:I

    const/16 v1, 0x168

    iput v1, p0, Lka1;->k:I

    iput-object p1, p0, Lka1;->b:Lpq7;

    iget-boolean v1, p1, Lpq7;->f:Z

    iput-boolean v1, p0, Lka1;->m:Z

    invoke-virtual {p0, p2, p3}, Lka1;->e(II)V

    sget-object p2, Lid2$b;->EVENT_MOVE:Lid2$b;

    iput-object p2, p0, Lka1;->c:Lid2$b;

    iput-boolean v1, p0, Lka1;->m:Z

    invoke-virtual {p0}, Lka1;->b()V

    const/4 p2, 0x0

    iput p2, p0, Lka1;->d:F

    iget p2, p1, Lpq7;->e:F

    iput p2, p0, Lka1;->e:F

    iput p2, p0, Lka1;->f:F

    iput v0, p0, Lka1;->g:F

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lka1;->l:Landroid/graphics/Paint;

    iget p3, p1, Lpq7;->a:I

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lka1;->l:Landroid/graphics/Paint;

    iget-object p3, p1, Lpq7;->h:Lpq7$b;

    sget-object v0, Lpq7$b;->STYLE_DONUT:Lpq7$b;

    if-ne p3, v0, :cond_0

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    goto :goto_0

    :cond_0
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    :goto_0
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lka1;->l:Landroid/graphics/Paint;

    iget p3, p1, Lpq7;->c:F

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p2, p0, Lka1;->l:Landroid/graphics/Paint;

    iget-boolean p3, p1, Lpq7;->g:Z

    if-eqz p3, :cond_1

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_1

    :cond_1
    sget-object p3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    :goto_1
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object p2, p0, Lka1;->l:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p2, 0x0

    iput-object p2, p0, Lka1;->h:Landroid/graphics/RectF;

    iget-object p0, p1, Lpq7;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lpq7$c;

    invoke-interface {p1}, Lpq7$c;->a()V

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lka1;->n:Lzb9;

    if-eqz v0, :cond_2

    iget v1, v0, Lzb9;->i:I

    if-nez v1, :cond_0

    sget-object v1, Lzb9;->t:Lzb9$b;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lzb9;->u:Lzb9$c;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, v0, Lzb9;->j:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Ltm;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltm$a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lzb9;->i()V

    :cond_2
    iget-object v0, p0, Lka1;->o:Lsn1;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lka1;->b:Lpq7;

    iget v0, v0, Lpq7;->a:I

    iget-object v1, p0, Lka1;->l:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lka1;->o:Lsn1;

    :cond_3
    return-void
.end method

.method public c(Landroid/graphics/Canvas;Landroid/graphics/RectF;)Z
    .locals 8

    iget-boolean p1, p0, Lka1;->m:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lka1;->h:Landroid/graphics/RectF;

    iget-object v2, p0, Lka1;->b:Lpq7;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lka1;->h:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lka1;->i:Landroid/graphics/RectF;

    invoke-virtual {v2}, Lpq7;->a()Landroid/graphics/PointF;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lka1;->i:Landroid/graphics/RectF;

    invoke-virtual {v2}, Lpq7;->a()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Lpq7;->a()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    :cond_2
    invoke-virtual {p0}, Lka1;->a()V

    :cond_3
    iget-object p2, p0, Lka1;->c:Lid2$b;

    sget-object v1, Lid2$b;->EVENT_EFFECT:Lid2$b;

    if-ne p2, v1, :cond_4

    return v0

    :cond_4
    sget-object v1, Lid2$b;->EVENT_HIDE:Lid2$b;

    iget-object v3, p0, Lka1;->l:Landroid/graphics/Paint;

    if-eq p2, v1, :cond_5

    sget-object v1, Lid2$b;->EVENT_SHOW:Lid2$b;

    if-eq p2, v1, :cond_5

    iget p2, v2, Lpq7;->c:F

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_7

    iget p2, v2, Lpq7;->c:F

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_1

    :cond_5
    iget p2, v2, Lpq7;->c:F

    iget v1, p0, Lka1;->g:F

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    iget v5, v2, Lpq7;->a:I

    if-lez v4, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v1

    mul-float/2addr p2, v1

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v5, p0, Lka1;->g:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    float-to-int v1, v4

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    :cond_6
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_0
    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_7
    :goto_1
    iget-object p2, p0, Lka1;->o:Lsn1;

    if-eqz p2, :cond_8

    iget p0, p0, Lka1;->g:F

    iget v1, p2, Lsn1;->a:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    iget v4, p2, Lsn1;->b:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    invoke-virtual {p2, v0, v2, v5, p0}, Lsn1;->a(IIIF)I

    move-result v0

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {p2, v6, v2, v5, p0}, Lsn1;->a(IIIF)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {p2, v7, v5, v6, p0}, Lsn1;->a(IIIF)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v6, 0x8

    invoke-virtual {p2, v6, v1, v4, p0}, Lsn1;->a(IIIF)I

    move-result p0

    invoke-static {v0, v2, v5, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    iget p2, v2, Lpq7;->a:I

    if-eq p0, p2, :cond_9

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_9
    :goto_2
    return p1

    :cond_a
    const-string p0, "Drawing bounds can not be null or empty"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return p1
.end method

.method public final d()F
    .locals 2

    iget v0, p0, Lka1;->f:F

    iget-object p0, p0, Lka1;->b:Lpq7;

    iget p0, p0, Lpq7;->d:F

    const/4 v1, 0x0

    sub-float/2addr p0, v1

    div-float/2addr v0, p0

    return v0
.end method

.method public final e(II)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x168

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    iput p2, p0, Lka1;->j:I

    iput p1, p0, Lka1;->k:I

    const/4 p1, 0x0

    iput-object p1, p0, Lka1;->h:Landroid/graphics/RectF;

    return-void

    :cond_0
    const-string p0, "Rotate angle of view must be in the range 0..360"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Total angle of view must be in the range 0..360"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final f(Lid2;Z)V
    .locals 3

    invoke-virtual {p0}, Lka1;->b()V

    iget-object v0, p1, Lid2;->a:Lid2$b;

    iput-object v0, p0, Lka1;->c:Lid2$b;

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lka1;->g:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lka1;->m:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lzb9;->l([F)Lzb9;

    move-result-object v0

    iput-object v0, p0, Lka1;->n:Lzb9;

    iget-wide v1, p1, Lid2;->b:J

    invoke-virtual {v0, v1, v2}, Lzb9;->p(J)V

    iget-object p1, p0, Lka1;->n:Lzb9;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p1, Lzb9;->n:Landroid/view/animation/Interpolator;

    iget-object p1, p0, Lka1;->n:Lzb9;

    new-instance v0, Lka1$a;

    invoke-direct {v0, p0, p2}, Lka1$a;-><init>(Lka1;Z)V

    iget-object p2, p1, Lzb9;->o:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lzb9;->o:Ljava/util/ArrayList;

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lka1;->n:Lzb9;

    new-instance p2, Lka1$b;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ltm;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Ltm;->b:Ljava/util/ArrayList;

    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lka1;->n:Lzb9;

    invoke-virtual {p0}, Lzb9;->q()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
