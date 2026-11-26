.class public final Lo62;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "SourceFile"


# instance fields
.field public final b:Landroidx/compose/ui/graphics/painter/Painter;

.field public final c:Landroidx/compose/ui/layout/ContentScale;

.field public final d:J

.field public final e:Lqv8;

.field public final f:Z

.field public final g:Landroidx/compose/runtime/MutableIntState;

.field public h:Lkp1;

.field public i:Z

.field public j:F

.field public k:Landroidx/compose/ui/graphics/ColorFilter;

.field public l:Landroidx/compose/ui/graphics/painter/Painter;

.field public final m:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/layout/ContentScale;JZZ)V
    .locals 3

    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    iput-object p2, p0, Lo62;->b:Landroidx/compose/ui/graphics/painter/Painter;

    iput-object p3, p0, Lo62;->c:Landroidx/compose/ui/layout/ContentScale;

    iput-wide p4, p0, Lo62;->d:J

    sget-object p3, Lqv8$a;->a:Lqv8$a;

    iput-object p3, p0, Lo62;->e:Lqv8;

    iput-boolean p6, p0, Lo62;->f:Z

    const/4 p3, 0x0

    invoke-static {p3}, Landroidx/compose/runtime/SnapshotIntStateKt;->mutableIntStateOf(I)Landroidx/compose/runtime/MutableIntState;

    move-result-object p4

    iput-object p4, p0, Lo62;->g:Landroidx/compose/runtime/MutableIntState;

    const/high16 p4, 0x3f800000    # 1.0f

    iput p4, p0, Lo62;->j:F

    iput-object p1, p0, Lo62;->l:Landroidx/compose/ui/graphics/painter/Painter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide p4

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide p4

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide p1

    goto :goto_1

    :cond_1
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide p1

    :goto_1
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long p6, p4, v0

    const/4 v2, 0x1

    if-eqz p6, :cond_2

    move p6, v2

    goto :goto_2

    :cond_2
    move p6, p3

    :goto_2
    cmp-long v0, p1, v0

    if-eqz v0, :cond_3

    move p3, v2

    :cond_3
    if-eqz p7, :cond_5

    if-eqz p3, :cond_4

    move-wide p4, p1

    goto :goto_3

    :cond_4
    if-eqz p6, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p6, :cond_6

    if-eqz p3, :cond_6

    const/16 p3, 0x20

    shr-long p6, p4, p3

    long-to-int p6, p6

    invoke-static {p6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p6

    shr-long v0, p1, p3

    long-to-int p7, v0

    invoke-static {p7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p7

    invoke-static {p6, p7}, Ljava/lang/Math;->max(FF)F

    move-result p6

    const-wide v0, 0xffffffffL

    and-long/2addr p4, v0

    long-to-int p4, p4

    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    and-long/2addr p1, v0

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {p4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long p4, p2

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    shl-long p3, p4, p3

    and-long/2addr p1, v0

    or-long/2addr p1, p3

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide p4

    goto :goto_3

    :cond_6
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide p4

    :goto_3
    iput-wide p4, p0, Lo62;->m:J

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/painter/Painter;F)V
    .locals 12

    if-eqz p2, :cond_7

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/painter/Painter;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v2

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    :goto_0
    move-wide v8, v0

    goto :goto_2

    :cond_1
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v6, v0, v4

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_1
    goto :goto_0

    :cond_4
    iget-object v6, p0, Lo62;->c:Landroidx/compose/ui/layout/ContentScale;

    invoke-interface {v6, v2, v3, v0, v1}, Landroidx/compose/ui/layout/ContentScale;->computeScaleFactor-H7hwNQA(JJ)J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Landroidx/compose/ui/layout/ScaleFactorKt;->times-UQTWf7w(JJ)J

    move-result-wide v2

    move-wide v8, v2

    :goto_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->isEmpty-impl(J)Z

    move-result v2

    if-eqz v2, :cond_6

    :goto_3
    iget-object v11, p0, Lo62;->k:Landroidx/compose/ui/graphics/ColorFilter;

    move-object v7, p1

    move-object v6, p2

    move v10, p3

    invoke-virtual/range {v6 .. v11}, Landroidx/compose/ui/graphics/painter/Painter;->draw-x_KDEd0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V

    return-void

    :cond_6
    move-object v7, p1

    move-object v6, p2

    move v10, p3

    const/16 p1, 0x20

    shr-long p2, v0, p1

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    shr-long v2, v8, p1

    long-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    sub-float/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p2, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p3, v0

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    and-long v0, v8, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sub-float/2addr p3, v0

    div-float/2addr p3, p1

    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p1

    invoke-interface {p1, p2, p3, p2, p3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->inset(FFFF)V

    :try_start_0
    iget-object v11, p0, Lo62;->k:Landroidx/compose/ui/graphics/ColorFilter;

    invoke-virtual/range {v6 .. v11}, Landroidx/compose/ui/graphics/painter/Painter;->draw-x_KDEd0(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFLandroidx/compose/ui/graphics/ColorFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p0

    neg-float p1, p2

    neg-float p2, p3

    invoke-interface {p0, p1, p2, p1, p2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->inset(FFFF)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-interface {v7}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p1

    neg-float p2, p2

    neg-float p3, p3

    invoke-interface {p1, p2, p3, p2, p3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->inset(FFFF)V

    throw p0

    :cond_7
    :goto_4
    return-void
.end method

.method public final applyAlpha(F)Z
    .locals 0

    iput p1, p0, Lo62;->j:F

    const/4 p0, 0x1

    return p0
.end method

.method public final applyColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 0

    iput-object p1, p0, Lo62;->k:Landroidx/compose/ui/graphics/ColorFilter;

    const/4 p0, 0x1

    return p0
.end method

.method public final getIntrinsicSize-NH-jbRc()J
    .locals 2

    iget-wide v0, p0, Lo62;->m:J

    return-wide v0
.end method

.method public final onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 6

    iget-boolean v0, p0, Lo62;->i:Z

    iget-object v1, p0, Lo62;->b:Landroidx/compose/ui/graphics/painter/Painter;

    if-eqz v0, :cond_0

    iget v0, p0, Lo62;->j:F

    invoke-virtual {p0, p1, v1, v0}, Lo62;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/painter/Painter;F)V

    return-void

    :cond_0
    iget-object v0, p0, Lo62;->h:Lkp1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lo62;->e:Lqv8;

    invoke-interface {v0}, Lqv8;->a()Lqv8$a$a;

    move-result-object v0

    iput-object v0, p0, Lo62;->h:Lkp1;

    :cond_1
    invoke-interface {v0}, Lkp1;->m()J

    move-result-wide v2

    invoke-static {v2, v3}, Lwt2;->e(J)J

    move-result-wide v2

    long-to-float v0, v2

    iget-wide v2, p0, Lo62;->d:J

    invoke-static {v2, v3}, Lwt2;->e(J)J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v0, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Lkx6;->d(FFF)F

    move-result v2

    iget v4, p0, Lo62;->j:F

    mul-float/2addr v2, v4

    iget-boolean v5, p0, Lo62;->f:Z

    if-eqz v5, :cond_2

    sub-float/2addr v4, v2

    :cond_2
    cmpl-float v0, v0, v3

    const/4 v3, 0x1

    if-ltz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo62;->i:Z

    iget-object v0, p0, Lo62;->l:Landroidx/compose/ui/graphics/painter/Painter;

    invoke-virtual {p0, p1, v0, v4}, Lo62;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/painter/Painter;F)V

    invoke-virtual {p0, p1, v1, v2}, Lo62;->a(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/painter/Painter;F)V

    iget-boolean p1, p0, Lo62;->i:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Lo62;->l:Landroidx/compose/ui/graphics/painter/Painter;

    return-void

    :cond_4
    iget-object p0, p0, Lo62;->g:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p0}, Landroidx/compose/runtime/IntState;->getIntValue()I

    move-result p1

    add-int/2addr p1, v3

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableIntState;->setIntValue(I)V

    return-void
.end method
