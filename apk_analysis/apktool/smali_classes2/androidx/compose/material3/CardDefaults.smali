.class public final Landroidx/compose/material3/CardDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material3/CardDefaults;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/CardDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/CardDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/CardDefaults;->INSTANCE:Landroidx/compose/material3/CardDefaults;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cardColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/CardColors;
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.CardDefaults.cardColors (Card.kt:472)"

    const v2, -0x6fd202ff

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/CardDefaults;->getDefaultCardColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/CardColors;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final cardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;
    .locals 14

    move-object/from16 v0, p9

    move/from16 v1, p10

    and-int/lit8 v2, p11, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, p11, 0x2

    if-eqz v4, :cond_1

    and-int/lit8 v4, v1, 0xe

    invoke-static {v2, v3, v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, p11, 0x4

    if-eqz v6, :cond_2

    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p5

    :goto_2
    and-int/lit8 v8, p11, 0x8

    if-eqz v8, :cond_3

    const/16 v8, 0xe

    const/4 v9, 0x0

    const v10, 0x3ec28f5c    # 0.38f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide p1, v4

    move/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p3, v10

    move/from16 p4, v11

    move/from16 p5, v12

    move/from16 p6, v13

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide v8, p1

    goto :goto_3

    :cond_3
    move-wide v8, v4

    move-wide/from16 v4, p7

    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, -0x1

    const-string v11, "androidx.compose.material3.CardDefaults.cardColors (Card.kt:490)"

    const v12, -0x5ebf192b

    invoke-static {v12, v1, v10, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v10, 0x6

    invoke-virtual {v1, v0, v10}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/material3/CardDefaults;->getDefaultCardColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/CardColors;

    move-result-object p0

    move-wide p1, v2

    move-wide/from16 p7, v4

    move-wide/from16 p5, v6

    move-wide/from16 p3, v8

    invoke-virtual/range {p0 .. p8}, Landroidx/compose/material3/CardColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/CardColors;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    return-object p0
.end method

.method public final cardElevation-aqJV_2Y(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardElevation;
    .locals 0

    and-int/lit8 p0, p9, 0x1

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/compose/material3/tokens/FilledCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/FilledCardTokens;->getContainerElevation-D9Ej5fM()F

    move-result p1

    :cond_0
    and-int/lit8 p0, p9, 0x2

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/compose/material3/tokens/FilledCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/FilledCardTokens;->getPressedContainerElevation-D9Ej5fM()F

    move-result p2

    :cond_1
    and-int/lit8 p0, p9, 0x4

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/compose/material3/tokens/FilledCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/FilledCardTokens;->getFocusContainerElevation-D9Ej5fM()F

    move-result p3

    :cond_2
    and-int/lit8 p0, p9, 0x8

    if-eqz p0, :cond_3

    sget-object p0, Landroidx/compose/material3/tokens/FilledCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/FilledCardTokens;->getHoverContainerElevation-D9Ej5fM()F

    move-result p4

    :cond_3
    and-int/lit8 p0, p9, 0x10

    if-eqz p0, :cond_4

    sget-object p0, Landroidx/compose/material3/tokens/FilledCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/FilledCardTokens;->getDraggedContainerElevation-D9Ej5fM()F

    move-result p5

    :cond_4
    move p7, p5

    and-int/lit8 p0, p9, 0x20

    if-eqz p0, :cond_5

    sget-object p0, Landroidx/compose/material3/tokens/FilledCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/FilledCardTokens;->getDisabledContainerElevation-D9Ej5fM()F

    move-result p6

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, -0x1

    const-string p5, "androidx.compose.material3.CardDefaults.cardElevation (Card.kt:400)"

    const p9, -0x22444137

    invoke-static {p9, p8, p0, p5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    move p8, p6

    move p6, p4

    move p4, p2

    new-instance p2, Landroidx/compose/material3/CardElevation;

    const/4 p9, 0x0

    move p5, p3

    move p3, p1

    invoke-direct/range {p2 .. p9}, Landroidx/compose/material3/CardElevation;-><init>(FFFFFFLjh2;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    return-object p2
.end method

.method public final elevatedCardColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/CardColors;
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.CardDefaults.elevatedCardColors (Card.kt:518)"

    const v2, 0x5ff8c177

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/CardDefaults;->getDefaultElevatedCardColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/CardColors;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final elevatedCardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;
    .locals 14

    move-object/from16 v0, p9

    move/from16 v1, p10

    and-int/lit8 v2, p11, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, p11, 0x2

    if-eqz v4, :cond_1

    and-int/lit8 v4, v1, 0xe

    invoke-static {v2, v3, v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, p11, 0x4

    if-eqz v6, :cond_2

    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p5

    :goto_2
    and-int/lit8 v8, p11, 0x8

    if-eqz v8, :cond_3

    const/16 v8, 0xe

    const/4 v9, 0x0

    const v10, 0x3ec28f5c    # 0.38f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide p1, v4

    move/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p3, v10

    move/from16 p4, v11

    move/from16 p5, v12

    move/from16 p6, v13

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v4

    move-wide v8, p1

    goto :goto_3

    :cond_3
    move-wide v8, v4

    move-wide/from16 v4, p7

    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, -0x1

    const-string v11, "androidx.compose.material3.CardDefaults.elevatedCardColors (Card.kt:536)"

    const v12, 0x8517d9f

    invoke-static {v12, v1, v10, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v10, 0x6

    invoke-virtual {v1, v0, v10}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/material3/CardDefaults;->getDefaultElevatedCardColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/CardColors;

    move-result-object p0

    move-wide p1, v2

    move-wide/from16 p7, v4

    move-wide/from16 p5, v6

    move-wide/from16 p3, v8

    invoke-virtual/range {p0 .. p8}, Landroidx/compose/material3/CardColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/CardColors;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    return-object p0
.end method

.method public final elevatedCardElevation-aqJV_2Y(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardElevation;
    .locals 0

    and-int/lit8 p0, p9, 0x1

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/compose/material3/tokens/ElevatedCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevatedCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/ElevatedCardTokens;->getContainerElevation-D9Ej5fM()F

    move-result p1

    :cond_0
    and-int/lit8 p0, p9, 0x2

    if-eqz p0, :cond_1

    sget-object p0, Landroidx/compose/material3/tokens/ElevatedCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevatedCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/ElevatedCardTokens;->getPressedContainerElevation-D9Ej5fM()F

    move-result p2

    :cond_1
    and-int/lit8 p0, p9, 0x4

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/compose/material3/tokens/ElevatedCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevatedCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/ElevatedCardTokens;->getFocusContainerElevation-D9Ej5fM()F

    move-result p3

    :cond_2
    and-int/lit8 p0, p9, 0x8

    if-eqz p0, :cond_3

    sget-object p0, Landroidx/compose/material3/tokens/ElevatedCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevatedCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/ElevatedCardTokens;->getHoverContainerElevation-D9Ej5fM()F

    move-result p4

    :cond_3
    and-int/lit8 p0, p9, 0x10

    if-eqz p0, :cond_4

    sget-object p0, Landroidx/compose/material3/tokens/ElevatedCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevatedCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/ElevatedCardTokens;->getDraggedContainerElevation-D9Ej5fM()F

    move-result p5

    :cond_4
    move p7, p5

    and-int/lit8 p0, p9, 0x20

    if-eqz p0, :cond_5

    sget-object p0, Landroidx/compose/material3/tokens/ElevatedCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevatedCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/ElevatedCardTokens;->getDisabledContainerElevation-D9Ej5fM()F

    move-result p6

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, -0x1

    const-string p5, "androidx.compose.material3.CardDefaults.elevatedCardElevation (Card.kt:430)"

    const p9, 0x44cc5593

    invoke-static {p9, p8, p0, p5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    move p8, p6

    move p6, p4

    move p4, p2

    new-instance p2, Landroidx/compose/material3/CardElevation;

    const/4 p9, 0x0

    move p5, p3

    move p3, p1

    invoke-direct/range {p2 .. p9}, Landroidx/compose/material3/CardElevation;-><init>(FFFFFFLjh2;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    return-object p2
.end method

.method public final getDefaultCardColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/CardColors;
    .locals 19

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getDefaultCardColorsCached$material3()Landroidx/compose/material3/CardColors;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Landroidx/compose/material3/CardColors;

    sget-object v1, Landroidx/compose/material3/tokens/FilledCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledCardTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/FilledCardTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/FilledCardTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide v5

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/FilledCardTokens;->getDisabledContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v7

    invoke-static {v0, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/FilledCardTokens;->getDisabledContainerOpacity()F

    move-result v10

    const/16 v14, 0xe

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/FilledCardTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v9

    invoke-static {v0, v9}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v7

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/FilledCardTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v9

    invoke-static {v0, v9, v10}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide v11

    const/16 v17, 0xe

    const/16 v18, 0x0

    const v13, 0x3ec28f5c    # 0.38f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Landroidx/compose/material3/CardColors;-><init>(JJJJLjh2;)V

    invoke-virtual {v0, v2}, Landroidx/compose/material3/ColorScheme;->setDefaultCardColorsCached$material3(Landroidx/compose/material3/CardColors;)V

    return-object v2

    :cond_0
    return-object v1
.end method

.method public final getDefaultElevatedCardColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/CardColors;
    .locals 19

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getDefaultElevatedCardColorsCached$material3()Landroidx/compose/material3/CardColors;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Landroidx/compose/material3/CardColors;

    sget-object v1, Landroidx/compose/material3/tokens/ElevatedCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevatedCardTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevatedCardTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevatedCardTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide v5

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevatedCardTokens;->getDisabledContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v7

    invoke-static {v0, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v8

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevatedCardTokens;->getDisabledContainerOpacity()F

    move-result v10

    const/16 v14, 0xe

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevatedCardTokens;->getDisabledContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v9

    invoke-static {v0, v9}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v7

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/ElevatedCardTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v9

    invoke-static {v0, v9, v10}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide v11

    const/16 v17, 0xe

    const/16 v18, 0x0

    const v13, 0x3ec28f5c    # 0.38f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Landroidx/compose/material3/CardColors;-><init>(JJJJLjh2;)V

    invoke-virtual {v0, v2}, Landroidx/compose/material3/ColorScheme;->setDefaultElevatedCardColorsCached$material3(Landroidx/compose/material3/CardColors;)V

    return-object v2

    :cond_0
    return-object v1
.end method

.method public final getDefaultOutlinedCardColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/CardColors;
    .locals 19

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getDefaultOutlinedCardColorsCached$material3()Landroidx/compose/material3/CardColors;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Landroidx/compose/material3/CardColors;

    sget-object v1, Landroidx/compose/material3/tokens/OutlinedCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/OutlinedCardTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/OutlinedCardTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/OutlinedCardTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    invoke-static {v0, v5, v6}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide v5

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/OutlinedCardTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v7

    invoke-static {v0, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v7

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/OutlinedCardTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v9

    invoke-static {v0, v9, v10}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-4WTKRHQ(Landroidx/compose/material3/ColorScheme;J)J

    move-result-wide v11

    const/16 v17, 0xe

    const/16 v18, 0x0

    const v13, 0x3ec28f5c    # 0.38f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v18}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Landroidx/compose/material3/CardColors;-><init>(JJJJLjh2;)V

    invoke-virtual {v0, v2}, Landroidx/compose/material3/ColorScheme;->setDefaultOutlinedCardColorsCached$material3(Landroidx/compose/material3/CardColors;)V

    return-object v2

    :cond_0
    return-object v1
.end method

.method public final getElevatedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.CardDefaults.<get-elevatedShape> (Card.kt:374)"

    const v1, -0x7f4fd79

    invoke-static {v1, p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/ElevatedCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevatedCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/ElevatedCardTokens;->getContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final getOutlinedShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.CardDefaults.<get-outlinedShape> (Card.kt:378)"

    const v1, 0x414a89f7

    invoke-static {v1, p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/OutlinedCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/OutlinedCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/OutlinedCardTokens;->getContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final getShape(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;
    .locals 2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string v0, "androidx.compose.material3.CardDefaults.<get-shape> (Card.kt:370)"

    const v1, 0x4b7fb373    # 1.6757619E7f

    invoke-static {v1, p2, p0, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p0, Landroidx/compose/material3/tokens/FilledCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/FilledCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/FilledCardTokens;->getContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object p0

    const/4 p2, 0x6

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final outlinedCardBorder(ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/BorderStroke;
    .locals 8

    const/4 p0, 0x1

    and-int/2addr p4, p0

    if-eqz p4, :cond_0

    move p1, p0

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    const-string p4, "androidx.compose.material3.CardDefaults.outlinedCardBorder (Card.kt:613)"

    const v0, -0x176bbc91

    invoke-static {v0, p3, p0, p4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1
    const/4 p0, 0x6

    if-eqz p1, :cond_2

    const p1, 0x7d953eee

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object p1, Landroidx/compose/material3/tokens/OutlinedCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/OutlinedCardTokens;

    invoke-virtual {p1}, Landroidx/compose/material3/tokens/OutlinedCardTokens;->getOutlineColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object p3

    invoke-static {p3, p2, p0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide p3

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    goto :goto_0

    :cond_2
    const p1, 0x7d96750d

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    sget-object p1, Landroidx/compose/material3/tokens/OutlinedCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/OutlinedCardTokens;

    invoke-virtual {p1}, Landroidx/compose/material3/tokens/OutlinedCardTokens;->getDisabledOutlineColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object p3

    invoke-static {p3, p2, p0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v0

    const/16 v6, 0xe

    const/4 v7, 0x0

    const v2, 0x3df5c28f    # 0.12f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide p3

    sget-object v0, Landroidx/compose/material3/tokens/ElevatedCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/ElevatedCardTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ElevatedCardTokens;->getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v0

    invoke-static {v0, p2, p0}, Landroidx/compose/material3/ColorSchemeKt;->getValue(Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;Landroidx/compose/runtime/Composer;I)J

    move-result-wide v0

    invoke-static {p3, p4, v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide p3

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    :goto_0
    invoke-interface {p2, p3, p4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result p0

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p0, :cond_3

    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    if-ne v0, p0, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/material3/tokens/OutlinedCardTokens;->getOutlineWidth-D9Ej5fM()F

    move-result p0

    invoke-static {p0, p3, p4}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object v0

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_4
    check-cast v0, Landroidx/compose/foundation/BorderStroke;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    return-object v0
.end method

.method public final outlinedCardColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/CardColors;
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.CardDefaults.outlinedCardColors (Card.kt:567)"

    const v2, -0x47c98441

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/CardDefaults;->getDefaultOutlinedCardColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/CardColors;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final outlinedCardColors-ro_MJ88(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;
    .locals 16

    move-object/from16 v0, p9

    move/from16 v1, p10

    and-int/lit8 v2, p11, 0x1

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, p11, 0x2

    if-eqz v4, :cond_1

    and-int/lit8 v4, v1, 0xe

    invoke-static {v2, v3, v0, v4}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, p11, 0x4

    if-eqz v6, :cond_2

    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p5

    :goto_2
    and-int/lit8 v8, p11, 0x8

    if-eqz v8, :cond_3

    and-int/lit8 v8, v1, 0xe

    invoke-static {v2, v3, v0, v8}, Landroidx/compose/material3/ColorSchemeKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    move-result-wide v8

    const/16 v10, 0xe

    const/4 v11, 0x0

    const v12, 0x3ec28f5c    # 0.38f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide/from16 p1, v8

    move/from16 p7, v10

    move-object/from16 p8, v11

    move/from16 p3, v12

    move/from16 p4, v13

    move/from16 p5, v14

    move/from16 p6, v15

    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v8

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p7

    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, -0x1

    const-string v11, "androidx.compose.material3.CardDefaults.outlinedCardColors (Card.kt:585)"

    const v12, -0x424d4da9

    invoke-static {v12, v1, v10, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    sget-object v1, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v10, 0x6

    invoke-virtual {v1, v0, v10}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroidx/compose/material3/CardDefaults;->getDefaultOutlinedCardColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/CardColors;

    move-result-object v0

    move-object/from16 p0, v0

    move-wide/from16 p1, v2

    move-wide/from16 p3, v4

    move-wide/from16 p5, v6

    move-wide/from16 p7, v8

    invoke-virtual/range {p0 .. p8}, Landroidx/compose/material3/CardColors;->copy-jRlVdoo(JJJJ)Landroidx/compose/material3/CardColors;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    return-object v0
.end method

.method public final outlinedCardElevation-aqJV_2Y(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardElevation;
    .locals 0

    and-int/lit8 p0, p9, 0x1

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/compose/material3/tokens/OutlinedCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/OutlinedCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/OutlinedCardTokens;->getContainerElevation-D9Ej5fM()F

    move-result p1

    :cond_0
    and-int/lit8 p0, p9, 0x2

    if-eqz p0, :cond_1

    move p2, p1

    :cond_1
    and-int/lit8 p0, p9, 0x4

    if-eqz p0, :cond_2

    move p3, p1

    :cond_2
    and-int/lit8 p0, p9, 0x8

    if-eqz p0, :cond_3

    move p4, p1

    :cond_3
    and-int/lit8 p0, p9, 0x10

    if-eqz p0, :cond_4

    sget-object p0, Landroidx/compose/material3/tokens/OutlinedCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/OutlinedCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/OutlinedCardTokens;->getDraggedContainerElevation-D9Ej5fM()F

    move-result p5

    :cond_4
    move p7, p5

    and-int/lit8 p0, p9, 0x20

    if-eqz p0, :cond_5

    sget-object p0, Landroidx/compose/material3/tokens/OutlinedCardTokens;->INSTANCE:Landroidx/compose/material3/tokens/OutlinedCardTokens;

    invoke-virtual {p0}, Landroidx/compose/material3/tokens/OutlinedCardTokens;->getDisabledContainerElevation-D9Ej5fM()F

    move-result p6

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, -0x1

    const-string p5, "androidx.compose.material3.CardDefaults.outlinedCardElevation (Card.kt:459)"

    const p9, -0x5d275b5

    invoke-static {p9, p8, p0, p5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    move p8, p6

    move p6, p4

    move p4, p2

    new-instance p2, Landroidx/compose/material3/CardElevation;

    const/4 p9, 0x0

    move p5, p3

    move p3, p1

    invoke-direct/range {p2 .. p9}, Landroidx/compose/material3/CardElevation;-><init>(FFFFFFLjh2;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    return-object p2
.end method
