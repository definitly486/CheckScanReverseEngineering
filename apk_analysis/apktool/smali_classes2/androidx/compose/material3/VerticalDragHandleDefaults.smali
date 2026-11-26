.class public final Landroidx/compose/material3/VerticalDragHandleDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material3/VerticalDragHandleDefaults;

.field private static final sizes:Landroidx/compose/material3/DragHandleSizes;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/compose/material3/VerticalDragHandleDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/VerticalDragHandleDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/VerticalDragHandleDefaults;->INSTANCE:Landroidx/compose/material3/VerticalDragHandleDefaults;

    new-instance v1, Landroidx/compose/material3/DragHandleSizes;

    sget-object v0, Landroidx/compose/material3/tokens/DragHandleTokens;->INSTANCE:Landroidx/compose/material3/tokens/DragHandleTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/DragHandleTokens;->getWidth-D9Ej5fM()F

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/DragHandleTokens;->getHeight-D9Ej5fM()F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide v2

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/DragHandleTokens;->getPressedWidth-D9Ej5fM()F

    move-result v4

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/DragHandleTokens;->getPressedHeight-D9Ej5fM()F

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide v4

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/DragHandleTokens;->getDraggedWidth-D9Ej5fM()F

    move-result v6

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/DragHandleTokens;->getDraggedHeight-D9Ej5fM()F

    move-result v0

    invoke-static {v6, v0}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroidx/compose/material3/DragHandleSizes;-><init>(JJJLjh2;)V

    sput-object v1, Landroidx/compose/material3/VerticalDragHandleDefaults;->sizes:Landroidx/compose/material3/DragHandleSizes;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getColors(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/DragHandleColors;
    .locals 8

    invoke-virtual {p1}, Landroidx/compose/material3/ColorScheme;->getDefaultVerticalDragHandleColorsCached$material3()Landroidx/compose/material3/DragHandleColors;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance v0, Landroidx/compose/material3/DragHandleColors;

    sget-object p0, Landroidx/compose/material3/tokens/DragHandleTokens;->INSTANCE:Landroidx/compose/material3/tokens/DragHandleTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/DragHandleTokens;->getColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v1

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/DragHandleTokens;->getPressedColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v3

    invoke-static {p1, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/DragHandleTokens;->getDraggedColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/DragHandleColors;-><init>(JJJLjh2;)V

    invoke-virtual {p1, v0}, Landroidx/compose/material3/ColorScheme;->setDefaultVerticalDragHandleColorsCached$material3(Landroidx/compose/material3/DragHandleColors;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private final getShapes(Landroidx/compose/material3/Shapes;)Landroidx/compose/material3/DragHandleShapes;
    .locals 3

    invoke-virtual {p1}, Landroidx/compose/material3/Shapes;->getDefaultVerticalDragHandleShapesCached$material3()Landroidx/compose/material3/DragHandleShapes;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroidx/compose/material3/DragHandleShapes;

    sget-object v0, Landroidx/compose/material3/tokens/DragHandleTokens;->INSTANCE:Landroidx/compose/material3/tokens/DragHandleTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/DragHandleTokens;->getShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/compose/material3/ShapesKt;->fromToken(Landroidx/compose/material3/Shapes;Landroidx/compose/material3/tokens/ShapeKeyTokens;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/DragHandleTokens;->getPressedShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v2

    invoke-static {p1, v2}, Landroidx/compose/material3/ShapesKt;->fromToken(Landroidx/compose/material3/Shapes;Landroidx/compose/material3/tokens/ShapeKeyTokens;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/DragHandleTokens;->getDraggedShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/compose/material3/ShapesKt;->fromToken(Landroidx/compose/material3/Shapes;Landroidx/compose/material3/tokens/ShapeKeyTokens;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Landroidx/compose/material3/DragHandleShapes;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)V

    invoke-virtual {p1, p0}, Landroidx/compose/material3/Shapes;->setDefaultVerticalDragHandleShapesCached$material3(Landroidx/compose/material3/DragHandleShapes;)V

    :cond_0
    return-object p0
.end method

.method public static synthetic sizes-L9TjZb0$default(Landroidx/compose/material3/VerticalDragHandleDefaults;JJJILjava/lang/Object;)Landroidx/compose/material3/DragHandleSizes;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    sget-object p1, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/DpSize$Companion;->getUnspecified-MYxV2XQ()J

    move-result-wide p1

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/DpSize$Companion;->getUnspecified-MYxV2XQ()J

    move-result-wide p3

    :cond_1
    move-wide v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    sget-object p1, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/DpSize$Companion;->getUnspecified-MYxV2XQ()J

    move-result-wide p5

    :cond_2
    move-object v0, p0

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/material3/VerticalDragHandleDefaults;->sizes-L9TjZb0(JJJ)Landroidx/compose/material3/DragHandleSizes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/DragHandleColors;
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.VerticalDragHandleDefaults.colors (DragHandle.kt:215)"

    const v2, -0x57532ba5

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/material3/VerticalDragHandleDefaults;->getColors(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/DragHandleColors;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final colors-RGew2ao(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DragHandleColors;
    .locals 10

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    move-wide v2, p3

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v4

    goto :goto_2

    :cond_2
    move-wide v4, p5

    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    const-string v7, "androidx.compose.material3.VerticalDragHandleDefaults.colors (DragHandle.kt:234)"

    const v8, -0x7aef4708

    move/from16 v9, p8

    invoke-static {v8, v9, v6, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    sget-object v6, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v7, 0x6

    move-object/from16 v8, p7

    invoke-virtual {v6, v8, v7}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v6

    invoke-direct {p0, v6}, Landroidx/compose/material3/VerticalDragHandleDefaults;->getColors(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/DragHandleColors;

    move-result-object v6

    const-wide/16 v7, 0x10

    cmp-long v9, v0, v7

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Landroidx/compose/material3/DragHandleColors;->getColor-0d7_KjU()J

    move-result-wide v0

    :goto_3
    cmp-long v9, v2, v7

    if-eqz v9, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v6}, Landroidx/compose/material3/DragHandleColors;->getPressedColor-0d7_KjU()J

    move-result-wide v2

    :goto_4
    cmp-long v7, v4, v7

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v6}, Landroidx/compose/material3/DragHandleColors;->getDraggedColor-0d7_KjU()J

    move-result-wide v4

    :goto_5
    new-instance v6, Landroidx/compose/material3/DragHandleColors;

    const/4 v7, 0x0

    move-wide p1, v0

    move-wide p3, v2

    move-wide p5, v4

    move-object p0, v6

    move-object/from16 p7, v7

    invoke-direct/range {p0 .. p7}, Landroidx/compose/material3/DragHandleColors;-><init>(JJJLjh2;)V

    move-object v0, p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    return-object v0
.end method

.method public final shapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/DragHandleShapes;
    .locals 3

    .line 75
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.VerticalDragHandleDefaults.shapes (DragHandle.kt:246)"

    const v2, 0x52928b57

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material3/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Shapes;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/material3/VerticalDragHandleDefaults;->getShapes(Landroidx/compose/material3/Shapes;)Landroidx/compose/material3/DragHandleShapes;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final shapes(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/DragHandleShapes;
    .locals 2

    and-int/lit8 v0, p6, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_2

    move-object p3, v1

    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p6

    if-eqz p6, :cond_3

    const/4 p6, -0x1

    const-string v0, "androidx.compose.material3.VerticalDragHandleDefaults.shapes (DragHandle.kt:265)"

    const v1, 0x26cb2872

    invoke-static {v1, p5, p6, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_3
    sget-object p5, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 p6, 0x6

    invoke-virtual {p5, p4, p6}, Landroidx/compose/material3/MaterialTheme;->getShapes(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/Shapes;

    move-result-object p4

    invoke-direct {p0, p4}, Landroidx/compose/material3/VerticalDragHandleDefaults;->getShapes(Landroidx/compose/material3/Shapes;)Landroidx/compose/material3/DragHandleShapes;

    move-result-object p0

    new-instance p4, Landroidx/compose/material3/DragHandleShapes;

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/compose/material3/DragHandleShapes;->getShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object p1

    :cond_4
    if-nez p2, :cond_5

    invoke-virtual {p0}, Landroidx/compose/material3/DragHandleShapes;->getPressedShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object p2

    :cond_5
    if-nez p3, :cond_6

    invoke-virtual {p0}, Landroidx/compose/material3/DragHandleShapes;->getDraggedShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object p3

    :cond_6
    invoke-direct {p4, p1, p2, p3}, Landroidx/compose/material3/DragHandleShapes;-><init>(Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/ui/graphics/Shape;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    return-object p4
.end method

.method public final sizes()Landroidx/compose/material3/DragHandleSizes;
    .locals 0

    sget-object p0, Landroidx/compose/material3/VerticalDragHandleDefaults;->sizes:Landroidx/compose/material3/DragHandleSizes;

    return-object p0
.end method

.method public final sizes-L9TjZb0(JJJ)Landroidx/compose/material3/DragHandleSizes;
    .locals 8

    sget-object p0, Landroidx/compose/material3/VerticalDragHandleDefaults;->sizes:Landroidx/compose/material3/DragHandleSizes;

    new-instance v0, Landroidx/compose/material3/DragHandleSizes;

    const-wide v1, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/DragHandleSizes;->getSize-MYxV2XQ()J

    move-result-wide p1

    :goto_0
    cmp-long v3, p3, v1

    if-eqz v3, :cond_1

    :goto_1
    move-wide v3, p3

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/material3/DragHandleSizes;->getPressedSize-MYxV2XQ()J

    move-result-wide p3

    goto :goto_1

    :goto_2
    cmp-long p3, p5, v1

    if-eqz p3, :cond_2

    :goto_3
    move-wide v5, p5

    goto :goto_4

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/material3/DragHandleSizes;->getDraggedSize-MYxV2XQ()J

    move-result-wide p5

    goto :goto_3

    :goto_4
    const/4 v7, 0x0

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/compose/material3/DragHandleSizes;-><init>(JJJLjh2;)V

    return-object v0
.end method
