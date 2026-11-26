.class public final Landroidx/compose/material3/SliderDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material3/SliderDefaults;

.field private static final TickSize:F

.field private static final TrackStopIndicatorSize:F

.field private static final trackPath:Landroidx/compose/ui/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/SliderDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/SliderDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    sget-object v0, Landroidx/compose/material3/tokens/SliderTokens;->INSTANCE:Landroidx/compose/material3/tokens/SliderTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/SliderTokens;->getStopIndicatorSize-D9Ej5fM()F

    move-result v1

    sput v1, Landroidx/compose/material3/SliderDefaults;->TrackStopIndicatorSize:F

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/SliderTokens;->getStopIndicatorSize-D9Ej5fM()F

    move-result v0

    sput v0, Landroidx/compose/material3/SliderDefaults;->TickSize:F

    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPath_androidKt;->Path()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/SliderDefaults;->trackPath:Landroidx/compose/ui/graphics/Path;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final CenteredTrack_7LSsfP0$lambda$23$lambda$22(Landroidx/compose/material3/SliderColors;ZLandroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/geometry/Offset;)Lj59;
    .locals 7

    sget-object v0, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3(ZZ)J

    move-result-wide v5

    sget v4, Landroidx/compose/material3/SliderDefaults;->TrackStopIndicatorSize:F

    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v2

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/material3/SliderDefaults;->drawStopIndicator-x3O1jOs(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final CenteredTrack_7LSsfP0$lambda$25(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFFIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 14

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v13, p11

    move-object/from16 v11, p12

    invoke-virtual/range {v1 .. v13}, Landroidx/compose/material3/SliderDefaults;->CenteredTrack-7LSsfP0$material3(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Thumb_9LiSoMs$lambda$3(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 11

    or-int/lit8 v0, p7, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move/from16 v10, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v1 .. v10}, Landroidx/compose/material3/SliderDefaults;->Thumb-9LiSoMs(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Thumb_HwbPF3A$lambda$6(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 12

    or-int/lit8 v0, p8, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v11, p9

    move-object/from16 v9, p10

    invoke-virtual/range {v1 .. v11}, Landroidx/compose/material3/SliderDefaults;->Thumb-HwbPF3A$material3(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Track$lambda$11$lambda$10(JLandroidx/compose/material3/SliderPositions;JJJLandroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 27

    move-object/from16 v0, p9

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-ne v1, v2, :cond_0

    move/from16 v1, v16

    goto :goto_0

    :cond_0
    move v1, v15

    :goto_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v2

    const-wide v17, 0xffffffffL

    and-long v2, v2, v17

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v5, v2

    const/16 v19, 0x20

    shl-long v2, v3, v19

    and-long v4, v5, v17

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    shr-long v4, v4, v19

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v5

    and-long v5, v5, v17

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v6, v4

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    shl-long v6, v6, v19

    and-long v4, v4, v17

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v4

    move-wide v7, v4

    move-wide v5, v2

    if-eqz v1, :cond_1

    move-wide v3, v7

    goto :goto_1

    :cond_1
    move-wide v3, v5

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-wide v5, v7

    :goto_2
    sget v1, Landroidx/compose/material3/SliderDefaults;->TickSize:F

    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v20

    invoke-static {}, Landroidx/compose/material3/SliderKt;->getTrackHeight()F

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v7

    sget-object v21, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    move-result v8

    const/16 v13, 0x1e0

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v1, p0

    invoke-static/range {v0 .. v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    shr-long v0, v3, v19

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    shr-long v8, v5, v19

    long-to-int v2, v8

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/SliderPositions;->getActiveRange()Lnm1;

    move-result-object v9

    invoke-interface {v9}, Lom1;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    mul-float/2addr v9, v8

    add-float/2addr v9, v1

    invoke-interface/range {p9 .. p9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v10

    and-long v10, v10, v17

    long-to-int v1, v10

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v8, v8

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v10, v1

    shl-long v8, v8, v19

    and-long v10, v10, v17

    or-long/2addr v8, v10

    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v8

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sub-float/2addr v2, v0

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/SliderPositions;->getActiveRange()Lnm1;

    move-result-object v0

    invoke-interface {v0}, Lom1;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-interface/range {p9 .. p9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v1

    and-long v1, v1, v17

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v10, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long v10, v10, v19

    and-long v0, v0, v17

    or-long/2addr v0, v10

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v0

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    move-result v2

    move-wide v10, v5

    move-wide v5, v8

    const/4 v9, 0x0

    move-wide v11, v10

    const/4 v10, 0x0

    move-wide/from16 v21, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v8, v2

    move-wide/from16 v23, v3

    move-wide/from16 v25, v21

    move-wide v3, v0

    move-wide/from16 v1, p3

    move-object/from16 v0, p9

    invoke-static/range {v0 .. v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/SliderPositions;->getTickFractions()[F

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    array-length v2, v0

    move v3, v15

    :goto_3
    if-ge v3, v2, :cond_6

    aget v4, v0, v3

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/SliderPositions;->getActiveRange()Lnm1;

    move-result-object v5

    invoke-interface {v5}, Lom1;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/material3/SliderPositions;->getActiveRange()Lnm1;

    move-result-object v5

    invoke-interface {v5}, Lom1;->getStart()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_3

    goto :goto_4

    :cond_3
    move v5, v15

    goto :goto_5

    :cond_4
    :goto_4
    move/from16 v5, v16

    :goto_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    check-cast v6, Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v2, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v4, v15

    :goto_7
    if-ge v4, v3, :cond_7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    move-wide/from16 v6, v23

    move-wide/from16 v8, v25

    invoke-static {v6, v7, v8, v9, v5}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JJF)J

    move-result-wide v10

    shr-long v10, v10, v19

    long-to-int v5, v10

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-interface/range {p9 .. p9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v10

    and-long v10, v10, v17

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v11, v5

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move/from16 p0, v2

    move/from16 p1, v3

    int-to-long v2, v5

    shl-long v10, v11, v19

    and-long v2, v2, v17

    or-long/2addr v2, v10

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move/from16 v2, p0

    move/from16 v3, p1

    goto :goto_7

    :cond_7
    move/from16 p0, v2

    move-wide/from16 v6, v23

    move-wide/from16 v8, v25

    sget-object v0, Landroidx/compose/ui/graphics/PointMode;->Companion:Landroidx/compose/ui/graphics/PointMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PointMode$Companion;->getPoints-r_lszbg()I

    move-result v2

    if-eqz p0, :cond_8

    move-wide/from16 v3, p5

    goto :goto_8

    :cond_8
    move-wide/from16 v3, p7

    :goto_8
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    move-result v0

    const/16 v11, 0x1e0

    const/4 v12, 0x0

    move-wide/from16 v23, v6

    const/4 v7, 0x0

    move-wide v5, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v25, v5

    move/from16 v5, v20

    move v6, v0

    move-object/from16 v0, p9

    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPoints-F8ZwMP8$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Ljava/util/List;IJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    goto/16 :goto_6

    :cond_9
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final Track$lambda$12(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderPositions;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 8

    or-int/lit8 p5, p5, 0x1

    invoke-static {p5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/compose/material3/SliderDefaults;->Track(Landroidx/compose/material3/SliderPositions;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Track$lambda$13(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 8

    or-int/lit8 p5, p5, 0x1

    invoke-static {p5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/compose/material3/SliderDefaults;->Track(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Track$lambda$33(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 8

    or-int/lit8 p5, p5, 0x1

    invoke-static {p5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v7, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/compose/material3/SliderDefaults;->Track(Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final TrackImpl-VvwgllI(Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFZZLandroidx/compose/runtime/Composer;II)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SliderState;",
            "F",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/SliderColors;",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lj59;",
            ">;",
            "Ldm3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "Lj59;",
            ">;FFZZ",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v2, p1

    move/from16 v1, p2

    move-object/from16 v0, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p13

    const v6, 0x7f37829    # 3.66332E-34f

    move-object/from16 v7, p12

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v7

    and-int/lit8 v8, v5, 0x6

    if-nez v8, :cond_1

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :cond_0
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v8, v5

    goto :goto_1

    :cond_1
    move v8, v5

    :goto_1
    and-int/lit8 v11, v5, 0x30

    if-nez v11, :cond_3

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x20

    goto :goto_2

    :cond_2
    const/16 v11, 0x10

    :goto_2
    or-int/2addr v8, v11

    :cond_3
    and-int/lit16 v11, v5, 0x180

    if-nez v11, :cond_5

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x100

    goto :goto_3

    :cond_4
    const/16 v11, 0x80

    :goto_3
    or-int/2addr v8, v11

    :cond_5
    and-int/lit16 v11, v5, 0xc00

    if-nez v11, :cond_7

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x800

    goto :goto_4

    :cond_6
    const/16 v11, 0x400

    :goto_4
    or-int/2addr v8, v11

    :cond_7
    and-int/lit16 v11, v5, 0x6000

    if-nez v11, :cond_9

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x4000

    goto :goto_5

    :cond_8
    const/16 v11, 0x2000

    :goto_5
    or-int/2addr v8, v11

    :cond_9
    const/high16 v11, 0x30000

    and-int/2addr v11, v5

    if-nez v11, :cond_b

    move-object/from16 v11, p6

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/high16 v14, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v14, 0x10000

    :goto_6
    or-int/2addr v8, v14

    goto :goto_7

    :cond_b
    move-object/from16 v11, p6

    :goto_7
    const/high16 v14, 0x180000

    and-int/2addr v14, v5

    if-nez v14, :cond_d

    move-object/from16 v14, p7

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    const/high16 v16, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v16, 0x80000

    :goto_8
    or-int v8, v8, v16

    goto :goto_9

    :cond_d
    move-object/from16 v14, p7

    :goto_9
    const/high16 v16, 0xc00000

    and-int v16, v5, v16

    move/from16 v15, p8

    if-nez v16, :cond_f

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_e

    const/high16 v17, 0x800000

    goto :goto_a

    :cond_e
    const/high16 v17, 0x400000

    :goto_a
    or-int v8, v8, v17

    :cond_f
    const/high16 v17, 0x6000000

    and-int v17, v5, v17

    move/from16 v13, p9

    if-nez v17, :cond_11

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_10

    const/high16 v18, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v18, 0x2000000

    :goto_b
    or-int v8, v8, v18

    :cond_11
    const/high16 v18, 0x30000000

    and-int v18, v5, v18

    move/from16 v10, p10

    if-nez v18, :cond_13

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v19

    if-eqz v19, :cond_12

    const/high16 v19, 0x20000000

    goto :goto_c

    :cond_12
    const/high16 v19, 0x10000000

    :goto_c
    or-int v8, v8, v19

    :cond_13
    and-int/lit8 v19, p14, 0x6

    move/from16 v12, p11

    if-nez v19, :cond_15

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v20

    if-eqz v20, :cond_14

    const/16 v20, 0x4

    goto :goto_d

    :cond_14
    const/16 v20, 0x2

    :goto_d
    or-int v20, p14, v20

    move/from16 v6, v20

    goto :goto_e

    :cond_15
    move/from16 v6, p14

    :goto_e
    const v21, 0x12492493

    and-int v9, v8, v21

    const v5, 0x12492492

    const/4 v10, 0x1

    if-ne v9, v5, :cond_17

    and-int/lit8 v5, v6, 0x3

    const/4 v9, 0x2

    if-eq v5, v9, :cond_16

    goto :goto_f

    :cond_16
    const/4 v5, 0x0

    goto :goto_10

    :cond_17
    :goto_f
    move v5, v10

    :goto_10
    and-int/lit8 v9, v8, 0x1

    invoke-interface {v7, v5, v9}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v5, "androidx.compose.material3.SliderDefaults.TrackImpl (Slider.kt:1587)"

    const v9, 0x7f37829    # 3.66332E-34f

    invoke-static {v9, v8, v6, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_18
    move/from16 v20, v8

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3(ZZ)J

    move-result-wide v8

    invoke-virtual {v4, v3, v10}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3(ZZ)J

    move-result-wide v11

    invoke-virtual {v4, v3, v5}, Landroidx/compose/material3/SliderColors;->tickColor-WaAFU9c$material3(ZZ)J

    move-result-wide v13

    move/from16 v21, v6

    invoke-virtual {v4, v3, v10}, Landroidx/compose/material3/SliderColors;->tickColor-WaAFU9c$material3(ZZ)J

    move-result-wide v5

    invoke-virtual {v2}, Landroidx/compose/material3/SliderState;->getOrientation$material3()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v10

    sget-object v3, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v4, 0x0

    if-ne v10, v3, :cond_19

    invoke-static {}, Landroidx/compose/material3/SliderKt;->getTrackHeight()F

    move-result v3

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/4 v10, 0x0

    const/4 v15, 0x1

    invoke-static {v3, v4, v15, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxHeight$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/compose/material3/SliderState;->getReverseVerticalDirection$material3()Z

    move-result v4

    if-eqz v4, :cond_1a

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v10, -0x40800000    # -1.0f

    invoke-static {v3, v4, v10}, Landroidx/compose/ui/draw/ScaleKt;->scale(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v3

    goto :goto_11

    :cond_19
    const/4 v10, 0x0

    const/4 v15, 0x1

    invoke-static {v0, v4, v15, v10}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {}, Landroidx/compose/material3/SliderKt;->getTrackHeight()F

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    :cond_1a
    :goto_11
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    and-int/lit8 v10, v20, 0x70

    const/16 v15, 0x20

    if-ne v10, v15, :cond_1b

    const/4 v15, 0x1

    goto :goto_12

    :cond_1b
    const/4 v15, 0x0

    :goto_12
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v22

    or-int v15, v15, v22

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v15, :cond_1c

    sget-object v15, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v15}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v15

    if-ne v0, v15, :cond_1d

    :cond_1c
    new-instance v0, Ll28;

    invoke-direct {v0, v2, v1}, Ll28;-><init>(Landroidx/compose/material3/SliderState;F)V

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1d
    check-cast v0, Ldm3;

    invoke-static {v4, v0}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Ldm3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v3, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/16 v15, 0x20

    if-ne v10, v15, :cond_1e

    const/4 v3, 0x1

    goto :goto_13

    :cond_1e
    const/4 v3, 0x0

    :goto_13
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v7, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v7, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v7, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v7, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v4

    or-int/2addr v3, v4

    const/high16 v4, 0x1c00000

    and-int v4, v20, v4

    const/high16 v10, 0x800000

    if-ne v4, v10, :cond_1f

    const/4 v4, 0x1

    goto :goto_14

    :cond_1f
    const/4 v4, 0x0

    :goto_14
    or-int/2addr v3, v4

    const/high16 v4, 0xe000000

    and-int v4, v20, v4

    const/high16 v10, 0x4000000

    if-ne v4, v10, :cond_20

    const/4 v4, 0x1

    goto :goto_15

    :cond_20
    const/4 v4, 0x0

    :goto_15
    or-int/2addr v3, v4

    const/high16 v4, 0x70000

    and-int v4, v20, v4

    const/high16 v10, 0x20000

    if-ne v4, v10, :cond_21

    const/4 v4, 0x1

    goto :goto_16

    :cond_21
    const/4 v4, 0x0

    :goto_16
    or-int/2addr v3, v4

    const/high16 v4, 0x380000

    and-int v4, v20, v4

    const/high16 v10, 0x100000

    if-ne v4, v10, :cond_22

    const/4 v4, 0x1

    goto :goto_17

    :cond_22
    const/4 v4, 0x0

    :goto_17
    or-int/2addr v3, v4

    const/high16 v4, 0x70000000

    and-int v4, v20, v4

    const/high16 v10, 0x20000000

    if-ne v4, v10, :cond_23

    const/4 v4, 0x1

    goto :goto_18

    :cond_23
    const/4 v4, 0x0

    :goto_18
    or-int/2addr v3, v4

    and-int/lit8 v4, v21, 0xe

    const/4 v10, 0x4

    if-ne v4, v10, :cond_24

    const/4 v10, 0x1

    goto :goto_19

    :cond_24
    const/4 v10, 0x0

    :goto_19
    or-int/2addr v3, v10

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_25

    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_26

    :cond_25
    move-object v3, v0

    goto :goto_1a

    :cond_26
    move-object/from16 v24, v0

    move-object v1, v7

    goto :goto_1b

    :goto_1a
    new-instance v0, Ln28;

    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v24, v3

    move-object/from16 v23, v7

    move-wide v3, v8

    move-wide v7, v13

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-wide v9, v5

    move-wide v5, v11

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v0 .. v16}, Ln28;-><init>(FLandroidx/compose/material3/SliderState;JJJJFFLbm3;Ldm3;ZZ)V

    move-object/from16 v1, v23

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_1b
    check-cast v4, Lnl3;

    move-object/from16 v3, v24

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lnl3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_1c

    :cond_27
    move-object v1, v7

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_28
    :goto_1c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_29

    new-instance v0, Lo28;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lo28;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFZZII)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_29
    return-void
.end method

.method private final TrackImpl-xlyIBlM(Landroidx/compose/material3/RangeSliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFLandroidx/compose/runtime/Composer;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/RangeSliderState;",
            "F",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/SliderColors;",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lj59;",
            ">;",
            "Ldm3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "Lj59;",
            ">;FF",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object/from16 v2, p1

    move-object/from16 v15, p3

    move/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v3, p11

    const v4, -0x667bea28

    move-object/from16 v5, p10

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v5

    and-int/lit8 v6, v3, 0x6

    if-nez v6, :cond_1

    invoke-interface {v5, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_0

    :cond_0
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v3

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    and-int/lit8 v7, v3, 0x30

    if-nez v7, :cond_3

    move/from16 v7, p2

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_2

    :cond_2
    const/16 v9, 0x10

    :goto_2
    or-int/2addr v6, v9

    goto :goto_3

    :cond_3
    move/from16 v7, p2

    :goto_3
    and-int/lit16 v9, v3, 0x180

    if-nez v9, :cond_5

    invoke-interface {v5, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x100

    goto :goto_4

    :cond_4
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v6, v9

    :cond_5
    and-int/lit16 v9, v3, 0xc00

    if-nez v9, :cond_7

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x800

    goto :goto_5

    :cond_6
    const/16 v9, 0x400

    :goto_5
    or-int/2addr v6, v9

    :cond_7
    and-int/lit16 v9, v3, 0x6000

    if-nez v9, :cond_9

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x4000

    goto :goto_6

    :cond_8
    const/16 v9, 0x2000

    :goto_6
    or-int/2addr v6, v9

    :cond_9
    const/high16 v9, 0x30000

    and-int/2addr v9, v3

    move-object/from16 v13, p6

    if-nez v9, :cond_b

    invoke-interface {v5, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/high16 v9, 0x20000

    goto :goto_7

    :cond_a
    const/high16 v9, 0x10000

    :goto_7
    or-int/2addr v6, v9

    :cond_b
    const/high16 v9, 0x180000

    and-int/2addr v9, v3

    move-object/from16 v14, p7

    if-nez v9, :cond_d

    invoke-interface {v5, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/high16 v9, 0x100000

    goto :goto_8

    :cond_c
    const/high16 v9, 0x80000

    :goto_8
    or-int/2addr v6, v9

    :cond_d
    const/high16 v9, 0xc00000

    and-int/2addr v9, v3

    if-nez v9, :cond_f

    move/from16 v9, p8

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x800000

    goto :goto_9

    :cond_e
    const/high16 v16, 0x400000

    :goto_9
    or-int v6, v6, v16

    goto :goto_a

    :cond_f
    move/from16 v9, p8

    :goto_a
    const/high16 v16, 0x6000000

    and-int v16, v3, v16

    move/from16 v10, p9

    if-nez v16, :cond_11

    invoke-interface {v5, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x4000000

    goto :goto_b

    :cond_10
    const/high16 v17, 0x2000000

    :goto_b
    or-int v6, v6, v17

    :cond_11
    const v17, 0x2492493

    and-int v11, v6, v17

    const v12, 0x2492492

    const/4 v8, 0x1

    if-eq v11, v12, :cond_12

    move v11, v8

    goto :goto_c

    :cond_12
    const/4 v11, 0x0

    :goto_c
    and-int/lit8 v12, v6, 0x1

    invoke-interface {v5, v11, v12}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v11

    if-eqz v11, :cond_13

    const/4 v11, -0x1

    const-string v12, "androidx.compose.material3.SliderDefaults.TrackImpl (Slider.kt:1811)"

    invoke-static {v4, v6, v11, v12}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_13
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3(ZZ)J

    move-result-wide v11

    move/from16 v19, v6

    invoke-virtual {v1, v0, v8}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3(ZZ)J

    move-result-wide v6

    invoke-virtual {v1, v0, v4}, Landroidx/compose/material3/SliderColors;->tickColor-WaAFU9c$material3(ZZ)J

    move-result-wide v9

    move-object/from16 v20, v5

    invoke-virtual {v1, v0, v8}, Landroidx/compose/material3/SliderColors;->tickColor-WaAFU9c$material3(ZZ)J

    move-result-wide v4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v15, v0, v8, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {}, Landroidx/compose/material3/SliderKt;->getTrackHeight()F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v21, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v1, v8, :cond_14

    new-instance v1, Lv28;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object/from16 v8, v20

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_d

    :cond_14
    move-object/from16 v8, v20

    :goto_d
    check-cast v1, Ldm3;

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Ldm3;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v1, v19, 0x70

    move-object/from16 v20, v0

    const/16 v0, 0x20

    if-ne v1, v0, :cond_15

    const/4 v0, 0x1

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    :goto_e
    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v8, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v8, v6, v7}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v8, v9, v10}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v8, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    or-int/2addr v0, v1

    const/high16 v1, 0x1c00000

    and-int v1, v19, v1

    move/from16 v18, v0

    const/high16 v0, 0x800000

    if-ne v1, v0, :cond_16

    const/4 v0, 0x1

    goto :goto_f

    :cond_16
    const/4 v0, 0x0

    :goto_f
    or-int v0, v18, v0

    const/high16 v1, 0xe000000

    and-int v1, v19, v1

    move/from16 v17, v0

    const/high16 v0, 0x4000000

    if-ne v1, v0, :cond_17

    const/4 v0, 0x1

    goto :goto_10

    :cond_17
    const/4 v0, 0x0

    :goto_10
    or-int v0, v17, v0

    const/high16 v1, 0x70000

    and-int v1, v19, v1

    move/from16 v17, v0

    const/high16 v0, 0x20000

    if-ne v1, v0, :cond_18

    const/4 v0, 0x1

    goto :goto_11

    :cond_18
    const/4 v0, 0x0

    :goto_11
    or-int v0, v17, v0

    const/high16 v1, 0x380000

    and-int v1, v19, v1

    move/from16 v16, v0

    const/high16 v0, 0x100000

    if-ne v1, v0, :cond_19

    const/16 v22, 0x1

    goto :goto_12

    :cond_19
    const/16 v22, 0x0

    :goto_12
    or-int v0, v16, v22

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1b

    invoke-virtual/range {v21 .. v21}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_1a

    goto :goto_13

    :cond_1a
    move-object v15, v8

    move-object/from16 v23, v20

    goto :goto_14

    :cond_1b
    :goto_13
    new-instance v0, Lw28;

    move/from16 v1, p2

    move-object v15, v8

    move-object/from16 v23, v20

    move-wide/from16 v24, v11

    move/from16 v11, p8

    move/from16 v12, p9

    move-wide/from16 v26, v9

    move-wide v9, v4

    move-wide v5, v6

    move-wide/from16 v7, v26

    move-wide/from16 v3, v24

    invoke-direct/range {v0 .. v14}, Lw28;-><init>(FLandroidx/compose/material3/RangeSliderState;JJJJFFLbm3;Ldm3;)V

    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_14
    check-cast v1, Lnl3;

    move-object/from16 v0, v23

    const/4 v4, 0x0

    invoke-static {v0, v1, v15, v4}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lnl3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_15

    :cond_1c
    move-object v15, v5

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    :cond_1d
    :goto_15
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_1e

    new-instance v0, Lx28;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lx28;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFI)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_1e
    return-void
.end method

.method private static final TrackImpl_VvwgllI$lambda$29$lambda$28(FLandroidx/compose/material3/SliderState;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 2

    invoke-virtual {p4}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-interface {p3, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p3

    sget-object p4, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {p4}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result p4

    invoke-static {p0, p4}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Landroidx/compose/material3/SliderState;->getOrientation$material3()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object p0

    sget-object p1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p0, p1, :cond_0

    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_1
    invoke-interface {p2, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    :goto_0
    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p1

    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p4

    invoke-static {}, Landroidx/compose/material3/SliderKt;->getCornerSizeAlignmentLine()Landroidx/compose/ui/layout/VerticalAlignmentLine;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lyz1;

    const/4 v1, 0x3

    invoke-direct {v0, p3, v1}, Lyz1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p2, p1, p4, p0, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lnl3;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method private static final TrackImpl_VvwgllI$lambda$29$lambda$28$lambda$27(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 7

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final TrackImpl_VvwgllI$lambda$31$lambda$30(FLandroidx/compose/material3/SliderState;JJJJFFLbm3;Ldm3;ZZLandroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 26

    move/from16 v0, p0

    move-object/from16 v1, p16

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/SliderState;->getOrientation$material3()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v0

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    const/16 v0, 0x20

    shr-long/2addr v4, v0

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    :goto_0
    div-float/2addr v0, v3

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    :goto_1
    sget-object v2, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    move-object v3, v2

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/SliderState;->getTickFractions$material3()[F

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/SliderState;->getCoercedValueAsFraction()F

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v13

    invoke-interface {v1, v5}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/SliderState;->getThumbWidth$material3()I

    move-result v5

    invoke-interface {v1, v5}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/SliderState;->getThumbHeight$material3()I

    move-result v5

    invoke-interface {v1, v5}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v16

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v19

    const/16 v22, 0x0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/SliderState;->getOrientation$material3()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v24

    move-object v0, v3

    const/4 v3, 0x0

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move/from16 v17, p10

    move/from16 v18, p11

    move-object/from16 v20, p12

    move-object/from16 v21, p13

    move/from16 v23, p14

    move/from16 v25, p15

    invoke-direct/range {v0 .. v25}, Landroidx/compose/material3/SliderDefaults;->drawTrack-GVD57ws(Landroidx/compose/ui/graphics/drawscope/DrawScope;[FFFJJJJFFFFFFFLbm3;Ldm3;ZZLandroidx/compose/foundation/gestures/Orientation;Z)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final TrackImpl_VvwgllI$lambda$32(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFZZIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 16

    or-int/lit8 v0, p12, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    invoke-static/range {p13 .. p13}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p14

    invoke-direct/range {v1 .. v15}, Landroidx/compose/material3/SliderDefaults;->TrackImpl-VvwgllI(Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFZZLandroidx/compose/runtime/Composer;II)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final TrackImpl_xlyIBlM$lambda$44$lambda$43(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 4

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v1

    invoke-static {}, Landroidx/compose/material3/SliderKt;->getCornerSizeAlignmentLine()Landroidx/compose/ui/layout/VerticalAlignmentLine;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v2, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llq;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Llq;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0, v1, p2, v2}, Landroidx/compose/ui/layout/MeasureScope;->layout(IILjava/util/Map;Lnl3;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method private static final TrackImpl_xlyIBlM$lambda$44$lambda$43$lambda$42(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 7

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final TrackImpl_xlyIBlM$lambda$46$lambda$45(FLandroidx/compose/material3/RangeSliderState;JJJJFFLbm3;Ldm3;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 28

    move/from16 v0, p0

    move-object/from16 v1, p14

    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    :goto_0
    sget-object v2, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    move-object v3, v2

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/RangeSliderState;->getTickFractions$material3()[F

    move-result-object v2

    move-object v4, v3

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/RangeSliderState;->getCoercedActiveRangeStartAsFraction$material3()F

    move-result v3

    move-object v5, v4

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/RangeSliderState;->getCoercedActiveRangeEndAsFraction$material3()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/RangeSliderState;->getStartThumbWidth$material3()F

    move-result v6

    invoke-interface {v1, v6}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/RangeSliderState;->getStartThumbHeight$material3()F

    move-result v6

    invoke-interface {v1, v6}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/RangeSliderState;->getEndThumbWidth$material3()F

    move-result v6

    invoke-interface {v1, v6}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/material3/RangeSliderState;->getEndThumbHeight$material3()F

    move-result v6

    invoke-interface {v1, v6}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v16

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v19

    const/high16 v26, 0xe0000

    const/16 v27, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move/from16 v17, p10

    move/from16 v18, p11

    move-object/from16 v20, p12

    move-object/from16 v21, p13

    move-object v0, v5

    move-wide/from16 v5, p2

    invoke-static/range {v0 .. v27}, Landroidx/compose/material3/SliderDefaults;->drawTrack-GVD57ws$default(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/ui/graphics/drawscope/DrawScope;[FFFJJJJFFFFFFFLbm3;Ldm3;ZZLandroidx/compose/foundation/gestures/Orientation;ZILjava/lang/Object;)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method

.method private static final TrackImpl_xlyIBlM$lambda$47(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 13

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p11

    invoke-direct/range {v1 .. v12}, Landroidx/compose/material3/SliderDefaults;->TrackImpl-xlyIBlM(Landroidx/compose/material3/RangeSliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Track_4EFweAY$lambda$15$lambda$14(Landroidx/compose/material3/SliderColors;ZLandroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/geometry/Offset;)Lj59;
    .locals 7

    sget-object v0, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3(ZZ)J

    move-result-wide v5

    sget v4, Landroidx/compose/material3/SliderDefaults;->TrackStopIndicatorSize:F

    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v2

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/material3/SliderDefaults;->drawStopIndicator-x3O1jOs(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Track_4EFweAY$lambda$17(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 13

    or-int/lit8 v0, p9, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v12, p10

    move-object/from16 v10, p11

    invoke-virtual/range {v1 .. v12}, Landroidx/compose/material3/SliderDefaults;->Track-4EFweAY(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Track_4EFweAY$lambda$35$lambda$34(Landroidx/compose/material3/SliderColors;ZLandroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/geometry/Offset;)Lj59;
    .locals 7

    sget-object v0, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3(ZZ)J

    move-result-wide v5

    sget v4, Landroidx/compose/material3/SliderDefaults;->TrackStopIndicatorSize:F

    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v2

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/material3/SliderDefaults;->drawStopIndicator-x3O1jOs(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Track_4EFweAY$lambda$37(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 13

    or-int/lit8 v0, p9, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v12, p10

    move-object/from16 v10, p11

    invoke-virtual/range {v1 .. v12}, Landroidx/compose/material3/SliderDefaults;->Track-4EFweAY(Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Track_mnvyFg4$lambda$19$lambda$18(Landroidx/compose/material3/SliderColors;ZLandroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/geometry/Offset;)Lj59;
    .locals 7

    sget-object v0, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3(ZZ)J

    move-result-wide v5

    sget v4, Landroidx/compose/material3/SliderDefaults;->TrackStopIndicatorSize:F

    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v2

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/material3/SliderDefaults;->drawStopIndicator-x3O1jOs(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Track_mnvyFg4$lambda$21(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 14

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v13, p11

    move-object/from16 v11, p12

    invoke-virtual/range {v1 .. v13}, Landroidx/compose/material3/SliderDefaults;->Track-mnvyFg4$material3(Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Track_mnvyFg4$lambda$39$lambda$38(Landroidx/compose/material3/SliderColors;ZLandroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/geometry/Offset;)Lj59;
    .locals 7

    sget-object v0, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3(ZZ)J

    move-result-wide v5

    sget v4, Landroidx/compose/material3/SliderDefaults;->TrackStopIndicatorSize:F

    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v2

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/material3/SliderDefaults;->drawStopIndicator-x3O1jOs(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private static final Track_mnvyFg4$lambda$41(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 14

    or-int/lit8 v0, p10, 0x1

    invoke-static {v0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v12

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v13, p11

    move-object/from16 v11, p12

    invoke-virtual/range {v1 .. v13}, Landroidx/compose/material3/SliderDefaults;->Track-mnvyFg4$material3(Landroidx/compose/material3/RangeSliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static synthetic a(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p13}, Landroidx/compose/material3/SliderDefaults;->Track_mnvyFg4$lambda$41(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/material3/SliderDefaults;->TrackImpl_xlyIBlM$lambda$44$lambda$43(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(FLandroidx/compose/material3/SliderState;JJJJFFLbm3;Ldm3;ZZLandroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p16}, Landroidx/compose/material3/SliderDefaults;->TrackImpl_VvwgllI$lambda$31$lambda$30(FLandroidx/compose/material3/SliderState;JJJJFFLbm3;Ldm3;ZZLandroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 1

    move-object v0, p7

    move p7, p2

    move-object p2, p3

    move p3, p4

    move-object p4, p5

    move-object p5, p6

    move-object p6, v0

    invoke-static/range {p0 .. p13}, Landroidx/compose/material3/SliderDefaults;->CenteredTrack_7LSsfP0$lambda$25(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFFIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final drawTrack-GVD57ws(Landroidx/compose/ui/graphics/drawscope/DrawScope;[FFFJJJJFFFFFFFLbm3;Ldm3;ZZLandroidx/compose/foundation/gestures/Orientation;Z)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "[FFFJJJJFFFFFFF",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lj59;",
            ">;",
            "Ldm3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "Lj59;",
            ">;ZZ",
            "Landroidx/compose/foundation/gestures/Orientation;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    move/from16 v0, p3

    move/from16 v2, p4

    move/from16 v3, p17

    move-object/from16 v12, p20

    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    move-object/from16 v5, p24

    if-ne v5, v4, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v4

    sget-object v6, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v4, v6, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    if-eqz v16, :cond_2

    if-nez v15, :cond_2

    const/16 v17, 0x1

    :goto_2
    move/from16 v4, p19

    goto :goto_3

    :cond_2
    const/16 v17, 0x0

    goto :goto_2

    :goto_3
    invoke-interface {v1, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v18

    const/16 v19, 0x20

    const-wide v20, 0xffffffffL

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v6

    if-eqz v15, :cond_3

    and-long v6, v6, v20

    :goto_4
    long-to-int v4, v6

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    goto :goto_5

    :cond_3
    shr-long v6, v6, v19

    goto :goto_4

    :goto_5
    invoke-static {v11}, Lyr;->J([F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v0, v6}, Laa4;->a(FLjava/lang/Float;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v11}, Lyr;->U([F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v0, v6}, Laa4;->a(FLjava/lang/Float;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_6

    :cond_4
    const/4 v6, 0x0

    goto :goto_7

    :cond_5
    :goto_6
    const/4 v6, 0x1

    :goto_7
    invoke-static {v11}, Lyr;->J([F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v2, v7}, Laa4;->a(FLjava/lang/Float;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v11}, Lyr;->U([F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v2, v7}, Laa4;->a(FLjava/lang/Float;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_8

    :cond_6
    const/4 v7, 0x0

    goto :goto_9

    :cond_7
    :goto_8
    const/4 v7, 0x1

    :goto_9
    array-length v8, v11

    if-nez v8, :cond_8

    const/4 v8, 0x1

    goto :goto_a

    :cond_8
    const/4 v8, 0x0

    :goto_a
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x0

    if-nez v8, :cond_9

    if-nez v7, :cond_9

    sub-float v7, v4, v10

    mul-float v8, v18, v9

    sub-float/2addr v7, v8

    mul-float/2addr v7, v2

    add-float/2addr v7, v10

    add-float v7, v7, v18

    :goto_b
    move v2, v7

    goto :goto_c

    :cond_9
    invoke-static {v4, v10, v2, v10}, Li8;->b(FFFF)F

    move-result v7

    goto :goto_b

    :goto_c
    array-length v7, v11

    if-nez v7, :cond_a

    const/4 v7, 0x1

    goto :goto_d

    :cond_a
    const/4 v7, 0x0

    :goto_d
    if-nez v7, :cond_b

    if-nez v6, :cond_b

    sub-float v6, v4, v10

    mul-float v7, v18, v9

    sub-float/2addr v6, v7

    mul-float/2addr v6, v0

    add-float/2addr v6, v10

    add-float v6, v6, v18

    :goto_e
    move/from16 v0, p18

    move/from16 v22, v6

    goto :goto_f

    :cond_b
    invoke-static {v4, v10, v0, v10}, Li8;->b(FFFF)F

    move-result v6

    goto :goto_e

    :goto_f
    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v23

    invoke-static {v10}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    invoke-static {v3, v0}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    move-result v0

    if-lez v0, :cond_d

    if-eqz v15, :cond_c

    move/from16 v0, p14

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    div-float/2addr v0, v9

    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v6

    add-float/2addr v6, v0

    move/from16 v0, p16

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    div-float/2addr v0, v9

    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v3

    :goto_10
    add-float/2addr v3, v0

    move/from16 v24, v3

    move/from16 v25, v6

    goto :goto_11

    :cond_c
    move/from16 v0, p13

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    div-float/2addr v0, v9

    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v6

    add-float/2addr v6, v0

    move/from16 v0, p15

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    div-float/2addr v0, v9

    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v3

    goto :goto_10

    :cond_d
    move/from16 v24, v10

    move/from16 v25, v24

    :goto_11
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v6

    if-eqz v15, :cond_e

    and-long v6, v6, v20

    :goto_12
    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    goto :goto_13

    :cond_e
    shr-long v6, v6, v19

    goto :goto_12

    :goto_13
    add-float v3, v25, v10

    if-eqz p23, :cond_10

    array-length v6, v11

    if-nez v6, :cond_f

    const/4 v6, 0x1

    goto :goto_14

    :cond_f
    const/4 v6, 0x0

    :goto_14
    if-nez v6, :cond_11

    :cond_10
    add-float v3, v3, v18

    :cond_11
    if-eqz p25, :cond_12

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    move/from16 v26, v6

    goto :goto_15

    :cond_12
    move/from16 v26, v22

    :goto_15
    if-nez p25, :cond_14

    if-eqz p22, :cond_13

    goto :goto_16

    :cond_13
    move v14, v0

    move v13, v2

    move/from16 v28, v4

    move/from16 p3, v10

    const/16 v27, 0x1

    goto/16 :goto_1d

    :cond_14
    :goto_16
    cmpl-float v3, v26, v3

    if-lez v3, :cond_13

    if-eqz v17, :cond_15

    move/from16 v9, v23

    goto :goto_17

    :cond_15
    move/from16 v9, v18

    :goto_17
    move v3, v10

    if-eqz v17, :cond_16

    move/from16 v10, v18

    goto :goto_18

    :cond_16
    move/from16 v10, v23

    :goto_18
    sub-float v6, v26, v25

    if-eqz v17, :cond_17

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v7

    shr-long v7, v7, v19

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    sub-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v7, v7

    move/from16 p3, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    const/16 v27, 0x1

    int-to-long v13, v3

    shl-long v7, v7, v19

    and-long v13, v13, v20

    or-long/2addr v7, v13

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v7

    goto :goto_19

    :cond_17
    move/from16 p3, v3

    const/16 v27, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v7, v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v13, v3

    shl-long v7, v7, v19

    and-long v13, v13, v20

    or-long/2addr v7, v13

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v7

    :goto_19
    if-eqz v15, :cond_18

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v13

    shr-long v13, v13, v19

    long-to-int v3, v13

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    sub-float v6, v6, p3

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v13, v3

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    move/from16 p4, v0

    int-to-long v0, v3

    shl-long v13, v13, v19

    and-long v0, v0, v20

    or-long/2addr v0, v13

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v0

    :goto_1a
    move/from16 v14, p4

    move v13, v2

    move/from16 v28, v4

    move-object v2, v5

    move-wide v3, v7

    move-wide/from16 v7, p5

    move-wide v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_1b

    :cond_18
    move/from16 p4, v0

    sub-float v6, v6, p3

    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    and-long v0, v0, v20

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v13, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long v13, v13, v19

    and-long v0, v0, v20

    or-long/2addr v0, v13

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v0

    goto :goto_1a

    :goto_1b
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/SliderDefaults;->drawTrackPath-zXTsYAs(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/foundation/gestures/Orientation;JJJFF)V

    if-eqz v15, :cond_19

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v2

    shr-long v2, v2, v19

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    add-float v10, v18, p3

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v4, v0

    shl-long v2, v2, v19

    and-long v4, v4, v20

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    goto :goto_1c

    :cond_19
    if-eqz v16, :cond_1a

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    shr-long v2, v2, v19

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sub-float v0, v0, p3

    sub-float v0, v0, v18

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v2

    and-long v2, v2, v20

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v3, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v5, v0

    shl-long v2, v3, v19

    and-long v4, v5, v20

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    goto :goto_1c

    :cond_1a
    add-float v10, v18, p3

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v2

    and-long v2, v2, v20

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v4, v0

    shl-long v2, v2, v19

    and-long v4, v4, v20

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    :goto_1c
    if-eqz v12, :cond_1b

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-interface {v12, v1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj59;->a:Lj59;

    :cond_1b
    :goto_1d
    sub-float v4, v28, v24

    if-eqz p23, :cond_1d

    array-length v0, v11

    if-nez v0, :cond_1c

    move/from16 v0, v27

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    :goto_1e
    if-nez v0, :cond_1e

    :cond_1d
    sub-float v4, v4, v18

    :cond_1e
    if-eqz p25, :cond_1f

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move/from16 v29, v2

    goto :goto_1f

    :cond_1f
    move/from16 v29, v13

    :goto_1f
    cmpg-float v0, v29, v4

    if-gez v0, :cond_28

    if-eqz v17, :cond_20

    move/from16 v9, v18

    goto :goto_20

    :cond_20
    move/from16 v9, v23

    :goto_20
    if-eqz v17, :cond_21

    move/from16 v10, v23

    goto :goto_21

    :cond_21
    move/from16 v10, v18

    :goto_21
    add-float v0, v29, v24

    sub-float v4, v28, v0

    if-eqz v15, :cond_22

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    shl-long v2, v2, v19

    and-long v5, v5, v20

    or-long/2addr v2, v5

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    goto :goto_22

    :cond_22
    if-eqz v16, :cond_23

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    shl-long v2, v2, v19

    and-long v5, v5, v20

    or-long/2addr v2, v5

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    goto :goto_22

    :cond_23
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v5, v5

    shl-long v2, v2, v19

    and-long v5, v5, v20

    or-long/2addr v2, v5

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    :goto_22
    if-eqz v15, :cond_24

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    shr-long v5, v5, v19

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v5, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v7, v0

    shl-long v4, v5, v19

    and-long v6, v7, v20

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v4

    :goto_23
    move-object/from16 v0, p0

    move-wide/from16 v7, p5

    move-wide v5, v4

    move-wide v3, v2

    move-object/from16 v2, p24

    goto :goto_24

    :cond_24
    if-eqz v16, :cond_25

    if-nez p22, :cond_25

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v4

    shr-long v4, v4, v19

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    sub-float/2addr v4, v0

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    and-long v5, v5, v20

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v6, v0

    shl-long v4, v4, v19

    and-long v6, v6, v20

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v4

    goto :goto_23

    :cond_25
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    and-long v5, v5, v20

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v6, v0

    shl-long v4, v4, v19

    and-long v6, v6, v20

    or-long/2addr v4, v6

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v4

    goto :goto_23

    :goto_24
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/SliderDefaults;->drawTrackPath-zXTsYAs(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/foundation/gestures/Orientation;JJJFF)V

    if-eqz v15, :cond_26

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v2

    shr-long v2, v2, v19

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    sub-float v4, v28, v18

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v4, v0

    shl-long v2, v2, v19

    and-long v4, v4, v20

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    goto :goto_25

    :cond_26
    if-eqz v16, :cond_27

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v2

    and-long v2, v2, v20

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v4, v0

    shl-long v2, v2, v19

    and-long v4, v4, v20

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    goto :goto_25

    :cond_27
    sub-float v4, v28, v18

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v2

    and-long v2, v2, v20

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v4, v0

    shl-long v2, v2, v19

    and-long v4, v4, v20

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    :goto_25
    if-eqz v12, :cond_28

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-interface {v12, v1, v0}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj59;->a:Lj59;

    :cond_28
    if-eqz p25, :cond_2a

    cmpg-float v0, v26, v14

    if-gez v0, :cond_29

    move/from16 v10, v25

    goto :goto_26

    :cond_29
    move/from16 v10, p3

    :goto_26
    add-float v10, v26, v10

    :goto_27
    move/from16 v26, v10

    goto :goto_28

    :cond_2a
    if-eqz p22, :cond_2b

    add-float v10, v22, v25

    goto :goto_27

    :cond_2b
    move/from16 v26, p3

    :goto_28
    if-eqz p25, :cond_2d

    cmpl-float v0, v29, v14

    if-lez v0, :cond_2c

    move/from16 v10, v24

    goto :goto_29

    :cond_2c
    move/from16 v10, p3

    :goto_29
    sub-float v29, v29, v10

    goto :goto_2a

    :cond_2d
    sub-float v29, v13, v24

    :goto_2a
    if-nez v17, :cond_2f

    if-nez p25, :cond_2f

    if-eqz p22, :cond_2e

    goto :goto_2b

    :cond_2e
    move/from16 v9, v18

    goto :goto_2c

    :cond_2f
    :goto_2b
    move/from16 v9, v23

    :goto_2c
    if-eqz v17, :cond_30

    if-nez p25, :cond_30

    if-nez p22, :cond_30

    move/from16 v10, v18

    goto :goto_2d

    :cond_30
    move/from16 v10, v23

    :goto_2d
    if-eqz v17, :cond_31

    if-nez p25, :cond_31

    if-nez p22, :cond_31

    move/from16 v0, v29

    goto :goto_2e

    :cond_31
    sub-float v0, v29, v26

    :goto_2e
    if-eqz p23, :cond_34

    array-length v2, v11

    if-nez v2, :cond_32

    move/from16 v2, v27

    goto :goto_2f

    :cond_32
    const/4 v2, 0x0

    :goto_2f
    if-nez v2, :cond_33

    goto :goto_30

    :cond_33
    move/from16 v2, p3

    goto :goto_31

    :cond_34
    :goto_30
    move v2, v9

    :goto_31
    cmpl-float v2, v0, v2

    if-lez v2, :cond_39

    if-eqz v15, :cond_35

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    shl-long v2, v2, v19

    and-long v4, v4, v20

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    :goto_32
    move-wide v3, v2

    goto :goto_33

    :cond_35
    if-eqz v16, :cond_36

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    shr-long v2, v2, v19

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float v2, v2, v29

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    shl-long v2, v2, v19

    and-long v4, v4, v20

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    goto :goto_32

    :cond_36
    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    shl-long v2, v2, v19

    and-long v4, v4, v20

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    goto :goto_32

    :goto_33
    if-eqz v15, :cond_37

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    shr-long v5, v5, v19

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v5, v2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v7, v0

    shl-long v5, v5, v19

    and-long v7, v7, v20

    or-long/2addr v5, v7

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v5

    :goto_34
    move-object/from16 v0, p0

    move-wide/from16 v7, p7

    move-object/from16 v2, p24

    goto :goto_35

    :cond_37
    if-eqz v16, :cond_38

    if-nez p25, :cond_38

    if-nez p22, :cond_38

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    and-long v5, v5, v20

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v5, v2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v7, v0

    shl-long v5, v5, v19

    and-long v7, v7, v20

    or-long/2addr v5, v7

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v5

    goto :goto_34

    :cond_38
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v5

    and-long v5, v5, v20

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v5, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v7, v0

    shl-long v5, v5, v19

    and-long v7, v7, v20

    or-long/2addr v5, v7

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v5

    goto :goto_34

    :goto_35
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material3/SliderDefaults;->drawTrackPath-zXTsYAs(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/foundation/gestures/Orientation;JJJFF)V

    :cond_39
    add-float v10, p3, v18

    sub-float v4, v28, v18

    sub-float v0, v14, v24

    add-float v2, v14, v24

    sub-float v3, v22, v25

    add-float v22, v22, v25

    sub-float v5, v13, v24

    add-float v6, v13, v24

    array-length v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_36
    if-ge v8, v7, :cond_49

    aget v13, v11, v8

    add-int/lit8 v14, v9, 0x1

    if-eqz v12, :cond_3d

    if-nez p25, :cond_3b

    if-eqz p22, :cond_3a

    goto :goto_37

    :cond_3a
    move/from16 p0, v0

    goto :goto_38

    :cond_3b
    :goto_37
    if-nez v9, :cond_3a

    move/from16 p0, v0

    goto :goto_39

    :goto_38
    array-length v0, v11

    add-int/lit8 v0, v0, -0x1

    if-ne v9, v0, :cond_3e

    :cond_3c
    :goto_39
    move/from16 p3, v2

    move/from16 p4, v3

    move-object/from16 v3, p21

    goto/16 :goto_40

    :cond_3d
    move/from16 p0, v0

    :cond_3e
    invoke-static {v10, v4, v13}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v0

    if-eqz p25, :cond_40

    cmpl-float v9, v0, p0

    if-ltz v9, :cond_3f

    cmpg-float v9, v0, v2

    if-gtz v9, :cond_3f

    move/from16 v9, v27

    goto :goto_3a

    :cond_3f
    const/4 v9, 0x0

    :goto_3a
    if-nez v9, :cond_3c

    :cond_40
    if-eqz p22, :cond_42

    cmpl-float v9, v0, v3

    if-ltz v9, :cond_41

    cmpg-float v9, v0, v22

    if-gtz v9, :cond_41

    move/from16 v9, v27

    goto :goto_3b

    :cond_41
    const/4 v9, 0x0

    :goto_3b
    if-nez v9, :cond_3c

    :cond_42
    cmpl-float v9, v0, v5

    if-ltz v9, :cond_43

    cmpg-float v9, v0, v6

    if-gtz v9, :cond_43

    move/from16 v9, v27

    goto :goto_3c

    :cond_43
    const/4 v9, 0x0

    :goto_3c
    if-eqz v9, :cond_44

    goto :goto_39

    :cond_44
    if-eqz v15, :cond_45

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v17

    move/from16 p3, v2

    move/from16 p4, v3

    shr-long v2, v17, v19

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    move-wide/from16 v17, v2

    int-to-long v2, v9

    shl-long v17, v17, v19

    and-long v2, v2, v20

    or-long v2, v17, v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    goto :goto_3d

    :cond_45
    move/from16 p3, v2

    move/from16 p4, v3

    if-eqz v16, :cond_46

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v2

    shr-long v2, v2, v19

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    sub-float/2addr v2, v0

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v17

    move/from16 p5, v2

    and-long v2, v17, v20

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    move/from16 p5, v2

    int-to-long v2, v3

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    move-wide/from16 v17, v2

    int-to-long v2, v9

    shl-long v17, v17, v19

    and-long v2, v2, v20

    or-long v2, v17, v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    goto :goto_3d

    :cond_46
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v2

    and-long v2, v2, v20

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    move/from16 p5, v2

    int-to-long v2, v3

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    move-wide/from16 v17, v2

    int-to-long v2, v9

    shl-long v17, v17, v19

    and-long v2, v2, v20

    or-long v2, v17, v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->constructor-impl(J)J

    move-result-wide v2

    :goto_3d
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    cmpl-float v3, v0, v26

    if-ltz v3, :cond_47

    cmpg-float v0, v0, v29

    if-gtz v0, :cond_47

    move/from16 v0, v27

    goto :goto_3e

    :cond_47
    const/4 v0, 0x0

    :goto_3e
    if-eqz v0, :cond_48

    move-wide/from16 v17, p11

    goto :goto_3f

    :cond_48
    move-wide/from16 v17, p9

    :goto_3f
    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v0

    move-object/from16 v3, p21

    invoke-interface {v3, v1, v2, v0}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_40
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move v9, v14

    goto/16 :goto_36

    :cond_49
    return-void
.end method

.method public static synthetic drawTrack-GVD57ws$default(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/ui/graphics/drawscope/DrawScope;[FFFJJJJFFFFFFFLbm3;Ldm3;ZZLandroidx/compose/foundation/gestures/Orientation;ZILjava/lang/Object;)V
    .locals 28

    const/high16 v0, 0x20000

    and-int v0, p26, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move/from16 v25, v1

    goto :goto_0

    :cond_0
    move/from16 v25, p23

    :goto_0
    const/high16 v0, 0x40000

    and-int v0, p26, v0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    move-object/from16 v26, v0

    goto :goto_1

    :cond_1
    move-object/from16 v26, p24

    :goto_1
    const/high16 v0, 0x80000

    and-int v0, p26, v0

    if-eqz v0, :cond_2

    move/from16 v27, v1

    :goto_2
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move/from16 v19, p17

    move/from16 v20, p18

    move/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    move/from16 v24, p22

    goto :goto_3

    :cond_2
    move/from16 v27, p25

    goto :goto_2

    :goto_3
    invoke-direct/range {v2 .. v27}, Landroidx/compose/material3/SliderDefaults;->drawTrack-GVD57ws(Landroidx/compose/ui/graphics/drawscope/DrawScope;[FFFJJJJFFFFFFFLbm3;Ldm3;ZZLandroidx/compose/foundation/gestures/Orientation;Z)V

    return-void
.end method

.method private final drawTrackPath-zXTsYAs(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/foundation/gestures/Orientation;JJJFF)V
    .locals 18

    move-wide/from16 v0, p3

    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v2, v6

    const-wide v7, 0xffffffffL

    and-long/2addr v4, v7

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/CornerRadius;->constructor-impl(J)J

    move-result-wide v10

    invoke-static/range {p10 .. p10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static/range {p10 .. p10}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v2, v6

    and-long/2addr v4, v7

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/CornerRadius;->constructor-impl(J)J

    move-result-wide v12

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    move-object/from16 v3, p2

    if-ne v3, v2, :cond_0

    shr-long v2, p5, v6

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    and-long v3, p5, v7

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v4, v6

    and-long/2addr v2, v7

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    move-wide v14, v12

    move-wide v12, v10

    move-wide/from16 v16, v14

    invoke-static/range {v9 .. v17}, Landroidx/compose/ui/geometry/RoundRectKt;->RoundRect-ZAM2FJo(Landroidx/compose/ui/geometry/Rect;JJJJ)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-wide v14, v12

    shr-long v2, p5, v6

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    and-long v3, p5, v7

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v4, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v4, v6

    and-long/2addr v2, v7

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    move-result-object v9

    move-wide/from16 v16, v10

    invoke-static/range {v9 .. v17}, Landroidx/compose/ui/geometry/RoundRectKt;->RoundRect-ZAM2FJo(Landroidx/compose/ui/geometry/Rect;JJJJ)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    :goto_0
    sget-object v2, Landroidx/compose/material3/SliderDefaults;->trackPath:Landroidx/compose/ui/graphics/Path;

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1, v3}, Landroidx/compose/ui/graphics/Path;->addRoundRect$default(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/geometry/RoundRect;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v3, p7

    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawPath-LG529CI$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    invoke-interface {v2}, Landroidx/compose/ui/graphics/Path;->rewind()V

    return-void
.end method

.method public static synthetic e(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p13}, Landroidx/compose/material3/SliderDefaults;->Track_mnvyFg4$lambda$21(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p8}, Landroidx/compose/material3/SliderDefaults;->Track$lambda$13(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroidx/compose/material3/SliderColors;ZLandroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/geometry/Offset;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/SliderDefaults;->Track_4EFweAY$lambda$15$lambda$14(Landroidx/compose/material3/SliderColors;ZLandroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p10}, Landroidx/compose/material3/SliderDefaults;->Thumb_9LiSoMs$lambda$3(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(FLandroidx/compose/material3/RangeSliderState;JJJJFFLbm3;Ldm3;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p14}, Landroidx/compose/material3/SliderDefaults;->TrackImpl_xlyIBlM$lambda$46$lambda$45(FLandroidx/compose/material3/RangeSliderState;JJJJFFLbm3;Ldm3;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(FLandroidx/compose/material3/SliderState;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/material3/SliderDefaults;->TrackImpl_VvwgllI$lambda$29$lambda$28(FLandroidx/compose/material3/SliderState;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/Constraints;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(JLandroidx/compose/material3/SliderPositions;JJJLandroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p9}, Landroidx/compose/material3/SliderDefaults;->Track$lambda$11$lambda$10(JLandroidx/compose/material3/SliderPositions;JJJLandroidx/compose/ui/graphics/drawscope/DrawScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p11}, Landroidx/compose/material3/SliderDefaults;->Thumb_HwbPF3A$lambda$6(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p12}, Landroidx/compose/material3/SliderDefaults;->Track_4EFweAY$lambda$37(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p12}, Landroidx/compose/material3/SliderDefaults;->TrackImpl_xlyIBlM$lambda$47(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/SliderDefaults;->TrackImpl_xlyIBlM$lambda$44$lambda$43$lambda$42(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/material3/SliderDefaults;->TrackImpl_VvwgllI$lambda$29$lambda$28$lambda$27(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFZZIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p15}, Landroidx/compose/material3/SliderDefaults;->TrackImpl_VvwgllI$lambda$32(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFZZIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p12}, Landroidx/compose/material3/SliderDefaults;->Track_4EFweAY$lambda$17(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Landroidx/compose/material3/SliderColors;ZLandroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/geometry/Offset;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/SliderDefaults;->Track_mnvyFg4$lambda$39$lambda$38(Landroidx/compose/material3/SliderColors;ZLandroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Landroidx/compose/material3/SliderColors;ZLandroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/geometry/Offset;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/SliderDefaults;->Track_mnvyFg4$lambda$19$lambda$18(Landroidx/compose/material3/SliderColors;ZLandroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p8}, Landroidx/compose/material3/SliderDefaults;->Track$lambda$33(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Landroidx/compose/material3/SliderColors;ZLandroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/geometry/Offset;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/SliderDefaults;->CenteredTrack_7LSsfP0$lambda$23$lambda$22(Landroidx/compose/material3/SliderColors;ZLandroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderPositions;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZIILandroidx/compose/runtime/Composer;I)Lj59;
    .locals 0

    invoke-static/range {p0 .. p8}, Landroidx/compose/material3/SliderDefaults;->Track$lambda$12(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderPositions;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZIILandroidx/compose/runtime/Composer;I)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Landroidx/compose/material3/SliderColors;ZLandroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/geometry/Offset;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material3/SliderDefaults;->Track_4EFweAY$lambda$35$lambda$34(Landroidx/compose/material3/SliderColors;ZLandroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/geometry/Offset;)Lj59;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final CenteredTrack-7LSsfP0$material3(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFFLandroidx/compose/runtime/Composer;II)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SliderState;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/SliderColors;",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lj59;",
            ">;",
            "Ldm3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "Lj59;",
            ">;FFF",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v15, p11

    move/from16 v0, p12

    const v1, 0x477e04af

    move-object/from16 v2, p10

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v15, 0x6

    move-object/from16 v10, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v15, 0x6

    move-object/from16 v10, p1

    if-nez v2, :cond_2

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v15

    goto :goto_1

    :cond_2
    move v2, v15

    :goto_1
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x30

    :cond_3
    move-object/from16 v4, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v4, v15, 0x30

    if-nez v4, :cond_3

    move-object/from16 v4, p2

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x20

    goto :goto_2

    :cond_5
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v2, v5

    :goto_3
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_7

    or-int/lit16 v2, v2, 0x180

    :cond_6
    move/from16 v7, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v15, 0x180

    if-nez v7, :cond_6

    move/from16 v7, p3

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_4

    :cond_8
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v2, v8

    :goto_5
    and-int/lit16 v8, v15, 0xc00

    if-nez v8, :cond_b

    and-int/lit8 v8, v0, 0x8

    if-nez v8, :cond_9

    move-object/from16 v8, p4

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v8, p4

    :cond_a
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v2, v13

    goto :goto_7

    :cond_b
    move-object/from16 v8, p4

    :goto_7
    and-int/lit16 v13, v15, 0x6000

    if-nez v13, :cond_e

    and-int/lit8 v13, v0, 0x10

    if-nez v13, :cond_c

    move-object/from16 v13, p5

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v13, p5

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v2, v14

    goto :goto_9

    :cond_e
    move-object/from16 v13, p5

    :goto_9
    and-int/lit8 v14, v0, 0x20

    const/high16 v16, 0x30000

    if-eqz v14, :cond_f

    or-int v2, v2, v16

    move-object/from16 v1, p6

    goto :goto_b

    :cond_f
    and-int v16, v15, v16

    move-object/from16 v1, p6

    if-nez v16, :cond_11

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v17, 0x10000

    :goto_a
    or-int v2, v2, v17

    :cond_11
    :goto_b
    and-int/lit8 v17, v0, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_12

    or-int v2, v2, v18

    move/from16 v6, p7

    goto :goto_d

    :cond_12
    and-int v18, v15, v18

    move/from16 v6, p7

    if-nez v18, :cond_14

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v18, 0x80000

    :goto_c
    or-int v2, v2, v18

    :cond_14
    :goto_d
    and-int/lit16 v11, v0, 0x80

    const/high16 v19, 0xc00000

    if-eqz v11, :cond_15

    or-int v2, v2, v19

    move/from16 v1, p8

    goto :goto_f

    :cond_15
    and-int v19, v15, v19

    move/from16 v1, p8

    if-nez v19, :cond_17

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_16

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v19, 0x400000

    :goto_e
    or-int v2, v2, v19

    :cond_17
    :goto_f
    and-int/lit16 v1, v0, 0x100

    const/high16 v19, 0x6000000

    if-eqz v1, :cond_19

    or-int v2, v2, v19

    :cond_18
    move/from16 v19, v1

    move/from16 v1, p9

    goto :goto_11

    :cond_19
    and-int v19, v15, v19

    if-nez v19, :cond_18

    move/from16 v19, v1

    move/from16 v1, p9

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v20, 0x2000000

    :goto_10
    or-int v2, v2, v20

    :goto_11
    and-int/lit16 v1, v0, 0x200

    const/high16 v20, 0x30000000

    if-eqz v1, :cond_1b

    or-int v2, v2, v20

    goto :goto_13

    :cond_1b
    and-int v1, v15, v20

    if-nez v1, :cond_1d

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/high16 v1, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v1, 0x10000000

    :goto_12
    or-int/2addr v2, v1

    :cond_1d
    :goto_13
    const v1, 0x12492493

    and-int/2addr v1, v2

    const v0, 0x12492492

    const/16 v21, 0x0

    const/16 v22, 0x1

    if-eq v1, v0, :cond_1e

    move/from16 v0, v22

    goto :goto_14

    :cond_1e
    move/from16 v0, v21

    :goto_14
    and-int/lit8 v1, v2, 0x1

    invoke-interface {v12, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v15, 0x1

    const v1, -0xe001

    if-eqz v0, :cond_22

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_16

    :cond_1f
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p12, 0x8

    if-eqz v0, :cond_20

    and-int/lit16 v2, v2, -0x1c01

    :cond_20
    and-int/lit8 v0, p12, 0x10

    if-eqz v0, :cond_21

    and-int/2addr v2, v1

    :cond_21
    move/from16 v9, p8

    move v0, v2

    move-object v3, v4

    move v4, v7

    move-object v5, v8

    move-object/from16 v7, p6

    move/from16 v2, p9

    :goto_15
    move v8, v6

    move-object v6, v13

    goto/16 :goto_1a

    :cond_22
    :goto_16
    if-eqz v3, :cond_23

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v4, v0

    :cond_23
    if-eqz v5, :cond_24

    move/from16 v7, v22

    :cond_24
    and-int/lit8 v0, p12, 0x8

    if-eqz v0, :cond_25

    shr-int/lit8 v0, v2, 0x1b

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {v9, v12, v0}, Landroidx/compose/material3/SliderDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SliderColors;

    move-result-object v0

    and-int/lit16 v2, v2, -0x1c01

    move-object v8, v0

    :cond_25
    and-int/lit8 v0, p12, 0x10

    if-eqz v0, :cond_2c

    and-int/lit16 v0, v2, 0x1c00

    xor-int/lit16 v0, v0, 0xc00

    const/16 v3, 0x800

    if-le v0, v3, :cond_26

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_26
    and-int/lit16 v0, v2, 0xc00

    if-ne v0, v3, :cond_28

    :cond_27
    move/from16 v0, v22

    goto :goto_17

    :cond_28
    move/from16 v0, v21

    :goto_17
    and-int/lit16 v3, v2, 0x380

    const/16 v5, 0x100

    if-ne v3, v5, :cond_29

    move/from16 v21, v22

    :cond_29
    or-int v0, v0, v21

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_2a

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v3, v0, :cond_2b

    :cond_2a
    new-instance v3, Lp28;

    invoke-direct {v3, v7, v8}, Lp28;-><init>(ZLandroidx/compose/material3/SliderColors;)V

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2b
    move-object v0, v3

    check-cast v0, Lbm3;

    and-int/2addr v1, v2

    move-object v13, v0

    move v2, v1

    :cond_2c
    if-eqz v14, :cond_2e

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2d

    sget-object v0, Landroidx/compose/material3/SliderDefaults$CenteredTrack$2$1;->INSTANCE:Landroidx/compose/material3/SliderDefaults$CenteredTrack$2$1;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2d
    check-cast v0, Ldm3;

    goto :goto_18

    :cond_2e
    move-object/from16 v0, p6

    :goto_18
    if-eqz v17, :cond_2f

    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getThumbTrackGapSize$p()F

    move-result v1

    move v6, v1

    :cond_2f
    if-eqz v11, :cond_30

    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getTrackInsideCornerSize$p()F

    move-result v1

    goto :goto_19

    :cond_30
    move/from16 v1, p8

    :goto_19
    if-eqz v19, :cond_31

    sget-object v3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v3

    move v5, v7

    move-object v7, v0

    move v0, v2

    move v2, v3

    move-object v3, v4

    move v4, v5

    move v9, v1

    move-object v5, v8

    goto/16 :goto_15

    :cond_31
    move v9, v1

    move-object v3, v4

    move v4, v7

    move-object v5, v8

    move-object v7, v0

    move v0, v2

    move v8, v6

    move-object v6, v13

    move/from16 v2, p9

    :goto_1a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, -0x1

    const-string v11, "androidx.compose.material3.SliderDefaults.CenteredTrack (Slider.kt:1557)"

    const v13, 0x477e04af

    invoke-static {v13, v0, v1, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_32
    and-int/lit8 v1, v0, 0xe

    or-int v1, v1, v20

    shr-int/lit8 v11, v0, 0x15

    and-int/lit8 v11, v11, 0x70

    or-int/2addr v1, v11

    shl-int/lit8 v11, v0, 0x3

    and-int/lit16 v13, v11, 0x380

    or-int/2addr v1, v13

    and-int/lit16 v13, v11, 0x1c00

    or-int/2addr v1, v13

    const v13, 0xe000

    and-int/2addr v13, v11

    or-int/2addr v1, v13

    const/high16 v13, 0x70000

    and-int/2addr v13, v11

    or-int/2addr v1, v13

    const/high16 v13, 0x380000

    and-int/2addr v13, v11

    or-int/2addr v1, v13

    const/high16 v13, 0x1c00000

    and-int/2addr v13, v11

    or-int/2addr v1, v13

    const/high16 v13, 0xe000000

    and-int/2addr v11, v13

    or-int v13, v1, v11

    shr-int/lit8 v0, v0, 0x18

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v14, v0, 0x6

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/SliderDefaults;->TrackImpl-VvwgllI(Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFZZLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_33
    move-object v11, v3

    move v1, v8

    move-object v0, v12

    move v3, v2

    move v12, v4

    move-object v8, v5

    move v2, v9

    goto :goto_1b

    :cond_34
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v2, p8

    move/from16 v3, p9

    move-object v11, v4

    move v1, v6

    move-object v0, v12

    move-object v6, v13

    move v12, v7

    move-object/from16 v7, p6

    :goto_1b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_35

    new-instance v0, Lq28;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v5, p12

    move v4, v15

    invoke-direct/range {v0 .. v12}, Lq28;-><init>(FFFIILbm3;Ldm3;Landroidx/compose/material3/SliderColors;Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Z)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_35
    return-void
.end method

.method public final Thumb-9LiSoMs(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJLandroidx/compose/runtime/Composer;II)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v8, p8

    const v0, -0x114d4821

    move-object/from16 v3, p7

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    and-int/lit8 v4, p9, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v8, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v8, 0x6

    if-nez v4, :cond_2

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v8

    goto :goto_1

    :cond_2
    move v4, v8

    :goto_1
    and-int/lit8 v7, p9, 0x2

    if-eqz v7, :cond_4

    or-int/lit8 v4, v4, 0x30

    :cond_3
    move-object/from16 v9, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v9, v8, 0x30

    if-nez v9, :cond_3

    move-object/from16 v9, p2

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/16 v10, 0x20

    goto :goto_2

    :cond_5
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v4, v10

    :goto_3
    and-int/lit16 v10, v8, 0x180

    if-nez v10, :cond_8

    and-int/lit8 v10, p9, 0x4

    if-nez v10, :cond_6

    move-object/from16 v10, p3

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v10, p3

    :cond_7
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v4, v11

    goto :goto_5

    :cond_8
    move-object/from16 v10, p3

    :goto_5
    and-int/lit8 v11, p9, 0x8

    if-eqz v11, :cond_a

    or-int/lit16 v4, v4, 0xc00

    :cond_9
    move/from16 v12, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v12, v8, 0xc00

    if-nez v12, :cond_9

    move/from16 v12, p4

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v13, 0x800

    goto :goto_6

    :cond_b
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v4, v13

    :goto_7
    and-int/lit8 v13, p9, 0x10

    if-eqz v13, :cond_d

    or-int/lit16 v4, v4, 0x6000

    :cond_c
    move-wide/from16 v14, p5

    goto :goto_9

    :cond_d
    and-int/lit16 v14, v8, 0x6000

    if-nez v14, :cond_c

    move-wide/from16 v14, p5

    invoke-interface {v3, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_e

    const/16 v16, 0x4000

    goto :goto_8

    :cond_e
    const/16 v16, 0x2000

    :goto_8
    or-int v4, v4, v16

    :goto_9
    and-int/lit8 v16, p9, 0x20

    const/high16 v17, 0x30000

    if-eqz v16, :cond_f

    or-int v4, v4, v17

    goto :goto_b

    :cond_f
    and-int v16, v8, v17

    if-nez v16, :cond_11

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v4, v4, v16

    :cond_11
    :goto_b
    const v16, 0x12493

    and-int v5, v4, v16

    const v6, 0x12492

    const/4 v0, 0x0

    const/16 v18, 0x1

    if-eq v5, v6, :cond_12

    move/from16 v5, v18

    goto :goto_c

    :cond_12
    move v5, v0

    :goto_c
    and-int/lit8 v6, v4, 0x1

    invoke-interface {v3, v5, v6}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v5, v8, 0x1

    if-eqz v5, :cond_15

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_d

    :cond_13
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_14

    and-int/lit16 v4, v4, -0x381

    :cond_14
    move-wide/from16 v19, v14

    goto :goto_e

    :cond_15
    :goto_d
    if-eqz v7, :cond_16

    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v9, v5

    :cond_16
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_17

    shr-int/lit8 v5, v4, 0xf

    and-int/lit8 v5, v5, 0xe

    invoke-virtual {v1, v3, v5}, Landroidx/compose/material3/SliderDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SliderColors;

    move-result-object v5

    and-int/lit16 v4, v4, -0x381

    move-object v10, v5

    :cond_17
    if-eqz v11, :cond_18

    move/from16 v12, v18

    :cond_18
    if-eqz v13, :cond_14

    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getThumbSize$p()J

    move-result-wide v5

    move-wide/from16 v19, v5

    :goto_e
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, -0x1

    const-string v6, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1212)"

    const v7, -0x114d4821

    invoke-static {v7, v4, v5, v6}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_19
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v7

    if-ne v5, v7, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v5

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1a
    check-cast v5, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    and-int/lit8 v4, v4, 0xe

    const/4 v7, 0x4

    if-ne v4, v7, :cond_1b

    goto :goto_f

    :cond_1b
    move/from16 v18, v0

    :goto_f
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v7

    const/4 v11, 0x0

    if-nez v18, :cond_1c

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v7, v6, :cond_1d

    :cond_1c
    new-instance v7, Landroidx/compose/material3/SliderDefaults$Thumb$1$1;

    invoke-direct {v7, v2, v5, v11}, Landroidx/compose/material3/SliderDefaults$Thumb$1$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Le02;)V

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1d
    check-cast v7, Lbm3;

    invoke-static {v2, v7, v3, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v21

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v22, 0x0

    invoke-static/range {v19 .. v24}, Landroidx/compose/ui/unit/DpSize;->copy-DwJknco$default(JFFILjava/lang/Object;)J

    move-result-wide v4

    goto :goto_10

    :cond_1e
    move-wide/from16 v4, v19

    :goto_10
    invoke-static {v9, v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->size-6HolHcs(Landroidx/compose/ui/Modifier;J)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v2, v0, v5, v11}, Landroidx/compose/foundation/HoverableKt;->hoverable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-virtual {v10, v12}, Landroidx/compose/material3/SliderColors;->thumbColor-vNxB06k$material3(Z)J

    move-result-wide v5

    sget-object v7, Landroidx/compose/material3/tokens/SliderTokens;->INSTANCE:Landroidx/compose/material3/tokens/SliderTokens;

    invoke-virtual {v7}, Landroidx/compose/material3/tokens/SliderTokens;->getHandleShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v7

    const/4 v11, 0x6

    invoke-static {v7, v3, v11}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v4, v3, v0}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1f
    move-wide/from16 v6, v19

    :goto_11
    move-object v4, v10

    move v5, v12

    goto :goto_12

    :cond_20
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide v6, v14

    goto :goto_11

    :goto_12
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v10

    if-eqz v10, :cond_21

    new-instance v0, Lg28;

    move-object v3, v9

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lg28;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJII)V

    invoke-interface {v10, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_21
    return-void
.end method

.method public final Thumb-HwbPF3A$material3(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJLandroidx/compose/runtime/Composer;II)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v9, p9

    const v0, -0x3507f785    # -8127549.5f

    move-object/from16 v3, p8

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v3

    and-int/lit8 v4, p10, 0x1

    if-eqz v4, :cond_0

    or-int/lit8 v4, v9, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v9, 0x6

    if-nez v4, :cond_2

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v9

    goto :goto_1

    :cond_2
    move v4, v9

    :goto_1
    and-int/lit8 v7, p10, 0x2

    if-eqz v7, :cond_4

    or-int/lit8 v4, v4, 0x30

    :cond_3
    move-object/from16 v7, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v9, 0x30

    if-nez v7, :cond_3

    move-object/from16 v7, p2

    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x20

    goto :goto_2

    :cond_5
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v4, v8

    :goto_3
    and-int/lit8 v8, p10, 0x4

    if-eqz v8, :cond_7

    or-int/lit16 v4, v4, 0x180

    :cond_6
    move-object/from16 v10, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v10, v9, 0x180

    if-nez v10, :cond_6

    move-object/from16 v10, p3

    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x100

    goto :goto_4

    :cond_8
    const/16 v11, 0x80

    :goto_4
    or-int/2addr v4, v11

    :goto_5
    and-int/lit16 v11, v9, 0xc00

    if-nez v11, :cond_b

    and-int/lit8 v11, p10, 0x8

    if-nez v11, :cond_9

    move-object/from16 v11, p4

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/16 v12, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v11, p4

    :cond_a
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v4, v12

    goto :goto_7

    :cond_b
    move-object/from16 v11, p4

    :goto_7
    and-int/lit8 v12, p10, 0x10

    if-eqz v12, :cond_d

    or-int/lit16 v4, v4, 0x6000

    :cond_c
    move/from16 v13, p5

    goto :goto_9

    :cond_d
    and-int/lit16 v13, v9, 0x6000

    if-nez v13, :cond_c

    move/from16 v13, p5

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v14

    if-eqz v14, :cond_e

    const/16 v14, 0x4000

    goto :goto_8

    :cond_e
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v4, v14

    :goto_9
    and-int/lit8 v14, p10, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_f

    or-int/2addr v4, v15

    move-wide/from16 v5, p6

    goto :goto_b

    :cond_f
    and-int/2addr v15, v9

    move-wide/from16 v5, p6

    if-nez v15, :cond_11

    invoke-interface {v3, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v4, v4, v16

    :cond_11
    :goto_b
    and-int/lit8 v16, p10, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_12

    or-int v4, v4, v17

    goto :goto_d

    :cond_12
    and-int v16, v9, v17

    if-nez v16, :cond_14

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_13

    const/high16 v16, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v16, 0x80000

    :goto_c
    or-int v4, v4, v16

    :cond_14
    :goto_d
    const v16, 0x92493

    and-int v15, v4, v16

    const v0, 0x92492

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v15, v0, :cond_15

    move v0, v6

    goto :goto_e

    :cond_15
    move v0, v5

    :goto_e
    and-int/lit8 v15, v4, 0x1

    invoke-interface {v3, v0, v15}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_18

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_f

    :cond_16
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p10, 0x8

    if-eqz v0, :cond_17

    and-int/lit16 v4, v4, -0x1c01

    :cond_17
    move-wide/from16 v18, p6

    goto :goto_10

    :cond_18
    :goto_f
    if-eqz v8, :cond_19

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v10, v0

    :cond_19
    and-int/lit8 v0, p10, 0x8

    if-eqz v0, :cond_1a

    shr-int/lit8 v0, v4, 0x12

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {v1, v3, v0}, Landroidx/compose/material3/SliderDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SliderColors;

    move-result-object v0

    and-int/lit16 v4, v4, -0x1c01

    move-object v11, v0

    :cond_1a
    if-eqz v12, :cond_1b

    move v13, v6

    :cond_1b
    if-eqz v14, :cond_17

    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getThumbSize$p()J

    move-result-wide v14

    move-wide/from16 v18, v14

    :goto_10
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, -0x1

    const-string v8, "androidx.compose.material3.SliderDefaults.Thumb (Slider.kt:1265)"

    const v12, -0x3507f785    # -8127549.5f

    invoke-static {v12, v4, v0, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_1c
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v0, v12, :cond_1d

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-result-object v0

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1d
    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    and-int/lit8 v4, v4, 0xe

    const/4 v15, 0x4

    if-ne v4, v15, :cond_1e

    goto :goto_11

    :cond_1e
    move v6, v5

    :goto_11
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    const/4 v14, 0x0

    if-nez v6, :cond_1f

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v12, v6, :cond_20

    :cond_1f
    new-instance v12, Landroidx/compose/material3/SliderDefaults$Thumb$3$1;

    invoke-direct {v12, v2, v0, v14}, Landroidx/compose/material3/SliderDefaults$Thumb$3$1;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Le02;)V

    invoke-interface {v3, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_20
    check-cast v12, Lbm3;

    invoke-static {v2, v12, v3, v4}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lbm3;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {v7}, Landroidx/compose/material3/SliderState;->getOrientation$material3()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v0

    sget-object v4, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_21

    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result v0

    div-float/2addr v0, v6

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v21

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v23}, Landroidx/compose/ui/unit/DpSize;->copy-DwJknco$default(JFFILjava/lang/Object;)J

    move-result-wide v15

    :goto_12
    move-wide v0, v15

    goto :goto_13

    :cond_21
    invoke-static/range {v18 .. v19}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v0

    div-float/2addr v0, v6

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v20

    const/16 v22, 0x2

    const/16 v23, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v23}, Landroidx/compose/ui/unit/DpSize;->copy-DwJknco$default(JFFILjava/lang/Object;)J

    move-result-wide v15

    goto :goto_12

    :cond_22
    move-wide/from16 v0, v18

    :goto_13
    invoke-static {v10, v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->size-6HolHcs(Landroidx/compose/ui/Modifier;J)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v2, v5, v1, v14}, Landroidx/compose/foundation/HoverableKt;->hoverable$default(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-virtual {v11, v13}, Landroidx/compose/material3/SliderColors;->thumbColor-vNxB06k$material3(Z)J

    move-result-wide v14

    sget-object v1, Landroidx/compose/material3/tokens/SliderTokens;->INSTANCE:Landroidx/compose/material3/tokens/SliderTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/SliderTokens;->getHandleShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;

    move-result-object v1

    const/4 v4, 0x6

    invoke-static {v1, v3, v4}, Landroidx/compose/material3/ShapesKt;->getValue(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    invoke-static {v0, v14, v15, v1}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0, v3, v5}, Landroidx/compose/foundation/layout/SpacerKt;->Spacer(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_23
    move-wide/from16 v7, v18

    :goto_14
    move-object v4, v10

    move-object v5, v11

    move v6, v13

    goto :goto_15

    :cond_24
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide/from16 v7, p6

    goto :goto_14

    :goto_15
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v11

    if-eqz v11, :cond_25

    new-instance v0, Lf28;

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lf28;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJII)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_25
    return-void
.end method

.method public final synthetic Track(Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZLandroidx/compose/runtime/Composer;II)V
    .locals 14
    .annotation runtime Lul2;
    .end annotation

    move/from16 v12, p6

    const v1, -0x606eb929

    move-object/from16 v2, p5

    .line 391
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    and-int/lit8 v2, p7, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v12, 0x6

    move v3, v2

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0x6

    if-nez v2, :cond_2

    invoke-interface {v9, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v12

    goto :goto_1

    :cond_2
    move v3, v12

    :goto_1
    and-int/lit8 v4, p7, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v5, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v5, v12, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p2

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :goto_3
    and-int/lit16 v6, v12, 0x180

    if-nez v6, :cond_8

    and-int/lit8 v6, p7, 0x4

    if-nez v6, :cond_6

    move-object/from16 v6, p3

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v6, p3

    :cond_7
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v3, v7

    goto :goto_5

    :cond_8
    move-object/from16 v6, p3

    :goto_5
    and-int/lit8 v7, p7, 0x8

    if-eqz v7, :cond_a

    or-int/lit16 v3, v3, 0xc00

    :cond_9
    move/from16 v8, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v8, v12, 0xc00

    if-nez v8, :cond_9

    move/from16 v8, p4

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x800

    goto :goto_6

    :cond_b
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v3, v10

    :goto_7
    and-int/lit8 v10, p7, 0x10

    if-eqz v10, :cond_c

    or-int/lit16 v3, v3, 0x6000

    goto :goto_9

    :cond_c
    and-int/lit16 v10, v12, 0x6000

    if-nez v10, :cond_e

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x4000

    goto :goto_8

    :cond_d
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v3, v10

    :cond_e
    :goto_9
    and-int/lit16 v10, v3, 0x2493

    const/16 v11, 0x2492

    const/4 v13, 0x1

    if-eq v10, v11, :cond_f

    move v10, v13

    goto :goto_a

    :cond_f
    const/4 v10, 0x0

    :goto_a
    and-int/lit8 v11, v3, 0x1

    invoke-interface {v9, v10, v11}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v10, v12, 0x1

    if-eqz v10, :cond_13

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_10

    goto :goto_b

    .line 392
    :cond_10
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v4, p7, 0x4

    if-eqz v4, :cond_11

    and-int/lit16 v3, v3, -0x381

    :cond_11
    move-object v4, v5

    move-object v5, v6

    move v6, v3

    :cond_12
    move v3, v8

    goto :goto_e

    :cond_13
    :goto_b
    if-eqz v4, :cond_14

    .line 393
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_c

    :cond_14
    move-object v4, v5

    :goto_c
    and-int/lit8 v5, p7, 0x4

    if-eqz v5, :cond_15

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xe

    .line 394
    invoke-virtual {p0, v9, v5}, Landroidx/compose/material3/SliderDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SliderColors;

    move-result-object v5

    and-int/lit16 v3, v3, -0x381

    goto :goto_d

    :cond_15
    move-object v5, v6

    :goto_d
    move v6, v3

    if-eqz v7, :cond_12

    move v3, v13

    .line 395
    :goto_e
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, -0x1

    const-string v8, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1688)"

    invoke-static {v1, v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 396
    :cond_16
    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getThumbTrackGapSize$p()F

    move-result v7

    .line 397
    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getTrackInsideCornerSize$p()F

    move-result v8

    and-int/lit8 v1, v6, 0xe

    const/high16 v10, 0xd80000

    or-int/2addr v1, v10

    and-int/lit8 v10, v6, 0x70

    or-int/2addr v1, v10

    shr-int/lit8 v10, v6, 0x3

    and-int/lit16 v10, v10, 0x380

    or-int/2addr v1, v10

    shl-int/lit8 v10, v6, 0x3

    and-int/lit16 v10, v10, 0x1c00

    or-int/2addr v1, v10

    const/high16 v10, 0xe000000

    shl-int/lit8 v6, v6, 0xc

    and-int/2addr v6, v10

    or-int v10, v1, v6

    const/16 v11, 0x30

    move-object v2, v4

    move-object v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 398
    invoke-virtual/range {v0 .. v11}, Landroidx/compose/material3/SliderDefaults;->Track-4EFweAY(Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_17
    move v5, v3

    move-object v3, v2

    goto :goto_f

    .line 399
    :cond_18
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v3, v5

    move-object v4, v6

    move v5, v8

    .line 400
    :goto_f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_19

    new-instance v0, Lm28;

    move-object v1, p0

    move-object v2, p1

    move/from16 v7, p7

    move v6, v12

    invoke-direct/range {v0 .. v7}, Lm28;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZII)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_19
    return-void
.end method

.method public final Track(Landroidx/compose/material3/SliderPositions;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZLandroidx/compose/runtime/Composer;II)V
    .locals 17
    .annotation runtime Lul2;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v6, p6

    const v0, -0x5c30f9c9

    move-object/from16 v2, p5

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v2

    and-int/lit8 v3, p7, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v6, 0x6

    move-object/from16 v10, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v6, 0x6

    move-object/from16 v10, p1

    if-nez v3, :cond_2

    invoke-interface {v2, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v6

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_1
    and-int/lit8 v5, p7, 0x2

    if-eqz v5, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v7, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v7, v6, 0x30

    if-nez v7, :cond_3

    move-object/from16 v7, p2

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x20

    goto :goto_2

    :cond_5
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v3, v8

    :goto_3
    and-int/lit16 v8, v6, 0x180

    if-nez v8, :cond_8

    and-int/lit8 v8, p7, 0x4

    if-nez v8, :cond_6

    move-object/from16 v8, p3

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v8, p3

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v3, v9

    goto :goto_5

    :cond_8
    move-object/from16 v8, p3

    :goto_5
    and-int/lit8 v9, p7, 0x8

    if-eqz v9, :cond_a

    or-int/lit16 v3, v3, 0xc00

    :cond_9
    move/from16 v11, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v11, v6, 0xc00

    if-nez v11, :cond_9

    move/from16 v11, p4

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0x800

    goto :goto_6

    :cond_b
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v3, v12

    :goto_7
    and-int/lit8 v12, p7, 0x10

    if-eqz v12, :cond_c

    or-int/lit16 v3, v3, 0x6000

    goto :goto_9

    :cond_c
    and-int/lit16 v12, v6, 0x6000

    if-nez v12, :cond_e

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/16 v12, 0x4000

    goto :goto_8

    :cond_d
    const/16 v12, 0x2000

    :goto_8
    or-int/2addr v3, v12

    :cond_e
    :goto_9
    and-int/lit16 v12, v3, 0x2493

    const/16 v13, 0x2492

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v12, v13, :cond_f

    move v12, v15

    goto :goto_a

    :cond_f
    move v12, v14

    :goto_a
    and-int/lit8 v13, v3, 0x1

    invoke-interface {v2, v12, v13}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v12, v6, 0x1

    if-eqz v12, :cond_13

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v12

    if-eqz v12, :cond_10

    goto :goto_b

    :cond_10
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v5, p7, 0x4

    if-eqz v5, :cond_11

    and-int/lit16 v3, v3, -0x381

    :cond_11
    move-object v5, v8

    move v8, v3

    move-object v3, v5

    move-object v5, v7

    :cond_12
    move v7, v11

    goto :goto_d

    :cond_13
    :goto_b
    if-eqz v5, :cond_14

    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_c

    :cond_14
    move-object v5, v7

    :goto_c
    and-int/lit8 v7, p7, 0x4

    if-eqz v7, :cond_15

    shr-int/lit8 v7, v3, 0xc

    and-int/lit8 v7, v7, 0xe

    invoke-virtual {v1, v2, v7}, Landroidx/compose/material3/SliderDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SliderColors;

    move-result-object v7

    and-int/lit16 v3, v3, -0x381

    move-object v8, v7

    :cond_15
    move-object v7, v8

    move v8, v3

    move-object v3, v7

    if-eqz v9, :cond_12

    move v7, v15

    :goto_d
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v9

    if-eqz v9, :cond_16

    const/4 v9, -0x1

    const-string v11, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1318)"

    invoke-static {v0, v8, v9, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_16
    move v0, v8

    invoke-virtual {v3, v7, v14}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3(ZZ)J

    move-result-wide v8

    invoke-virtual {v3, v7, v15}, Landroidx/compose/material3/SliderColors;->trackColor-WaAFU9c$material3(ZZ)J

    move-result-wide v11

    move v4, v14

    invoke-virtual {v3, v7, v4}, Landroidx/compose/material3/SliderColors;->tickColor-WaAFU9c$material3(ZZ)J

    move-result-wide v13

    move-object/from16 p2, v5

    invoke-virtual {v3, v7, v15}, Landroidx/compose/material3/SliderColors;->tickColor-WaAFU9c$material3(ZZ)J

    move-result-wide v4

    move/from16 p3, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 p4, v3

    move-object/from16 v3, p2

    invoke-static {v3, v0, v15, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {}, Landroidx/compose/material3/SliderKt;->getTrackHeight()F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v2, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    and-int/lit8 v15, p3, 0xe

    move/from16 p2, v1

    const/4 v1, 0x4

    if-ne v15, v1, :cond_17

    const/4 v15, 0x1

    goto :goto_e

    :cond_17
    const/4 v15, 0x0

    :goto_e
    or-int v1, p2, v15

    invoke-interface {v2, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v15

    or-int/2addr v1, v15

    invoke-interface {v2, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v15

    or-int/2addr v1, v15

    invoke-interface {v2, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v15

    or-int/2addr v1, v15

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v15

    if-nez v1, :cond_18

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v15, v1, :cond_19

    :cond_18
    move v15, v7

    goto :goto_f

    :cond_19
    move v1, v7

    const/4 v4, 0x0

    goto :goto_10

    :goto_f
    new-instance v7, Ly28;

    move v1, v15

    move-wide v15, v4

    const/4 v4, 0x0

    invoke-direct/range {v7 .. v16}, Ly28;-><init>(JLandroidx/compose/material3/SliderPositions;JJJ)V

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v15, v7

    :goto_10
    check-cast v15, Lnl3;

    invoke-static {v0, v15, v2, v4}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lnl3;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1a
    move-object/from16 v4, p4

    move v5, v1

    goto :goto_11

    :cond_1b
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v3, v7

    move-object v4, v8

    move v5, v11

    :goto_11
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_1c

    new-instance v0, Le28;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Le28;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderPositions;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZII)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_1c
    return-void
.end method

.method public final synthetic Track(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZLandroidx/compose/runtime/Composer;II)V
    .locals 14
    .annotation runtime Lul2;
    .end annotation

    move/from16 v12, p6

    const v1, 0x2360eb1e

    move-object/from16 v2, p5

    .line 381
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v9

    and-int/lit8 v2, p7, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v12, 0x6

    move v3, v2

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0x6

    if-nez v2, :cond_2

    invoke-interface {v9, p1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v12

    goto :goto_1

    :cond_2
    move v3, v12

    :goto_1
    and-int/lit8 v4, p7, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v5, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v5, v12, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p2

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :goto_3
    and-int/lit16 v6, v12, 0x180

    if-nez v6, :cond_8

    and-int/lit8 v6, p7, 0x4

    if-nez v6, :cond_6

    move-object/from16 v6, p3

    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x100

    goto :goto_4

    :cond_6
    move-object/from16 v6, p3

    :cond_7
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v3, v7

    goto :goto_5

    :cond_8
    move-object/from16 v6, p3

    :goto_5
    and-int/lit8 v7, p7, 0x8

    if-eqz v7, :cond_a

    or-int/lit16 v3, v3, 0xc00

    :cond_9
    move/from16 v8, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v8, v12, 0xc00

    if-nez v8, :cond_9

    move/from16 v8, p4

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_b

    const/16 v10, 0x800

    goto :goto_6

    :cond_b
    const/16 v10, 0x400

    :goto_6
    or-int/2addr v3, v10

    :goto_7
    and-int/lit8 v10, p7, 0x10

    if-eqz v10, :cond_c

    or-int/lit16 v3, v3, 0x6000

    goto :goto_9

    :cond_c
    and-int/lit16 v10, v12, 0x6000

    if-nez v10, :cond_e

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v10, 0x4000

    goto :goto_8

    :cond_d
    const/16 v10, 0x2000

    :goto_8
    or-int/2addr v3, v10

    :cond_e
    :goto_9
    and-int/lit16 v10, v3, 0x2493

    const/16 v11, 0x2492

    const/4 v13, 0x1

    if-eq v10, v11, :cond_f

    move v10, v13

    goto :goto_a

    :cond_f
    const/4 v10, 0x0

    :goto_a
    and-int/lit8 v11, v3, 0x1

    invoke-interface {v9, v10, v11}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v10, v12, 0x1

    if-eqz v10, :cond_13

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v10

    if-eqz v10, :cond_10

    goto :goto_b

    .line 382
    :cond_10
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v4, p7, 0x4

    if-eqz v4, :cond_11

    and-int/lit16 v3, v3, -0x381

    :cond_11
    move-object v4, v5

    move-object v5, v6

    move v6, v3

    :cond_12
    move v3, v8

    goto :goto_e

    :cond_13
    :goto_b
    if-eqz v4, :cond_14

    .line 383
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_c

    :cond_14
    move-object v4, v5

    :goto_c
    and-int/lit8 v5, p7, 0x4

    if-eqz v5, :cond_15

    shr-int/lit8 v5, v3, 0xc

    and-int/lit8 v5, v5, 0xe

    .line 384
    invoke-virtual {p0, v9, v5}, Landroidx/compose/material3/SliderDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SliderColors;

    move-result-object v5

    and-int/lit16 v3, v3, -0x381

    goto :goto_d

    :cond_15
    move-object v5, v6

    :goto_d
    move v6, v3

    if-eqz v7, :cond_12

    move v3, v13

    .line 385
    :goto_e
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, -0x1

    const-string v8, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1400)"

    invoke-static {v1, v6, v7, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 386
    :cond_16
    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getThumbTrackGapSize$p()F

    move-result v7

    .line 387
    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getTrackInsideCornerSize$p()F

    move-result v8

    and-int/lit8 v1, v6, 0xe

    const/high16 v10, 0xd80000

    or-int/2addr v1, v10

    and-int/lit8 v10, v6, 0x70

    or-int/2addr v1, v10

    shr-int/lit8 v10, v6, 0x3

    and-int/lit16 v10, v10, 0x380

    or-int/2addr v1, v10

    shl-int/lit8 v10, v6, 0x3

    and-int/lit16 v10, v10, 0x1c00

    or-int/2addr v1, v10

    const/high16 v10, 0xe000000

    shl-int/lit8 v6, v6, 0xc

    and-int/2addr v6, v10

    or-int v10, v1, v6

    const/16 v11, 0x30

    move-object v2, v4

    move-object v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 388
    invoke-virtual/range {v0 .. v11}, Landroidx/compose/material3/SliderDefaults;->Track-4EFweAY(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_17
    move v5, v3

    move-object v3, v2

    goto :goto_f

    .line 389
    :cond_18
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v3, v5

    move-object v4, v6

    move v5, v8

    .line 390
    :goto_f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v8

    if-eqz v8, :cond_19

    new-instance v0, Ld28;

    move-object v1, p0

    move-object v2, p1

    move/from16 v7, p7

    move v6, v12

    invoke-direct/range {v0 .. v7}, Ld28;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZII)V

    invoke-interface {v8, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_19
    return-void
.end method

.method public final Track-4EFweAY(Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFLandroidx/compose/runtime/Composer;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/RangeSliderState;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/SliderColors;",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lj59;",
            ">;",
            "Ldm3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "Lj59;",
            ">;FF",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v12, p10

    move/from16 v13, p11

    const v1, -0x204b9484

    move-object/from16 v2, p9

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v12, 0x6

    move v3, v2

    move-object/from16 v2, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0x6

    if-nez v2, :cond_2

    move-object/from16 v2, p1

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v12

    goto :goto_1

    :cond_2
    move-object/from16 v2, p1

    move v3, v12

    :goto_1
    and-int/lit8 v4, v13, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v5, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v5, v12, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p2

    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :goto_3
    and-int/lit8 v6, v13, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move/from16 v8, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v8, v12, 0x180

    if-nez v8, :cond_6

    move/from16 v8, p3

    invoke-interface {v10, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x100

    goto :goto_4

    :cond_8
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v3, v9

    :goto_5
    and-int/lit16 v9, v12, 0xc00

    if-nez v9, :cond_b

    and-int/lit8 v9, v13, 0x8

    if-nez v9, :cond_9

    move-object/from16 v9, p4

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/16 v14, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v9, p4

    :cond_a
    const/16 v14, 0x400

    :goto_6
    or-int/2addr v3, v14

    goto :goto_7

    :cond_b
    move-object/from16 v9, p4

    :goto_7
    and-int/lit16 v14, v12, 0x6000

    if-nez v14, :cond_e

    and-int/lit8 v14, v13, 0x10

    if-nez v14, :cond_c

    move-object/from16 v14, p5

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v14, p5

    :cond_d
    const/16 v15, 0x2000

    :goto_8
    or-int/2addr v3, v15

    goto :goto_9

    :cond_e
    move-object/from16 v14, p5

    :goto_9
    and-int/lit8 v15, v13, 0x20

    const/high16 v16, 0x30000

    if-eqz v15, :cond_f

    or-int v3, v3, v16

    move-object/from16 v1, p6

    goto :goto_b

    :cond_f
    and-int v16, v12, v16

    move-object/from16 v1, p6

    if-nez v16, :cond_11

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v17, 0x10000

    :goto_a
    or-int v3, v3, v17

    :cond_11
    :goto_b
    and-int/lit8 v17, v13, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_12

    or-int v3, v3, v18

    move/from16 v7, p7

    goto :goto_d

    :cond_12
    and-int v18, v12, v18

    move/from16 v7, p7

    if-nez v18, :cond_14

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v18, 0x80000

    :goto_c
    or-int v3, v3, v18

    :cond_14
    :goto_d
    and-int/lit16 v11, v13, 0x80

    const/high16 v19, 0xc00000

    if-eqz v11, :cond_15

    or-int v3, v3, v19

    move/from16 v1, p8

    goto :goto_f

    :cond_15
    and-int v19, v12, v19

    move/from16 v1, p8

    if-nez v19, :cond_17

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_16

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v19, 0x400000

    :goto_e
    or-int v3, v3, v19

    :cond_17
    :goto_f
    and-int/lit16 v1, v13, 0x100

    const/high16 v19, 0x6000000

    if-eqz v1, :cond_18

    or-int v3, v3, v19

    goto :goto_11

    :cond_18
    and-int v1, v12, v19

    if-nez v1, :cond_1a

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/high16 v1, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v1, 0x2000000

    :goto_10
    or-int/2addr v3, v1

    :cond_1a
    :goto_11
    const v1, 0x2492493

    and-int/2addr v1, v3

    const v2, 0x2492492

    const/16 v19, 0x0

    const/16 v20, 0x1

    if-eq v1, v2, :cond_1b

    move/from16 v1, v20

    goto :goto_12

    :cond_1b
    move/from16 v1, v19

    :goto_12
    and-int/lit8 v2, v3, 0x1

    invoke-interface {v10, v1, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v12, 0x1

    const v2, -0xe001

    if-eqz v1, :cond_1f

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_13

    :cond_1c
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v13, 0x8

    if-eqz v1, :cond_1d

    and-int/lit16 v3, v3, -0x1c01

    :cond_1d
    and-int/lit8 v1, v13, 0x10

    if-eqz v1, :cond_1e

    and-int/2addr v3, v2

    :cond_1e
    move v1, v3

    move-object v3, v5

    move v4, v8

    move-object v5, v9

    move-object v6, v14

    move/from16 v9, p8

    move v8, v7

    move-object/from16 v7, p6

    goto/16 :goto_16

    :cond_1f
    :goto_13
    if-eqz v4, :cond_20

    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v5, v1

    :cond_20
    if-eqz v6, :cond_21

    move/from16 v8, v20

    :cond_21
    and-int/lit8 v1, v13, 0x8

    if-eqz v1, :cond_22

    shr-int/lit8 v1, v3, 0x18

    and-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v10, v1}, Landroidx/compose/material3/SliderDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SliderColors;

    move-result-object v1

    and-int/lit16 v3, v3, -0x1c01

    move-object v9, v1

    :cond_22
    and-int/lit8 v1, v13, 0x10

    if-eqz v1, :cond_29

    and-int/lit16 v1, v3, 0x1c00

    xor-int/lit16 v1, v1, 0xc00

    const/16 v4, 0x800

    if-le v1, v4, :cond_23

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    :cond_23
    and-int/lit16 v1, v3, 0xc00

    if-ne v1, v4, :cond_25

    :cond_24
    move/from16 v1, v20

    goto :goto_14

    :cond_25
    move/from16 v1, v19

    :goto_14
    and-int/lit16 v4, v3, 0x380

    const/16 v6, 0x100

    if-ne v4, v6, :cond_26

    move/from16 v19, v20

    :cond_26
    or-int v1, v1, v19

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_27

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_28

    :cond_27
    new-instance v4, Lj28;

    invoke-direct {v4, v8, v9}, Lj28;-><init>(ZLandroidx/compose/material3/SliderColors;)V

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_28
    move-object v1, v4

    check-cast v1, Lbm3;

    and-int/2addr v2, v3

    move-object v14, v1

    move v3, v2

    :cond_29
    if-eqz v15, :cond_2b

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2a

    sget-object v1, Landroidx/compose/material3/SliderDefaults$Track$12$1;->INSTANCE:Landroidx/compose/material3/SliderDefaults$Track$12$1;

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2a
    check-cast v1, Ldm3;

    goto :goto_15

    :cond_2b
    move-object/from16 v1, p6

    :goto_15
    if-eqz v17, :cond_2c

    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getThumbTrackGapSize$p()F

    move-result v2

    move v7, v2

    :cond_2c
    if-eqz v11, :cond_2d

    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getTrackInsideCornerSize$p()F

    move-result v2

    move v4, v8

    move-object v6, v14

    move v8, v7

    move-object v7, v1

    move v1, v3

    move-object v3, v5

    move-object v5, v9

    move v9, v2

    goto :goto_16

    :cond_2d
    move v4, v8

    move-object v6, v14

    move v8, v7

    move-object v7, v1

    move v1, v3

    move-object v3, v5

    move-object v5, v9

    move/from16 v9, p8

    :goto_16
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, -0x1

    const-string v11, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1734)"

    const v14, -0x204b9484

    invoke-static {v14, v1, v2, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2e
    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v2

    and-int/lit8 v11, v1, 0xe

    or-int/lit8 v11, v11, 0x30

    shl-int/lit8 v1, v1, 0x3

    and-int/lit16 v14, v1, 0x380

    or-int/2addr v11, v14

    and-int/lit16 v14, v1, 0x1c00

    or-int/2addr v11, v14

    const v14, 0xe000

    and-int/2addr v14, v1

    or-int/2addr v11, v14

    const/high16 v14, 0x70000

    and-int/2addr v14, v1

    or-int/2addr v11, v14

    const/high16 v14, 0x380000

    and-int/2addr v14, v1

    or-int/2addr v11, v14

    const/high16 v14, 0x1c00000

    and-int/2addr v14, v1

    or-int/2addr v11, v14

    const/high16 v14, 0xe000000

    and-int/2addr v14, v1

    or-int/2addr v11, v14

    const/high16 v14, 0x70000000

    and-int/2addr v1, v14

    or-int/2addr v11, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/SliderDefaults;->TrackImpl-xlyIBlM(Landroidx/compose/material3/RangeSliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFLandroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_17

    :cond_2f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object v3, v5

    move v4, v8

    move-object v5, v9

    move-object v6, v14

    move/from16 v9, p8

    move v8, v7

    move-object/from16 v7, p6

    :cond_30
    :goto_17
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_31

    new-instance v0, Lk28;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v10, v12

    move v11, v13

    invoke-direct/range {v0 .. v11}, Lk28;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFII)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_31
    return-void
.end method

.method public final Track-4EFweAY(Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFLandroidx/compose/runtime/Composer;II)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SliderState;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/SliderColors;",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lj59;",
            ">;",
            "Ldm3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "Lj59;",
            ">;FF",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v15, p10

    move/from16 v1, p11

    const v2, 0x2fab503

    move-object/from16 v3, p9

    .line 590
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    or-int/lit8 v3, v15, 0x6

    move v4, v3

    move-object/from16 v3, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v3, v15, 0x6

    if-nez v3, :cond_2

    move-object/from16 v3, p1

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v15

    goto :goto_1

    :cond_2
    move-object/from16 v3, p1

    move v4, v15

    :goto_1
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_4

    or-int/lit8 v4, v4, 0x30

    :cond_3
    move-object/from16 v6, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v6, v15, 0x30

    if-nez v6, :cond_3

    move-object/from16 v6, p2

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x20

    goto :goto_2

    :cond_5
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v4, v7

    :goto_3
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_7

    or-int/lit16 v4, v4, 0x180

    :cond_6
    move/from16 v9, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v9, v15, 0x180

    if-nez v9, :cond_6

    move/from16 v9, p3

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x100

    goto :goto_4

    :cond_8
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v4, v10

    :goto_5
    and-int/lit16 v10, v15, 0xc00

    if-nez v10, :cond_b

    and-int/lit8 v10, v1, 0x8

    if-nez v10, :cond_9

    move-object/from16 v10, p4

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v13, 0x800

    goto :goto_6

    :cond_9
    move-object/from16 v10, p4

    :cond_a
    const/16 v13, 0x400

    :goto_6
    or-int/2addr v4, v13

    goto :goto_7

    :cond_b
    move-object/from16 v10, p4

    :goto_7
    and-int/lit16 v13, v15, 0x6000

    if-nez v13, :cond_e

    and-int/lit8 v13, v1, 0x10

    if-nez v13, :cond_c

    move-object/from16 v13, p5

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v13, p5

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v4, v14

    goto :goto_9

    :cond_e
    move-object/from16 v13, p5

    :goto_9
    and-int/lit8 v14, v1, 0x20

    const/high16 v16, 0x30000

    if-eqz v14, :cond_f

    or-int v4, v4, v16

    move-object/from16 v2, p6

    goto :goto_b

    :cond_f
    and-int v16, v15, v16

    move-object/from16 v2, p6

    if-nez v16, :cond_11

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_a

    :cond_10
    const/high16 v17, 0x10000

    :goto_a
    or-int v4, v4, v17

    :cond_11
    :goto_b
    and-int/lit8 v17, v1, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_12

    or-int v4, v4, v18

    move/from16 v8, p7

    goto :goto_d

    :cond_12
    and-int v18, v15, v18

    move/from16 v8, p7

    if-nez v18, :cond_14

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v18, 0x80000

    :goto_c
    or-int v4, v4, v18

    :cond_14
    :goto_d
    and-int/lit16 v11, v1, 0x80

    const/high16 v19, 0xc00000

    if-eqz v11, :cond_15

    or-int v4, v4, v19

    move/from16 v2, p8

    goto :goto_f

    :cond_15
    and-int v19, v15, v19

    move/from16 v2, p8

    if-nez v19, :cond_17

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_16

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v19, 0x400000

    :goto_e
    or-int v4, v4, v19

    :cond_17
    :goto_f
    and-int/lit16 v2, v1, 0x100

    const/high16 v19, 0x6000000

    if-eqz v2, :cond_18

    or-int v4, v4, v19

    goto :goto_11

    :cond_18
    and-int v2, v15, v19

    if-nez v2, :cond_1a

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/high16 v2, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v2, 0x2000000

    :goto_10
    or-int/2addr v4, v2

    :cond_1a
    :goto_11
    const v2, 0x2492493

    and-int/2addr v2, v4

    const v1, 0x2492492

    const/16 v19, 0x0

    const/16 v20, 0x1

    if-eq v2, v1, :cond_1b

    move/from16 v1, v20

    goto :goto_12

    :cond_1b
    move/from16 v1, v19

    :goto_12
    and-int/lit8 v2, v4, 0x1

    invoke-interface {v12, v1, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v15, 0x1

    const v2, -0xe001

    if-eqz v1, :cond_1f

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_14

    .line 591
    :cond_1c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, p11, 0x8

    if-eqz v1, :cond_1d

    and-int/lit16 v4, v4, -0x1c01

    :cond_1d
    and-int/lit8 v1, p11, 0x10

    if-eqz v1, :cond_1e

    and-int/2addr v4, v2

    :cond_1e
    move-object/from16 v7, p6

    :goto_13
    move v1, v4

    move v4, v9

    move-object v5, v10

    move/from16 v9, p8

    goto/16 :goto_17

    :cond_1f
    :goto_14
    if-eqz v5, :cond_20

    .line 592
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v6, v1

    :cond_20
    if-eqz v7, :cond_21

    move/from16 v9, v20

    :cond_21
    and-int/lit8 v1, p11, 0x8

    if-eqz v1, :cond_22

    shr-int/lit8 v1, v4, 0x18

    and-int/lit8 v1, v1, 0xe

    .line 593
    invoke-virtual {v0, v12, v1}, Landroidx/compose/material3/SliderDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SliderColors;

    move-result-object v1

    and-int/lit16 v4, v4, -0x1c01

    move-object v10, v1

    :cond_22
    and-int/lit8 v1, p11, 0x10

    if-eqz v1, :cond_29

    and-int/lit16 v1, v4, 0x1c00

    xor-int/lit16 v1, v1, 0xc00

    const/16 v5, 0x800

    if-le v1, v5, :cond_23

    .line 594
    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    :cond_23
    and-int/lit16 v1, v4, 0xc00

    if-ne v1, v5, :cond_25

    :cond_24
    move/from16 v1, v20

    goto :goto_15

    :cond_25
    move/from16 v1, v19

    :goto_15
    and-int/lit16 v5, v4, 0x380

    const/16 v7, 0x100

    if-ne v5, v7, :cond_26

    move/from16 v19, v20

    :cond_26
    or-int v1, v1, v19

    .line 595
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_27

    .line 596
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_28

    .line 597
    :cond_27
    new-instance v5, Lr28;

    invoke-direct {v5, v9, v10}, Lr28;-><init>(ZLandroidx/compose/material3/SliderColors;)V

    .line 598
    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 599
    :cond_28
    move-object v1, v5

    check-cast v1, Lbm3;

    and-int/2addr v2, v4

    move-object v13, v1

    move v4, v2

    :cond_29
    if-eqz v14, :cond_2b

    .line 600
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 601
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2a

    .line 602
    sget-object v1, Landroidx/compose/material3/SliderDefaults$Track$5$1;->INSTANCE:Landroidx/compose/material3/SliderDefaults$Track$5$1;

    .line 603
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 604
    :cond_2a
    check-cast v1, Ldm3;

    goto :goto_16

    :cond_2b
    move-object/from16 v1, p6

    :goto_16
    if-eqz v17, :cond_2c

    .line 605
    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getThumbTrackGapSize$p()F

    move-result v2

    move v8, v2

    :cond_2c
    if-eqz v11, :cond_2d

    .line 606
    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getTrackInsideCornerSize$p()F

    move-result v2

    move-object v7, v1

    move v1, v4

    move v4, v9

    move-object v5, v10

    move v9, v2

    goto :goto_17

    :cond_2d
    move-object v7, v1

    goto/16 :goto_13

    .line 607
    :goto_17
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, -0x1

    const-string v10, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1446)"

    const v11, 0x2fab503

    invoke-static {v11, v1, v2, v10}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 608
    :cond_2e
    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v2

    and-int/lit8 v10, v1, 0xe

    const v11, 0x30000030

    or-int/2addr v10, v11

    shl-int/lit8 v11, v1, 0x3

    and-int/lit16 v14, v11, 0x380

    or-int/2addr v10, v14

    and-int/lit16 v14, v11, 0x1c00

    or-int/2addr v10, v14

    const v14, 0xe000

    and-int/2addr v14, v11

    or-int/2addr v10, v14

    const/high16 v14, 0x70000

    and-int/2addr v14, v11

    or-int/2addr v10, v14

    const/high16 v14, 0x380000

    and-int/2addr v14, v11

    or-int/2addr v10, v14

    const/high16 v14, 0x1c00000

    and-int/2addr v14, v11

    or-int/2addr v10, v14

    const/high16 v14, 0xe000000

    and-int/2addr v11, v14

    or-int/2addr v10, v11

    shr-int/lit8 v1, v1, 0x15

    and-int/lit8 v1, v1, 0x70

    or-int/lit8 v14, v1, 0x6

    move-object v3, v6

    move-object v6, v13

    move v13, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p1

    .line 609
    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/SliderDefaults;->TrackImpl-VvwgllI(Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFZZLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    goto :goto_18

    .line 610
    :cond_2f
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v7, p6

    move-object v3, v6

    move v4, v9

    move-object v5, v10

    move-object v6, v13

    move/from16 v9, p8

    .line 611
    :cond_30
    :goto_18
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-eqz v12, :cond_31

    new-instance v0, Ls28;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p11

    move v10, v15

    invoke-direct/range {v0 .. v11}, Ls28;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFII)V

    invoke-interface {v12, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_31
    return-void
.end method

.method public final Track-mnvyFg4$material3(Landroidx/compose/material3/RangeSliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFLandroidx/compose/runtime/Composer;II)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/RangeSliderState;",
            "F",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/SliderColors;",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lj59;",
            ">;",
            "Ldm3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "Lj59;",
            ">;FF",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v12, p11

    move/from16 v13, p12

    const v1, 0x74679618

    move-object/from16 v2, p10

    .line 635
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v10

    and-int/lit8 v2, v13, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v12, 0x6

    move v3, v2

    move-object/from16 v2, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v12, 0x6

    if-nez v2, :cond_2

    move-object/from16 v2, p1

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v12

    goto :goto_1

    :cond_2
    move-object/from16 v2, p1

    move v3, v12

    :goto_1
    and-int/lit8 v4, v13, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move/from16 v4, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v4, v12, 0x30

    if-nez v4, :cond_3

    move/from16 v4, p2

    invoke-interface {v10, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x20

    goto :goto_2

    :cond_5
    const/16 v5, 0x10

    :goto_2
    or-int/2addr v3, v5

    :goto_3
    and-int/lit8 v5, v13, 0x4

    if-eqz v5, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move-object/from16 v6, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v6, v12, 0x180

    if-nez v6, :cond_6

    move-object/from16 v6, p3

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/16 v7, 0x100

    goto :goto_4

    :cond_8
    const/16 v7, 0x80

    :goto_4
    or-int/2addr v3, v7

    :goto_5
    and-int/lit8 v7, v13, 0x8

    if-eqz v7, :cond_a

    or-int/lit16 v3, v3, 0xc00

    :cond_9
    move/from16 v9, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v9, v12, 0xc00

    if-nez v9, :cond_9

    move/from16 v9, p4

    invoke-interface {v10, v9}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x800

    goto :goto_6

    :cond_b
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v3, v11

    :goto_7
    and-int/lit16 v11, v12, 0x6000

    if-nez v11, :cond_e

    and-int/lit8 v11, v13, 0x10

    if-nez v11, :cond_c

    move-object/from16 v11, p5

    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/16 v15, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v11, p5

    :cond_d
    const/16 v15, 0x2000

    :goto_8
    or-int/2addr v3, v15

    goto :goto_9

    :cond_e
    move-object/from16 v11, p5

    :goto_9
    const/high16 v15, 0x30000

    and-int/2addr v15, v12

    if-nez v15, :cond_11

    and-int/lit8 v15, v13, 0x20

    if-nez v15, :cond_f

    move-object/from16 v15, p6

    invoke-interface {v10, v15}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v15, p6

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v3, v3, v16

    goto :goto_b

    :cond_11
    move-object/from16 v15, p6

    :goto_b
    and-int/lit8 v16, v13, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_12

    or-int v3, v3, v17

    move-object/from16 v1, p7

    goto :goto_d

    :cond_12
    and-int v17, v12, v17

    move-object/from16 v1, p7

    if-nez v17, :cond_14

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v18, 0x80000

    :goto_c
    or-int v3, v3, v18

    :cond_14
    :goto_d
    and-int/lit16 v8, v13, 0x80

    const/high16 v18, 0xc00000

    if-eqz v8, :cond_15

    or-int v3, v3, v18

    move/from16 v14, p8

    goto :goto_f

    :cond_15
    and-int v18, v12, v18

    move/from16 v14, p8

    if-nez v18, :cond_17

    invoke-interface {v10, v14}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_16

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v19, 0x400000

    :goto_e
    or-int v3, v3, v19

    :cond_17
    :goto_f
    and-int/lit16 v1, v13, 0x100

    const/high16 v19, 0x6000000

    if-eqz v1, :cond_19

    or-int v3, v3, v19

    :cond_18
    move/from16 v19, v1

    move/from16 v1, p9

    goto :goto_11

    :cond_19
    and-int v19, v12, v19

    if-nez v19, :cond_18

    move/from16 v19, v1

    move/from16 v1, p9

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v20, 0x2000000

    :goto_10
    or-int v3, v3, v20

    :goto_11
    and-int/lit16 v1, v13, 0x200

    const/high16 v20, 0x30000000

    if-eqz v1, :cond_1b

    or-int v3, v3, v20

    goto :goto_13

    :cond_1b
    and-int v1, v12, v20

    if-nez v1, :cond_1d

    invoke-interface {v10, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/high16 v1, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v1, 0x10000000

    :goto_12
    or-int/2addr v3, v1

    :cond_1d
    :goto_13
    const v1, 0x12492493

    and-int/2addr v1, v3

    const v2, 0x12492492

    const/16 v20, 0x0

    const/16 v21, 0x1

    if-eq v1, v2, :cond_1e

    move/from16 v1, v21

    goto :goto_14

    :cond_1e
    move/from16 v1, v20

    :goto_14
    and-int/lit8 v2, v3, 0x1

    invoke-interface {v10, v1, v2}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v1, v12, 0x1

    const v2, -0x70001

    const v22, -0xe001

    if-eqz v1, :cond_22

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_16

    .line 636
    :cond_1f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v13, 0x10

    if-eqz v1, :cond_20

    and-int v3, v3, v22

    :cond_20
    and-int/lit8 v1, v13, 0x20

    if-eqz v1, :cond_21

    and-int/2addr v3, v2

    :cond_21
    move-object/from16 v7, p7

    :goto_15
    move v1, v3

    move-object v3, v6

    move v4, v9

    move-object v5, v11

    move v8, v14

    move-object v6, v15

    move/from16 v9, p9

    goto/16 :goto_19

    :cond_22
    :goto_16
    if-eqz v5, :cond_23

    .line 637
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v6, v1

    :cond_23
    if-eqz v7, :cond_24

    move/from16 v9, v21

    :cond_24
    and-int/lit8 v1, v13, 0x10

    if-eqz v1, :cond_25

    shr-int/lit8 v1, v3, 0x1b

    and-int/lit8 v1, v1, 0xe

    .line 638
    invoke-virtual {v0, v10, v1}, Landroidx/compose/material3/SliderDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SliderColors;

    move-result-object v1

    and-int v3, v3, v22

    move-object v11, v1

    :cond_25
    and-int/lit8 v1, v13, 0x20

    if-eqz v1, :cond_2c

    const v1, 0xe000

    and-int/2addr v1, v3

    xor-int/lit16 v1, v1, 0x6000

    const/16 v5, 0x4000

    if-le v1, v5, :cond_26

    .line 639
    invoke-interface {v10, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    :cond_26
    and-int/lit16 v1, v3, 0x6000

    if-ne v1, v5, :cond_28

    :cond_27
    move/from16 v1, v21

    goto :goto_17

    :cond_28
    move/from16 v1, v20

    :goto_17
    and-int/lit16 v5, v3, 0x1c00

    const/16 v7, 0x800

    if-ne v5, v7, :cond_29

    move/from16 v20, v21

    :cond_29
    or-int v1, v1, v20

    .line 640
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_2a

    .line 641
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v5, v1, :cond_2b

    .line 642
    :cond_2a
    new-instance v5, Lt28;

    invoke-direct {v5, v9, v11}, Lt28;-><init>(ZLandroidx/compose/material3/SliderColors;)V

    .line 643
    invoke-interface {v10, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 644
    :cond_2b
    move-object v1, v5

    check-cast v1, Lbm3;

    and-int/2addr v2, v3

    move-object v15, v1

    move v3, v2

    :cond_2c
    if-eqz v16, :cond_2e

    .line 645
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 646
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2d

    .line 647
    sget-object v1, Landroidx/compose/material3/SliderDefaults$Track$15$1;->INSTANCE:Landroidx/compose/material3/SliderDefaults$Track$15$1;

    .line 648
    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 649
    :cond_2d
    check-cast v1, Ldm3;

    goto :goto_18

    :cond_2e
    move-object/from16 v1, p7

    :goto_18
    if-eqz v8, :cond_2f

    .line 650
    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getThumbTrackGapSize$p()F

    move-result v2

    move v14, v2

    :cond_2f
    if-eqz v19, :cond_30

    .line 651
    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getTrackInsideCornerSize$p()F

    move-result v2

    move-object v7, v1

    move v1, v3

    move-object v3, v6

    move v4, v9

    move-object v5, v11

    move v8, v14

    move-object v6, v15

    move v9, v2

    goto :goto_19

    :cond_30
    move-object v7, v1

    goto/16 :goto_15

    .line 652
    :goto_19
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, -0x1

    const-string v11, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1785)"

    const v14, 0x74679618

    invoke-static {v14, v1, v2, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_31
    const v2, 0x7ffffffe

    and-int v11, v1, v2

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 653
    invoke-direct/range {v0 .. v11}, Landroidx/compose/material3/SliderDefaults;->TrackImpl-xlyIBlM(Landroidx/compose/material3/RangeSliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFLandroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_32
    move-object v0, v10

    move v10, v9

    move v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move v5, v4

    move-object v4, v3

    goto :goto_1a

    .line 654
    :cond_33
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v8, p7

    move-object v4, v6

    move v5, v9

    move-object v0, v10

    move-object v6, v11

    move v9, v14

    move-object v7, v15

    move/from16 v10, p9

    .line 655
    :goto_1a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_34

    new-instance v0, Lu28;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v11, v12

    move v12, v13

    invoke-direct/range {v0 .. v12}, Lu28;-><init>(Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/RangeSliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFII)V

    invoke-interface {v14, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_34
    return-void
.end method

.method public final Track-mnvyFg4$material3(Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFLandroidx/compose/runtime/Composer;II)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SliderState;",
            "F",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/material3/SliderColors;",
            "Lbm3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lj59;",
            ">;",
            "Ldm3<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "Lj59;",
            ">;FF",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v15, p11

    move/from16 v0, p12

    const v1, 0x64ce0b31

    move-object/from16 v2, p10

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v12

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v15, 0x6

    move-object/from16 v10, p1

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v15, 0x6

    move-object/from16 v10, p1

    if-nez v2, :cond_2

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v15

    goto :goto_1

    :cond_2
    move v2, v15

    :goto_1
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_4

    or-int/lit8 v2, v2, 0x30

    :cond_3
    move/from16 v3, p2

    goto :goto_3

    :cond_4
    and-int/lit8 v3, v15, 0x30

    if-nez v3, :cond_3

    move/from16 v3, p2

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x20

    goto :goto_2

    :cond_5
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v2, v4

    :goto_3
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_7

    or-int/lit16 v2, v2, 0x180

    :cond_6
    move-object/from16 v5, p3

    goto :goto_5

    :cond_7
    and-int/lit16 v5, v15, 0x180

    if-nez v5, :cond_6

    move-object/from16 v5, p3

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x100

    goto :goto_4

    :cond_8
    const/16 v6, 0x80

    :goto_4
    or-int/2addr v2, v6

    :goto_5
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_a

    or-int/lit16 v2, v2, 0xc00

    :cond_9
    move/from16 v8, p4

    goto :goto_7

    :cond_a
    and-int/lit16 v8, v15, 0xc00

    if-nez v8, :cond_9

    move/from16 v8, p4

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v11

    if-eqz v11, :cond_b

    const/16 v11, 0x800

    goto :goto_6

    :cond_b
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v2, v11

    :goto_7
    and-int/lit16 v11, v15, 0x6000

    if-nez v11, :cond_e

    and-int/lit8 v11, v0, 0x10

    if-nez v11, :cond_c

    move-object/from16 v11, p5

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/16 v14, 0x4000

    goto :goto_8

    :cond_c
    move-object/from16 v11, p5

    :cond_d
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v2, v14

    goto :goto_9

    :cond_e
    move-object/from16 v11, p5

    :goto_9
    const/high16 v14, 0x30000

    and-int/2addr v14, v15

    if-nez v14, :cond_11

    and-int/lit8 v14, v0, 0x20

    if-nez v14, :cond_f

    move-object/from16 v14, p6

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_f
    move-object/from16 v14, p6

    :cond_10
    const/high16 v16, 0x10000

    :goto_a
    or-int v2, v2, v16

    goto :goto_b

    :cond_11
    move-object/from16 v14, p6

    :goto_b
    and-int/lit8 v16, v0, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_12

    or-int v2, v2, v17

    move-object/from16 v1, p7

    goto :goto_d

    :cond_12
    and-int v17, v15, v17

    move-object/from16 v1, p7

    if-nez v17, :cond_14

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v18, 0x80000

    :goto_c
    or-int v2, v2, v18

    :cond_14
    :goto_d
    and-int/lit16 v7, v0, 0x80

    const/high16 v18, 0xc00000

    if-eqz v7, :cond_15

    or-int v2, v2, v18

    move/from16 v13, p8

    goto :goto_f

    :cond_15
    and-int v18, v15, v18

    move/from16 v13, p8

    if-nez v18, :cond_17

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v19

    if-eqz v19, :cond_16

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v19, 0x400000

    :goto_e
    or-int v2, v2, v19

    :cond_17
    :goto_f
    and-int/lit16 v1, v0, 0x100

    const/high16 v19, 0x6000000

    if-eqz v1, :cond_19

    or-int v2, v2, v19

    :cond_18
    move/from16 v19, v1

    move/from16 v1, p9

    goto :goto_11

    :cond_19
    and-int v19, v15, v19

    if-nez v19, :cond_18

    move/from16 v19, v1

    move/from16 v1, p9

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/high16 v20, 0x4000000

    goto :goto_10

    :cond_1a
    const/high16 v20, 0x2000000

    :goto_10
    or-int v2, v2, v20

    :goto_11
    and-int/lit16 v1, v0, 0x200

    const/high16 v20, 0x30000000

    if-eqz v1, :cond_1b

    or-int v2, v2, v20

    goto :goto_13

    :cond_1b
    and-int v1, v15, v20

    if-nez v1, :cond_1d

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/high16 v1, 0x20000000

    goto :goto_12

    :cond_1c
    const/high16 v1, 0x10000000

    :goto_12
    or-int/2addr v2, v1

    :cond_1d
    :goto_13
    const v1, 0x12492493

    and-int/2addr v1, v2

    const v0, 0x12492492

    const/16 v21, 0x0

    const/16 v22, 0x1

    if-eq v1, v0, :cond_1e

    move/from16 v0, v22

    goto :goto_14

    :cond_1e
    move/from16 v0, v21

    :goto_14
    and-int/lit8 v1, v2, 0x1

    invoke-interface {v12, v0, v1}, Landroidx/compose/runtime/Composer;->shouldExecute(ZI)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->startDefaults()V

    and-int/lit8 v0, v15, 0x1

    const v1, 0xe000

    const v23, -0x70001

    const v24, -0xe001

    if-eqz v0, :cond_22

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_16

    :cond_1f
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v0, p12, 0x10

    if-eqz v0, :cond_20

    and-int v2, v2, v24

    :cond_20
    and-int/lit8 v0, p12, 0x20

    if-eqz v0, :cond_21

    and-int v2, v2, v23

    :cond_21
    move-object/from16 v7, p7

    move/from16 v9, p9

    move v4, v8

    move v8, v13

    :goto_15
    move-object v6, v14

    goto/16 :goto_1a

    :cond_22
    :goto_16
    if-eqz v4, :cond_23

    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v5, v0

    :cond_23
    if-eqz v6, :cond_24

    move/from16 v8, v22

    :cond_24
    and-int/lit8 v0, p12, 0x10

    if-eqz v0, :cond_25

    shr-int/lit8 v0, v2, 0x1b

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {v9, v12, v0}, Landroidx/compose/material3/SliderDefaults;->colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SliderColors;

    move-result-object v0

    and-int v2, v2, v24

    move-object v11, v0

    :cond_25
    and-int/lit8 v0, p12, 0x20

    if-eqz v0, :cond_2c

    and-int v0, v2, v1

    xor-int/lit16 v0, v0, 0x6000

    const/16 v4, 0x4000

    if-le v0, v4, :cond_26

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_26
    and-int/lit16 v0, v2, 0x6000

    if-ne v0, v4, :cond_28

    :cond_27
    move/from16 v0, v22

    goto :goto_17

    :cond_28
    move/from16 v0, v21

    :goto_17
    and-int/lit16 v4, v2, 0x1c00

    const/16 v6, 0x800

    if-ne v4, v6, :cond_29

    move/from16 v21, v22

    :cond_29
    or-int v0, v0, v21

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_2a

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v4, v0, :cond_2b

    :cond_2a
    new-instance v4, Lh28;

    invoke-direct {v4, v8, v11}, Lh28;-><init>(ZLandroidx/compose/material3/SliderColors;)V

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2b
    move-object v0, v4

    check-cast v0, Lbm3;

    and-int v2, v2, v23

    move-object v14, v0

    :cond_2c
    if-eqz v16, :cond_2e

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v0, v4, :cond_2d

    sget-object v0, Landroidx/compose/material3/SliderDefaults$Track$8$1;->INSTANCE:Landroidx/compose/material3/SliderDefaults$Track$8$1;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2d
    check-cast v0, Ldm3;

    goto :goto_18

    :cond_2e
    move-object/from16 v0, p7

    :goto_18
    if-eqz v7, :cond_2f

    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getThumbTrackGapSize$p()F

    move-result v4

    goto :goto_19

    :cond_2f
    move v4, v13

    :goto_19
    if-eqz v19, :cond_30

    invoke-static {}, Landroidx/compose/material3/SliderKt;->access$getTrackInsideCornerSize$p()F

    move-result v6

    move v7, v8

    move v8, v4

    move v4, v7

    move-object v7, v0

    move v9, v6

    goto/16 :goto_15

    :cond_30
    move v6, v8

    move v8, v4

    move v4, v6

    move/from16 v9, p9

    move-object v7, v0

    goto/16 :goto_15

    :goto_1a
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, -0x1

    const-string v13, "androidx.compose.material3.SliderDefaults.Track (Slider.kt:1502)"

    const v14, 0x64ce0b31

    invoke-static {v14, v2, v0, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_31
    and-int/lit8 v0, v2, 0xe

    or-int v0, v0, v20

    and-int/lit8 v13, v2, 0x70

    or-int/2addr v0, v13

    and-int/lit16 v13, v2, 0x380

    or-int/2addr v0, v13

    and-int/lit16 v13, v2, 0x1c00

    or-int/2addr v0, v13

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/high16 v1, 0x70000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/high16 v1, 0x380000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/high16 v1, 0x1c00000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/high16 v1, 0xe000000

    and-int/2addr v1, v2

    or-int v13, v0, v1

    shr-int/lit8 v0, v2, 0x18

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v14, v0, 0x6

    const/4 v10, 0x1

    move-object v3, v5

    move-object v5, v11

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {v0 .. v14}, Landroidx/compose/material3/SliderDefaults;->TrackImpl-VvwgllI(Landroidx/compose/material3/SliderState;FLandroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SliderColors;Lbm3;Ldm3;FFZZLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_32
    move-object v11, v3

    move v2, v8

    move v3, v9

    move-object v0, v12

    move v12, v4

    move-object v8, v5

    goto :goto_1b

    :cond_33
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v7, p7

    move/from16 v3, p9

    move-object v0, v12

    move v2, v13

    move-object v6, v14

    move v12, v8

    move-object v8, v11

    move-object v11, v5

    :goto_1b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-eqz v13, :cond_34

    new-instance v0, Li28;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v1, p2

    move/from16 v5, p12

    move v4, v15

    invoke-direct/range {v0 .. v12}, Li28;-><init>(FFFIILbm3;Ldm3;Landroidx/compose/material3/SliderColors;Landroidx/compose/material3/SliderDefaults;Landroidx/compose/material3/SliderState;Landroidx/compose/ui/Modifier;Z)V

    invoke-interface {v13, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lbm3;)V

    :cond_34
    return-void
.end method

.method public final colors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/SliderColors;
    .locals 3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.SliderDefaults.colors (Slider.kt:1107)"

    const v2, 0x52089c20

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    sget-object p2, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderDefaults;->getDefaultSliderColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/SliderColors;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-object p0
.end method

.method public final colors-q0g_0yA(JJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/SliderColors;
    .locals 19

    move/from16 v0, p24

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p5

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v7

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p7

    :goto_3
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    sget-object v9, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v9

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p9

    :goto_4
    and-int/lit8 v11, v0, 0x20

    if-eqz v11, :cond_5

    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v11

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p11

    :goto_5
    and-int/lit8 v13, v0, 0x40

    if-eqz v13, :cond_6

    sget-object v13, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v13

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p13

    :goto_6
    and-int/lit16 v15, v0, 0x80

    if-eqz v15, :cond_7

    sget-object v15, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v15

    goto :goto_7

    :cond_7
    move-wide/from16 v15, p15

    :goto_7
    move-wide/from16 p1, v1

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v1

    goto :goto_8

    :cond_8
    move-wide/from16 v1, p17

    :goto_8
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v17

    goto :goto_9

    :cond_9
    move-wide/from16 v17, p19

    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x34c9025e

    move-wide/from16 p17, v1

    const-string v1, "androidx.compose.material3.SliderDefaults.colors (Slider.kt:1149)"

    move/from16 v2, p22

    move-wide/from16 p3, v3

    move/from16 v3, p23

    invoke-static {v0, v2, v3, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_a

    :cond_a
    move-wide/from16 p17, v1

    move-wide/from16 p3, v3

    :goto_a
    sget-object v0, Landroidx/compose/material3/MaterialTheme;->INSTANCE:Landroidx/compose/material3/MaterialTheme;

    const/4 v1, 0x6

    move-object/from16 v2, p21

    invoke-virtual {v0, v2, v1}, Landroidx/compose/material3/MaterialTheme;->getColorScheme(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/ColorScheme;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroidx/compose/material3/SliderDefaults;->getDefaultSliderColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/SliderColors;

    move-result-object v0

    move-object/from16 p0, v0

    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    move-wide/from16 p9, v9

    move-wide/from16 p11, v11

    move-wide/from16 p13, v13

    move-wide/from16 p15, v15

    move-wide/from16 p19, v17

    invoke-virtual/range {p0 .. p20}, Landroidx/compose/material3/SliderColors;->copy--K518z4(JJJJJJJJJJ)Landroidx/compose/material3/SliderColors;

    move-result-object v0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_b
    return-object v0
.end method

.method public final drawStopIndicator-x3O1jOs(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJ)V
    .locals 12

    move/from16 v1, p4

    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    const/16 v10, 0x78

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-wide v4, p2

    move-wide/from16 v1, p5

    invoke-static/range {v0 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawCircle-VaOC9Bg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    return-void
.end method

.method public final getDefaultSliderColors$material3(Landroidx/compose/material3/ColorScheme;)Landroidx/compose/material3/SliderColors;
    .locals 30

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getDefaultSliderColorsCached$material3()Landroidx/compose/material3/SliderColors;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Landroidx/compose/material3/SliderColors;

    sget-object v1, Landroidx/compose/material3/tokens/SliderTokens;->INSTANCE:Landroidx/compose/material3/tokens/SliderTokens;

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/SliderTokens;->getHandleColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v3

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/SliderTokens;->getActiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v5

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/SliderTokens;->getInactiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v7

    invoke-static {v0, v7}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v7

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/SliderTokens;->getInactiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v9

    invoke-static {v0, v9}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v9

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/SliderTokens;->getActiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v11

    invoke-static {v0, v11}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v11

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledHandleColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v13

    invoke-static {v0, v13}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v14

    invoke-virtual {v1}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledHandleOpacity()F

    move-result v16

    const/16 v20, 0xe

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v14 .. v21}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v13

    move-object v15, v1

    move-object/from16 p0, v2

    invoke-virtual {v0}, Landroidx/compose/material3/ColorScheme;->getSurface-0d7_KjU()J

    move-result-wide v1

    invoke-static {v13, v14, v1, v2}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    move-result-wide v13

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledActiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v16

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledActiveTrackOpacity()F

    move-result v18

    const/16 v22, 0xe

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v23}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v1

    move-wide/from16 v16, v1

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledInactiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v18

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledInactiveTrackOpacity()F

    move-result v20

    const/16 v24, 0xe

    const/16 v25, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v18 .. v25}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v1

    move-wide/from16 v18, v1

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledInactiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v20

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledInactiveTrackOpacity()F

    move-result v22

    const/16 v26, 0xe

    const/16 v27, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v20 .. v27}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v1

    move-wide/from16 v20, v1

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledActiveTrackColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->fromToken(Landroidx/compose/material3/ColorScheme;Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;)J

    move-result-wide v22

    invoke-virtual {v15}, Landroidx/compose/material3/tokens/SliderTokens;->getDisabledActiveTrackOpacity()F

    move-result v24

    const/16 v28, 0xe

    const/16 v29, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v22 .. v29}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v1

    const/16 v23, 0x0

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move-wide/from16 v21, v1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v23}, Landroidx/compose/material3/SliderColors;-><init>(JJJJJJJJJJLjh2;)V

    invoke-virtual {v0, v2}, Landroidx/compose/material3/ColorScheme;->setDefaultSliderColorsCached$material3(Landroidx/compose/material3/SliderColors;)V

    return-object v2

    :cond_0
    return-object v1
.end method

.method public final getTickSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/SliderDefaults;->TickSize:F

    return p0
.end method

.method public final getTrackStopIndicatorSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/SliderDefaults;->TrackStopIndicatorSize:F

    return p0
.end method
