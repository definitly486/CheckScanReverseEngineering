.class public final Lf07;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lld0$a;
.implements Lpf4;
.implements Ll46;


# instance fields
.field public final a:Landroid/graphics/Path;

.field public final b:Landroid/graphics/RectF;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Lox4;

.field public final f:Lld0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lld0<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lld0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lld0<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ltc3;

.field public final i:Lpu1;

.field public j:Lld0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lld0<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public k:Z


# direct methods
.method public constructor <init>(Lox4;Lnd0;Lg07;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lf07;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lf07;->b:Landroid/graphics/RectF;

    new-instance v0, Lpu1;

    invoke-direct {v0}, Lpu1;-><init>()V

    iput-object v0, p0, Lf07;->i:Lpu1;

    const/4 v0, 0x0

    iput-object v0, p0, Lf07;->j:Lld0;

    iget-object v0, p3, Lg07;->a:Ljava/lang/String;

    iput-object v0, p0, Lf07;->c:Ljava/lang/String;

    iget-boolean v0, p3, Lg07;->e:Z

    iput-boolean v0, p0, Lf07;->d:Z

    iput-object p1, p0, Lf07;->e:Lox4;

    iget-object p1, p3, Lg07;->b:Lsl;

    invoke-interface {p1}, Lsl;->a()Lld0;

    move-result-object p1

    iput-object p1, p0, Lf07;->f:Lld0;

    iget-object v0, p3, Lg07;->c:Lsl;

    invoke-interface {v0}, Lsl;->a()Lld0;

    move-result-object v0

    iput-object v0, p0, Lf07;->g:Lld0;

    iget-object p3, p3, Lg07;->d:Ldl;

    invoke-virtual {p3}, Ldl;->p()Ltc3;

    move-result-object p3

    iput-object p3, p0, Lf07;->h:Ltc3;

    invoke-virtual {p2, p1}, Lnd0;->c(Lld0;)V

    invoke-virtual {p2, v0}, Lnd0;->c(Lld0;)V

    invoke-virtual {p2, p3}, Lnd0;->c(Lld0;)V

    invoke-virtual {p1, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {v0, p0}, Lld0;->a(Lld0$a;)V

    invoke-virtual {p3, p0}, Lld0;->a(Lld0$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lnf4;ILjava/util/ArrayList;Lnf4;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lhb5;->g(Lnf4;ILjava/util/ArrayList;Lnf4;Lpf4;)V

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf07;->k:Z

    iget-object p0, p0, Lf07;->e:Lox4;

    invoke-virtual {p0}, Lox4;->invalidateSelf()V

    return-void
.end method

.method public final f(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsx1;",
            ">;",
            "Ljava/util/List<",
            "Lsx1;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsx1;

    instance-of v1, v0, Lj39;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lj39;

    iget-object v2, v1, Lj39;->c:Lfs7$a;

    sget-object v3, Lfs7$a;->SIMULTANEOUSLY:Lfs7$a;

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lf07;->i:Lpu1;

    iget-object v0, v0, Lpu1;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p0}, Lj39;->a(Lld0$a;)V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lg87;

    if-eqz v1, :cond_1

    check-cast v0, Lg87;

    iget-object v0, v0, Lg87;->b:Lld0;

    iput-object v0, p0, Lf07;->j:Lld0;

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf07;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lf07;->k:Z

    iget-object v2, v0, Lf07;->a:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-boolean v1, v0, Lf07;->d:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iput-boolean v3, v0, Lf07;->k:Z

    return-object v2

    :cond_1
    iget-object v1, v0, Lf07;->g:Lld0;

    invoke-virtual {v1}, Lld0;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v5

    const/4 v6, 0x0

    iget-object v7, v0, Lf07;->h:Ltc3;

    if-nez v7, :cond_2

    move v7, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Ltc3;->m()F

    move-result v7

    :goto_0
    cmpl-float v8, v7, v6

    if-nez v8, :cond_3

    iget-object v8, v0, Lf07;->j:Lld0;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lld0;->f()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    :cond_3
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v8

    cmpl-float v9, v7, v8

    if-lez v9, :cond_4

    move v7, v8

    :cond_4
    iget-object v8, v0, Lf07;->f:Lld0;

    invoke-virtual {v8}, Lld0;->f()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v4

    iget v10, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v1

    add-float/2addr v10, v7

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget v9, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v4

    iget v10, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v1

    sub-float/2addr v10, v7

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v9, v7, v6

    const/4 v10, 0x0

    const/high16 v11, 0x42b40000    # 90.0f

    iget-object v12, v0, Lf07;->b:Landroid/graphics/RectF;

    if-lez v9, :cond_5

    iget v13, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v4

    mul-float v14, v7, v5

    sub-float v15, v13, v14

    move/from16 v16, v5

    iget v5, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v1

    sub-float v14, v5, v14

    invoke-virtual {v12, v15, v14, v13, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v2, v12, v6, v11, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    goto :goto_1

    :cond_5
    move/from16 v16, v5

    :goto_1
    iget v5, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v4

    add-float/2addr v5, v7

    iget v6, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v1

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v9, :cond_6

    iget v5, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v4

    iget v6, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v1

    mul-float v13, v7, v16

    sub-float v14, v6, v13

    add-float/2addr v13, v5

    invoke-virtual {v12, v5, v14, v13, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v2, v12, v11, v11, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_6
    iget v5, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v4

    iget v6, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v1

    add-float/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v9, :cond_7

    iget v5, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v4

    iget v6, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v1

    mul-float v13, v7, v16

    add-float v14, v5, v13

    add-float/2addr v13, v6

    invoke-virtual {v12, v5, v6, v14, v13}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v2, v12, v5, v11, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_7
    iget v5, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v4

    sub-float/2addr v5, v7

    iget v6, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v1

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v9, :cond_8

    iget v5, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v4

    mul-float v7, v7, v16

    sub-float v4, v5, v7

    iget v6, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v1

    add-float/2addr v7, v6

    invoke-virtual {v12, v4, v6, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v2, v12, v1, v11, v10}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lf07;->i:Lpu1;

    invoke-virtual {v1, v2}, Lpu1;->a(Landroid/graphics/Path;)V

    iput-boolean v3, v0, Lf07;->k:Z

    return-object v2
.end method

.method public final i(Lby4;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lvx4;->g:Landroid/graphics/PointF;

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lf07;->g:Lld0;

    invoke-virtual {p0, p1}, Lld0;->k(Lby4;)V

    return-void

    :cond_0
    sget-object v0, Lvx4;->i:Landroid/graphics/PointF;

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lf07;->f:Lld0;

    invoke-virtual {p0, p1}, Lld0;->k(Lby4;)V

    return-void

    :cond_1
    sget-object v0, Lvx4;->h:Ljava/lang/Float;

    if-ne p2, v0, :cond_2

    iget-object p0, p0, Lf07;->h:Ltc3;

    invoke-virtual {p0, p1}, Lld0;->k(Lby4;)V

    :cond_2
    return-void
.end method
