.class public final Landroidx/compose/foundation/border/BorderLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private borderPath:Landroidx/compose/ui/graphics/Path;

.field private borderWidth:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private drawBorder:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private lastBrush:Landroidx/compose/ui/graphics/Brush;

.field private lastOutline:Landroidx/compose/ui/graphics/Outline;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/geometry/RoundRect;Lo07;Lr07;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p6}, Landroidx/compose/foundation/border/BorderLogic;->createDrawRoundRectBorder$lambda$1(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/geometry/RoundRect;Lo07;Lr07;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/border/BorderLogic;->createDrawRectBorder$lambda$0(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/border/BorderLogic;->createDrawGenericBorder$lambda$1$0$0(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final createDrawGenericBorder(Landroidx/compose/ui/graphics/Brush;Lll3;Landroidx/compose/ui/graphics/Outline$Generic;)Lnl3;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Brush;",
            "Lll3<",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            ">;",
            "Landroidx/compose/ui/graphics/Outline$Generic;",
            ")",
            "Lnl3<",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Path;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->getMinDimension()F

    move-result v3

    invoke-direct {p0}, Landroidx/compose/foundation/border/BorderLogic;->obtainPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v10

    invoke-interface {v10}, Landroidx/compose/ui/graphics/Path;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v10, v7, v0, v1, v0}, Landroidx/compose/ui/graphics/Path;->addRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/graphics/PathOperation;->Companion:Landroidx/compose/ui/graphics/PathOperation$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/PathOperation$Companion;->getDifference-b3I0S0c()I

    move-result v1

    invoke-interface {v10, v10, v0, v1}, Landroidx/compose/ui/graphics/Path;->op-N5in7k0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v0

    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v1

    invoke-virtual {v7}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-int v1, v1

    int-to-long v4, v0

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    int-to-long v0, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v0, v8

    or-long/2addr v0, v4

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v8

    new-instance v1, Lns0;

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Lns0;-><init>(Landroidx/compose/foundation/border/BorderLogic;FLandroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;Lll3;Landroidx/compose/ui/geometry/Rect;JLandroidx/compose/ui/graphics/Path;)V

    return-object v1
.end method

.method private static final createDrawGenericBorder$lambda$1(Landroidx/compose/foundation/border/BorderLogic;FLandroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;Lll3;Landroidx/compose/ui/geometry/Rect;JLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 10

    iget-object p0, p0, Landroidx/compose/foundation/border/BorderLogic;->borderWidth:Lll3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, p0

    :goto_0
    const/high16 p0, 0x40000000    # 2.0f

    mul-float/2addr p0, v6

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v2

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p3

    move-object/from16 v1, p9

    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object/from16 v1, p9

    invoke-interface {p4}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    sget-object p1, Landroidx/compose/ui/graphics/layer/CompositingStrategy;->Companion:Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/layer/CompositingStrategy$Companion;->getOffscreen-ke2Ky5w()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setCompositingStrategy-Wpw9cng(I)V

    invoke-virtual {p5}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result p1

    invoke-virtual {p5}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result p4

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v0

    invoke-interface {v0, p1, p4}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    :try_start_0
    new-instance v2, Ljs0;

    move-object v4, p2

    move-object v5, p3

    move-object v3, p5

    move-object/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Ljs0;-><init>(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Path;)V

    move-wide/from16 p2, p6

    invoke-interface {v1, p0, p2, p3, v2}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->record-JVtK1S4(Landroidx/compose/ui/graphics/layer/GraphicsLayer;JLnl3;)V

    invoke-static {v1, p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->drawLayer(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p0

    neg-float p1, p1

    neg-float p2, p4

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p2

    invoke-interface {p2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p2

    neg-float p1, p1

    neg-float p3, p4

    invoke-interface {p2, p1, p3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    throw p0
.end method

.method private static final createDrawGenericBorder$lambda$1$0$0(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 21

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v0

    neg-float v1, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v0

    neg-float v2, v0

    invoke-interface/range {p5 .. p5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/graphics/Outline$Generic;->getPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v4

    new-instance v5, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v6, p3, v0

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILjh2;)V

    const/16 v10, 0x34

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p5

    move-object v7, v5

    move-object/from16 v5, p2

    invoke-static/range {v3 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    invoke-interface/range {p5 .. p5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v3

    const/16 v0, 0x20

    shr-long/2addr v3, v0

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    invoke-interface/range {p5 .. p5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    shr-long/2addr v5, v0

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    div-float/2addr v3, v0

    invoke-interface/range {p5 .. p5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    add-float/2addr v0, v4

    invoke-interface/range {p5 .. p5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    div-float/2addr v0, v4

    invoke-interface/range {p5 .. p5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v4

    invoke-interface/range {p5 .. p5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v7

    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/ui/graphics/Canvas;->save()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v9

    invoke-interface {v9, v3, v0, v4, v5}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->scale-0AR0LA0(FFJ)V

    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getClear-0nO6VwU()I

    move-result v18

    const/16 v19, 0x1c

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v14, p2

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    invoke-static/range {v12 .. v20}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-interface {v6, v7, v8}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface/range {p5 .. p5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v0

    neg-float v1, v1

    neg-float v2, v2

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    invoke-interface {v6, v7, v8}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-interface/range {p5 .. p5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v3

    neg-float v1, v1

    neg-float v2, v2

    invoke-interface {v3, v1, v2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    throw v0
.end method

.method private final createDrawRectBorder(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rectangle;)Lnl3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Brush;",
            "Landroidx/compose/ui/graphics/Outline$Rectangle;",
            ")",
            "Lnl3<",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/Outline$Rectangle;->getRect()Landroidx/compose/ui/geometry/Rect;

    move-result-object p2

    new-instance v0, Lms0;

    invoke-direct {v0, p0, p2, p1}, Lms0;-><init>(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Brush;)V

    return-object v0
.end method

.method private static final createDrawRectBorder$lambda$0(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/compose/foundation/border/BorderLogic;->borderWidth:Lll3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    mul-float v1, v4, v0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getMinDimension()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-wide v2, 0xffffffffL

    const/16 v5, 0x20

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    move-result-wide v6

    :goto_2
    move-wide v11, v6

    goto :goto_3

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v6

    div-float v0, v4, v0

    add-float/2addr v6, v0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v7

    add-float/2addr v7, v0

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v8, v0

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v6, v0

    shl-long/2addr v8, v5

    and-long/2addr v6, v2

    or-long/2addr v6, v8

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v6

    goto :goto_2

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getSize-NH-jbRc()J

    move-result-wide v2

    :goto_4
    move-wide v13, v2

    goto :goto_5

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v6

    sub-float/2addr v0, v6

    sub-float/2addr v0, v4

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v7

    sub-float/2addr v6, v7

    sub-float/2addr v6, v4

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v7, v0

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v9, v0

    shl-long v5, v7, v5

    and-long/2addr v2, v9

    or-long/2addr v2, v5

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v2

    goto :goto_4

    :goto_5
    if-eqz v1, :cond_4

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Fill;->INSTANCE:Landroidx/compose/ui/graphics/drawscope/Fill;

    move-object v15, v0

    goto :goto_6

    :cond_4
    new-instance v3, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILjh2;)V

    move-object v15, v3

    :goto_6
    const/16 v18, 0x68

    const/16 v19, 0x0

    move-wide v10, v11

    move-wide v12, v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v9, p2

    move-object/from16 v8, p3

    invoke-static/range {v8 .. v19}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-AsUm42w$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private final createDrawRoundRectBorder(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;)Lnl3;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/Brush;",
            "Landroidx/compose/ui/graphics/Outline$Rounded;",
            ")",
            "Lnl3<",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lj59;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/Outline$Rounded;->getRoundRect()Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/ui/geometry/RoundRectKt;->isSimple(Landroidx/compose/ui/geometry/RoundRect;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lks0;

    invoke-direct {p2, p0, v2, p1}, Lks0;-><init>(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Brush;)V

    return-object p2

    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/border/BorderLogic;->obtainPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v5

    new-instance v3, Lo07;

    invoke-direct {v3}, Lo07;-><init>()V

    const/high16 p2, 0x7fc00000    # Float.NaN

    iput p2, v3, Lo07;->b:F

    new-instance v4, Lr07;

    invoke-direct {v4}, Lr07;-><init>()V

    new-instance v0, Lls0;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lls0;-><init>(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/geometry/RoundRect;Lo07;Lr07;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;)V

    return-object v0
.end method

.method private static final createDrawRoundRectBorder$lambda$0(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/compose/foundation/border/BorderLogic;->borderWidth:Lll3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, v4, v0

    mul-float/2addr v0, v4

    invoke-static/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRectKt;->getMinDimension(Landroidx/compose/ui/geometry/RoundRect;)F

    move-result v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getTopLeftCornerRadius-kKHJgLs()J

    move-result-wide v11

    new-instance v3, Landroidx/compose/ui/graphics/drawscope/Stroke;

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILjh2;)V

    const-wide v5, 0xffffffffL

    const/16 v2, 0x20

    if-eqz v0, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getLeft()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getTop()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v3, v2

    and-long/2addr v0, v5

    or-long/2addr v0, v3

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long v2, v3, v2

    and-long/2addr v0, v5

    or-long/2addr v0, v2

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v9

    const/16 v17, 0xf0

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    invoke-static/range {v5 .. v18}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    shr-long v7, v11, v2

    long-to-int v0, v7

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getLeft()F

    move-result v0

    add-float v14, v0, v4

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getTop()F

    move-result v0

    add-float v15, v0, v4

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getRight()F

    move-result v0

    sub-float v16, v0, v4

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getBottom()F

    move-result v0

    sub-float v17, v0, v4

    sget-object v0, Landroidx/compose/ui/graphics/ClipOp;->Companion:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ClipOp$Companion;->getDifference-rtfAjoo()I

    move-result v18

    invoke-interface/range {p3 .. p3}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    move-result-wide v3

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/graphics/Canvas;->save()V

    :try_start_0
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object v13

    invoke-interface/range {v13 .. v18}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->clipRect-N_I0leg(FFFFI)V

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getLeft()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getTop()F

    move-result v7

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v8, v0

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v13, v0

    shl-long v7, v8, v2

    and-long v9, v13, v5

    or-long/2addr v7, v9

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v9

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v13, v0

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v9, v0

    shl-long/2addr v13, v2

    and-long/2addr v5, v9

    or-long/2addr v5, v13

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v9

    const/16 v17, 0xf0

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    invoke-static/range {v5 .. v18}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v3, v4}, Ln1;->a(Landroidx/compose/ui/graphics/drawscope/DrawContext;J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v1, v3, v4}, Ln1;->a(Landroidx/compose/ui/graphics/drawscope/DrawContext;J)V

    throw v0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getLeft()F

    move-result v0

    add-float/2addr v0, v1

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getTop()F

    move-result v7

    add-float/2addr v7, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v8, v0

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v13, v0

    shl-long v7, v8, v2

    and-long v9, v13, v5

    or-long/2addr v7, v9

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v0

    sub-float/2addr v0, v4

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v7

    sub-float/2addr v7, v4

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v8, v0

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v13, v0

    shl-long v7, v8, v2

    and-long v4, v13, v5

    or-long/2addr v4, v7

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v17

    invoke-static {v11, v12, v1}, Landroidx/compose/foundation/border/BorderLogicKt;->access$shrink-Kibmq7A(JF)J

    move-result-wide v19

    const/16 v25, 0xd0

    const/16 v26, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v14, p2

    move-object/from16 v13, p3

    move-object/from16 v22, v3

    invoke-static/range {v13 .. v26}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRoundRect-ZuiqVtQ$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :goto_2
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final createDrawRoundRectBorder$lambda$1(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/geometry/RoundRect;Lo07;Lr07;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 9

    iget-object p0, p0, Landroidx/compose/foundation/border/BorderLogic;->borderWidth:Lll3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    move p0, v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p0

    invoke-static {p1}, Landroidx/compose/ui/geometry/RoundRectKt;->getMinDimension(Landroidx/compose/ui/geometry/RoundRect;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p2, Lo07;->b:F

    cmpg-float v1, v1, p0

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p4, p1, p0, v0}, Landroidx/compose/foundation/border/BorderLogicKt;->access$createRoundRectPath(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;FZ)Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    iput-object p1, p3, Lr07;->b:Ljava/lang/Object;

    iput p0, p2, Lo07;->b:F

    :goto_1
    iget-object p0, p3, Lr07;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/graphics/Path;

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p5

    move-object v0, p6

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-GBMwjPU$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/foundation/border/BorderLogic;FLandroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;Lll3;Landroidx/compose/ui/geometry/Rect;JLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p9}, Landroidx/compose/foundation/border/BorderLogic;->createDrawGenericBorder$lambda$1(Landroidx/compose/foundation/border/BorderLogic;FLandroidx/compose/ui/graphics/Outline$Generic;Landroidx/compose/ui/graphics/Brush;Lll3;Landroidx/compose/ui/geometry/Rect;JLandroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic drawBorder-2gY9BTk$foundation$default(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/graphics/drawscope/DrawScope;Lll3;Landroidx/compose/ui/graphics/Brush;Lll3;Landroidx/compose/ui/graphics/Outline;JILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    move-wide v8, v0

    :goto_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    goto :goto_1

    :cond_0
    move-wide/from16 v8, p6

    goto :goto_0

    :goto_1
    invoke-virtual/range {v2 .. v9}, Landroidx/compose/foundation/border/BorderLogic;->drawBorder-2gY9BTk$foundation(Landroidx/compose/ui/graphics/drawscope/DrawScope;Lll3;Landroidx/compose/ui/graphics/Brush;Lll3;Landroidx/compose/ui/graphics/Outline;J)V

    return-void
.end method

.method public static synthetic e(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/border/BorderLogic;->createDrawRoundRectBorder$lambda$0(Landroidx/compose/foundation/border/BorderLogic;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final obtainPath()Landroidx/compose/ui/graphics/Path;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/border/BorderLogic;->borderPath:Landroidx/compose/ui/graphics/Path;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/border/BorderLogic;->borderPath:Landroidx/compose/ui/graphics/Path;

    :cond_0
    return-object v0
.end method

.method private final strokeWidthPx()F
    .locals 2

    iget-object p0, p0, Landroidx/compose/foundation/border/BorderLogic;->borderWidth:Lll3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    return v0

    :cond_0
    return p0
.end method


# virtual methods
.method public final drawBorder-2gY9BTk$foundation(Landroidx/compose/ui/graphics/drawscope/DrawScope;Lll3;Landroidx/compose/ui/graphics/Brush;Lll3;Landroidx/compose/ui/graphics/Outline;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lll3<",
            "Ljava/lang/Float;",
            ">;",
            "Landroidx/compose/ui/graphics/Brush;",
            "Lll3<",
            "Landroidx/compose/ui/graphics/layer/GraphicsLayer;",
            ">;",
            "Landroidx/compose/ui/graphics/Outline;",
            "J)V"
        }
    .end annotation

    iput-object p2, p0, Landroidx/compose/foundation/border/BorderLogic;->borderWidth:Lll3;

    iget-object p2, p0, Landroidx/compose/foundation/border/BorderLogic;->lastBrush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {p3, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/foundation/border/BorderLogic;->lastOutline:Landroidx/compose/ui/graphics/Outline;

    invoke-static {p5, p2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/compose/foundation/border/BorderLogic;->drawBorder:Lnl3;

    if-nez p2, :cond_3

    :cond_0
    iput-object p3, p0, Landroidx/compose/foundation/border/BorderLogic;->lastBrush:Landroidx/compose/ui/graphics/Brush;

    iput-object p5, p0, Landroidx/compose/foundation/border/BorderLogic;->lastOutline:Landroidx/compose/ui/graphics/Outline;

    instance-of p2, p5, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz p2, :cond_1

    check-cast p5, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-direct {p0, p3, p4, p5}, Landroidx/compose/foundation/border/BorderLogic;->createDrawGenericBorder(Landroidx/compose/ui/graphics/Brush;Lll3;Landroidx/compose/ui/graphics/Outline$Generic;)Lnl3;

    move-result-object p2

    goto :goto_0

    :cond_1
    instance-of p2, p5, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz p2, :cond_2

    check-cast p5, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-direct {p0, p3, p5}, Landroidx/compose/foundation/border/BorderLogic;->createDrawRoundRectBorder(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rounded;)Lnl3;

    move-result-object p2

    goto :goto_0

    :cond_2
    instance-of p2, p5, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz p2, :cond_5

    check-cast p5, Landroidx/compose/ui/graphics/Outline$Rectangle;

    invoke-direct {p0, p3, p5}, Landroidx/compose/foundation/border/BorderLogic;->createDrawRectBorder(Landroidx/compose/ui/graphics/Brush;Landroidx/compose/ui/graphics/Outline$Rectangle;)Lnl3;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Landroidx/compose/foundation/border/BorderLogic;->drawBorder:Lnl3;

    :cond_3
    sget-object p2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p2

    invoke-static {p6, p7, p2, p3}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Landroidx/compose/foundation/border/BorderLogic;->drawBorder:Lnl3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    const/16 p2, 0x20

    shr-long p2, p6, p2

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    const-wide p3, 0xffffffffL

    and-long/2addr p3, p6

    long-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p4

    invoke-interface {p4}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p4

    invoke-interface {p4, p2, p3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    :try_start_0
    iget-object p0, p0, Landroidx/compose/foundation/border/BorderLogic;->drawBorder:Lnl3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p0

    neg-float p1, p2

    neg-float p2, p3

    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p1

    neg-float p2, p2

    neg-float p3, p3

    invoke-interface {p1, p2, p3}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->translate(FF)V

    throw p0

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-void
.end method
