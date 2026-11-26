.class public final Landroidx/compose/foundation/layout/GridKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SubcomposeLayoutIntrinsicErrorMessage:Ljava/lang/String; = "Grid intrinsic measurement failed because a SubcomposeLayout (e.g., LazyColumn or LazyRow) was placed inside a track that queries its intrinsic measurements (like `Auto` or `Flex`).\n\nTo fix this, change the track definition to `GridTrackSize.MinMax(min = 0.dp, max = 1.fr)` (or your desired flex weight for max) to explicitly set a minimum base size and bypass the intrinsic measurement pass."


# direct methods
.method public static final Grid(Lnl3;Landroidx/compose/ui/Modifier;Ldm3;Landroidx/compose/runtime/Composer;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/compose/foundation/layout/GridConfigurationScope;",
            "Lj59;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Ldm3<",
            "-",
            "Landroidx/compose/foundation/layout/GridScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    :cond_0
    and-int/lit8 p5, p4, 0xe

    invoke-static {p0, p3, p5}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p5

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p5, v0, :cond_1

    new-instance p5, Landroidx/compose/foundation/layout/GridMeasurePolicy;

    invoke-direct {p5, p0}, Landroidx/compose/foundation/layout/GridMeasurePolicy;-><init>(Landroidx/compose/runtime/State;)V

    invoke-interface {p3, p5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_1
    check-cast p5, Landroidx/compose/foundation/layout/GridMeasurePolicy;

    const/4 p0, 0x0

    invoke-static {p3, p0}, Landroidx/compose/runtime/ComposablesKt;->getCurrentCompositeKeyHashCode(Landroidx/compose/runtime/Composer;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getCurrentCompositionLocalMap()Landroidx/compose/runtime/CompositionLocalMap;

    move-result-object v0

    invoke-static {p3, p1}, Landroidx/compose/ui/ComposedModifierKt;->materializeModifier(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lll3;

    move-result-object v2

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->createNode(Lll3;)V

    goto :goto_0

    :cond_3
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->useNode()V

    :goto_0
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lbm3;

    move-result-object v3

    invoke-static {v2, p5, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    invoke-virtual {v1}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetResolvedCompositionLocals()Lbm3;

    move-result-object p5

    invoke-static {v2, v0, p5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1, v2, p0, v2}, Lhm;->b(Landroidx/compose/ui/node/ComposeUiNode$Companion;Landroidx/compose/runtime/Composer;Ljava/lang/Integer;Landroidx/compose/runtime/Composer;)Lbm3;

    move-result-object p0

    invoke-static {v2, p1, p0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lbm3;)V

    sget-object p0, Landroidx/compose/foundation/layout/GridScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/GridScopeInstance;

    shr-int/lit8 p1, p4, 0x3

    and-int/lit8 p1, p1, 0x70

    or-int/lit8 p1, p1, 0x6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p0, p3, p1}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endNode()V

    return-void
.end method

.method public static final synthetic access$calculateGridTrackSizes-cMe430U(Landroidx/compose/ui/unit/Density;Landroidx/collection/MutableObjectList;Landroidx/collection/LongList;Landroidx/collection/LongList;IIJFF)Landroidx/compose/foundation/layout/GridTrackSizes;
    .locals 0

    invoke-static/range {p0 .. p9}, Landroidx/compose/foundation/layout/GridKt;->calculateGridTrackSizes-cMe430U(Landroidx/compose/ui/unit/Density;Landroidx/collection/MutableObjectList;Landroidx/collection/LongList;Landroidx/collection/LongList;IIJFF)Landroidx/compose/foundation/layout/GridTrackSizes;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$calculateTrackOffsets([II)[I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/GridKt;->calculateTrackOffsets([II)[I

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$measureItems(Landroidx/collection/MutableObjectList;Landroidx/compose/foundation/layout/GridTrackSizes;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/layout/GridKt;->measureItems(Landroidx/collection/MutableObjectList;Landroidx/compose/foundation/layout/GridTrackSizes;Landroidx/compose/ui/unit/LayoutDirection;)V

    return-void
.end method

.method public static final synthetic access$resolveGridItemIndices-pclAfdo(Ljava/util/List;Landroidx/collection/LongList;Landroidx/collection/LongList;I)Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/GridKt;->resolveGridItemIndices-pclAfdo(Ljava/util/List;Landroidx/collection/LongList;Landroidx/collection/LongList;I)Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;

    move-result-object p0

    return-object p0
.end method

.method private static final calculateColumnWidths-O3s9Psw(Landroidx/compose/ui/unit/Density;Landroidx/collection/LongList;II[I[Landroidx/collection/MutableObjectList;JLandroidx/collection/MutableObjectList;I)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/collection/LongList;",
            "II[I[",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/layout/GridItem;",
            ">;J",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/layout/GridItem;",
            ">;I)I"
        }
    .end annotation

    move/from16 v0, p2

    move/from16 v1, p3

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v0, -0x1

    mul-int v3, v3, p9

    if-gez v3, :cond_1

    move v3, v2

    :cond_1
    const v9, 0x7fffffff

    if-ne v1, v9, :cond_2

    move v10, v9

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v3

    if-gez v1, :cond_3

    move v1, v2

    :cond_3
    move v10, v1

    :goto_0
    new-instance v11, Landroidx/collection/MutableIntList;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {v11, v2, v3, v1}, Landroidx/collection/MutableIntList;-><init>(IILjh2;)V

    new-array v12, v0, [I

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v2, v0, :cond_7

    iget v1, p1, Landroidx/collection/LongList;->_size:I

    if-ge v2, v1, :cond_4

    invoke-virtual {p1, v2}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v3

    goto :goto_2

    :cond_4
    sget-object v1, Landroidx/compose/foundation/layout/GridTrackSize;->Companion:Landroidx/compose/foundation/layout/GridTrackSize$Companion;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->getAuto-eyNpfc4()J

    move-result-wide v3

    :goto_2
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/GridTrackSize;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/GridTrackSize;->getType-impl$foundation_layout(J)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    aget-object v1, p5, v2

    invoke-static {v1}, Landroidx/compose/foundation/layout/GridKt;->calculateMaxIntrinsicWidth(Landroidx/collection/MutableObjectList;)I

    move-result v1

    goto/16 :goto_5

    :pswitch_0
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/GridTrackSize;->getMaxValue-impl$foundation_layout(J)F

    move-result v1

    add-float/2addr v1, v13

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/GridTrackSize;->getMinValue-impl$foundation_layout(J)F

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    invoke-interface {p0, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v3

    :goto_3
    move v13, v1

    :goto_4
    move v1, v3

    goto :goto_5

    :pswitch_1
    if-ne v10, v9, :cond_5

    aget-object v1, p5, v2

    invoke-static {v1}, Landroidx/compose/foundation/layout/GridKt;->calculateMaxIntrinsicWidth(Landroidx/collection/MutableObjectList;)I

    move-result v1

    goto :goto_5

    :cond_5
    aget-object v1, p5, v2

    invoke-static {v1}, Landroidx/compose/foundation/layout/GridKt;->calculateMinMaxIntrinsicWidth(Landroidx/collection/MutableObjectList;)J

    move-result-wide v3

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    long-to-int v1, v5

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v11, v2}, Landroidx/collection/MutableIntList;->add(I)Z

    aput v1, v12, v2

    goto :goto_4

    :pswitch_2
    aget-object v1, p5, v2

    invoke-static {v1}, Landroidx/compose/foundation/layout/GridKt;->calculateMaxIntrinsicWidth(Landroidx/collection/MutableObjectList;)I

    move-result v1

    goto :goto_5

    :pswitch_3
    aget-object v1, p5, v2

    invoke-static {v1}, Landroidx/compose/foundation/layout/GridKt;->calculateMinIntrinsicWidth(Landroidx/collection/MutableObjectList;)I

    move-result v1

    goto :goto_5

    :pswitch_4
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/GridTrackSize;->getValue-impl$foundation_layout(J)F

    move-result v1

    add-float/2addr v1, v13

    aget-object v3, p5, v2

    invoke-static {v3}, Landroidx/compose/foundation/layout/GridKt;->calculateMinIntrinsicWidth(Landroidx/collection/MutableObjectList;)I

    move-result v3

    goto :goto_3

    :pswitch_5
    if-eq v10, v9, :cond_6

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/GridTrackSize;->getValue-impl$foundation_layout(J)F

    move-result v1

    int-to-float v3, v10

    mul-float/2addr v1, v3

    invoke-static {v1}, Lw65;->b(F)I

    move-result v1

    goto :goto_5

    :cond_6
    aget-object v1, p5, v2

    invoke-static {v1}, Landroidx/compose/foundation/layout/GridKt;->calculateMaxIntrinsicWidth(Landroidx/collection/MutableObjectList;)I

    move-result v1

    goto :goto_5

    :pswitch_6
    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/GridTrackSize;->getValue-impl$foundation_layout(J)F

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    invoke-interface {p0, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v1

    :goto_5
    aput v1, p4, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object/from16 v2, p4

    move-wide/from16 v5, p6

    move-object/from16 v3, p8

    move/from16 v8, p9

    invoke-static/range {v1 .. v8}, Landroidx/compose/foundation/layout/GridKt;->distributeSpanningSpace-WeOhcdQ(Landroidx/collection/LongList;[ILandroidx/collection/MutableObjectList;ZJ[II)V

    if-eq v10, v9, :cond_8

    iget p0, v11, Landroidx/collection/IntList;->_size:I

    if-eqz p0, :cond_8

    invoke-static {v11, v2, v12, v10}, Landroidx/compose/foundation/layout/GridKt;->expandAutoTracks(Landroidx/collection/MutableIntList;[I[II)V

    :cond_8
    invoke-static {v2, v10, v13, v0, p1}, Landroidx/compose/foundation/layout/GridKt;->distributeFlexSpaceAndGetTotal([IIFILandroidx/collection/LongList;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final calculateGridTrackSizes-cMe430U(Landroidx/compose/ui/unit/Density;Landroidx/collection/MutableObjectList;Landroidx/collection/LongList;Landroidx/collection/LongList;IIJFF)Landroidx/compose/foundation/layout/GridTrackSizes;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/layout/GridItem;",
            ">;",
            "Landroidx/collection/LongList;",
            "Landroidx/collection/LongList;",
            "IIJFF)",
            "Landroidx/compose/foundation/layout/GridTrackSizes;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v2, p4

    move/from16 v10, p5

    move/from16 v1, p8

    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v9

    move/from16 v1, p9

    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v11

    new-array v5, v2, [Landroidx/collection/MutableObjectList;

    new-array v12, v10, [Landroidx/collection/MutableObjectList;

    iget-object v1, v8, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v3, v8, Landroidx/collection/ObjectList;->_size:I

    const/4 v13, 0x0

    move v4, v13

    :goto_0
    const/4 v14, 0x1

    if-ge v4, v3, :cond_4

    aget-object v6, v1, v4

    check-cast v6, Landroidx/compose/foundation/layout/GridItem;

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/GridItem;->getColumn()I

    move-result v7

    const/4 v15, 0x0

    if-ge v7, v2, :cond_1

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/GridItem;->getColumn()I

    move-result v7

    aget-object v7, v5, v7

    if-nez v7, :cond_0

    new-instance v7, Landroidx/collection/MutableObjectList;

    invoke-direct {v7, v13, v14, v15}, Landroidx/collection/MutableObjectList;-><init>(IILjh2;)V

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/GridItem;->getColumn()I

    move-result v16

    aput-object v7, v5, v16

    :cond_0
    invoke-virtual {v7, v6}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v6}, Landroidx/compose/foundation/layout/GridItem;->getRow()I

    move-result v7

    if-ge v7, v10, :cond_3

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/GridItem;->getRow()I

    move-result v7

    aget-object v7, v12, v7

    if-nez v7, :cond_2

    new-instance v7, Landroidx/collection/MutableObjectList;

    invoke-direct {v7, v13, v14, v15}, Landroidx/collection/MutableObjectList;-><init>(IILjh2;)V

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/GridItem;->getRow()I

    move-result v14

    aput-object v7, v12, v14

    :cond_2
    invoke-virtual {v7, v6}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-array v4, v2, [I

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    move-object/from16 v1, p2

    move-wide/from16 v6, p6

    invoke-static/range {v0 .. v9}, Landroidx/compose/foundation/layout/GridKt;->calculateColumnWidths-O3s9Psw(Landroidx/compose/ui/unit/Density;Landroidx/collection/LongList;II[I[Landroidx/collection/MutableObjectList;JLandroidx/collection/MutableObjectList;I)I

    move-result v15

    move-object v8, v4

    move/from16 v16, v9

    new-array v4, v10, [I

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p3

    move v2, v10

    move v10, v11

    move-object v5, v12

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/layout/GridKt;->calculateRowHeights-ESwBiLc(Landroidx/compose/ui/unit/Density;Landroidx/collection/LongList;II[I[Landroidx/collection/MutableObjectList;J[ILandroidx/collection/MutableObjectList;I)I

    move-result v0

    add-int/lit8 v1, p4, -0x1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int v1, v1, v16

    add-int/lit8 v2, p5, -0x1

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/2addr v2, v10

    add-int/2addr v15, v1

    add-int/2addr v0, v2

    new-instance v1, Landroidx/compose/foundation/layout/GridTrackSizes;

    move/from16 p4, v0

    move-object/from16 p0, v1

    move-object/from16 p2, v4

    move-object/from16 p1, v8

    move/from16 p6, v10

    move/from16 p3, v15

    move/from16 p5, v16

    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/layout/GridTrackSizes;-><init>([I[IIIII)V

    move-object/from16 v0, p0

    return-object v0
.end method

.method private static final calculateMaxIntrinsicHeight(Landroidx/collection/MutableObjectList;[II)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/layout/GridItem;",
            ">;[II)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/collection/ObjectList;->_size:I

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, p0, :cond_4

    aget-object v4, v1, v2

    check-cast v4, Landroidx/compose/foundation/layout/GridItem;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/GridItem;->getRowSpan()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/GridItem;->getColumn()I

    move-result v5

    array-length v7, p1

    if-ge v5, v7, :cond_1

    aget v5, p1, v5

    goto :goto_1

    :cond_1
    move v5, p2

    :goto_1
    :try_start_0
    invoke-virtual {v4}, Landroidx/compose/foundation/layout/GridItem;->getMeasurable()Landroidx/compose/ui/layout/Measurable;

    move-result-object v4

    invoke-interface {v4, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v4, v3, :cond_3

    move v3, v4

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "SubcomposeLayout"

    invoke-static {p1, p2, v0}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-ne p1, v6, :cond_2

    const-string p1, "Grid intrinsic measurement failed because a SubcomposeLayout (e.g., LazyColumn or LazyRow) was placed inside a track that queries its intrinsic measurements (like `Auto` or `Flex`).\n\nTo fix this, change the track definition to `GridTrackSize.MinMax(min = 0.dp, max = 1.fr)` (or your desired flex weight for max) to explicitly set a minimum base size and bypass the intrinsic measurement pass."

    invoke-static {p1, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_2
    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private static final calculateMaxIntrinsicWidth(Landroidx/collection/MutableObjectList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/layout/GridItem;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/collection/ObjectList;->_size:I

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, p0, :cond_3

    aget-object v4, v1, v2

    check-cast v4, Landroidx/compose/foundation/layout/GridItem;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/GridItem;->getColumnSpan()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    :try_start_0
    invoke-virtual {v4}, Landroidx/compose/foundation/layout/GridItem;->getMeasurable()Landroidx/compose/ui/layout/Measurable;

    move-result-object v4

    const v5, 0x7fffffff

    invoke-interface {v4, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v4, v3, :cond_2

    move v3, v4

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "SubcomposeLayout"

    invoke-static {v1, v2, v0}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-ne v1, v6, :cond_1

    const-string v1, "Grid intrinsic measurement failed because a SubcomposeLayout (e.g., LazyColumn or LazyRow) was placed inside a track that queries its intrinsic measurements (like `Auto` or `Flex`).\n\nTo fix this, change the track definition to `GridTrackSize.MinMax(min = 0.dp, max = 1.fr)` (or your desired flex weight for max) to explicitly set a minimum base size and bypass the intrinsic measurement pass."

    invoke-static {v1, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_1
    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private static final calculateMinIntrinsicHeight(Landroidx/collection/MutableObjectList;[II)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/layout/GridItem;",
            ">;[II)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/collection/ObjectList;->_size:I

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, p0, :cond_4

    aget-object v4, v1, v2

    check-cast v4, Landroidx/compose/foundation/layout/GridItem;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/GridItem;->getRowSpan()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/GridItem;->getColumn()I

    move-result v5

    array-length v7, p1

    if-ge v5, v7, :cond_1

    aget v5, p1, v5

    goto :goto_1

    :cond_1
    move v5, p2

    :goto_1
    :try_start_0
    invoke-virtual {v4}, Landroidx/compose/foundation/layout/GridItem;->getMeasurable()Landroidx/compose/ui/layout/Measurable;

    move-result-object v4

    invoke-interface {v4, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v4, v3, :cond_3

    move v3, v4

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "SubcomposeLayout"

    invoke-static {p1, p2, v0}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-ne p1, v6, :cond_2

    const-string p1, "Grid intrinsic measurement failed because a SubcomposeLayout (e.g., LazyColumn or LazyRow) was placed inside a track that queries its intrinsic measurements (like `Auto` or `Flex`).\n\nTo fix this, change the track definition to `GridTrackSize.MinMax(min = 0.dp, max = 1.fr)` (or your desired flex weight for max) to explicitly set a minimum base size and bypass the intrinsic measurement pass."

    invoke-static {p1, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_2
    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private static final calculateMinIntrinsicWidth(Landroidx/collection/MutableObjectList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/layout/GridItem;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/collection/ObjectList;->_size:I

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, p0, :cond_3

    aget-object v4, v1, v2

    check-cast v4, Landroidx/compose/foundation/layout/GridItem;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/GridItem;->getColumnSpan()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    :try_start_0
    invoke-virtual {v4}, Landroidx/compose/foundation/layout/GridItem;->getMeasurable()Landroidx/compose/ui/layout/Measurable;

    move-result-object v4

    const v5, 0x7fffffff

    invoke-interface {v4, v5}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v4, v3, :cond_2

    move v3, v4

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "SubcomposeLayout"

    invoke-static {v1, v2, v0}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-ne v1, v6, :cond_1

    const-string v1, "Grid intrinsic measurement failed because a SubcomposeLayout (e.g., LazyColumn or LazyRow) was placed inside a track that queries its intrinsic measurements (like `Auto` or `Flex`).\n\nTo fix this, change the track definition to `GridTrackSize.MinMax(min = 0.dp, max = 1.fr)` (or your desired flex weight for max) to explicitly set a minimum base size and bypass the intrinsic measurement pass."

    invoke-static {v1, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_1
    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private static final calculateMinMaxIntrinsicHeight(Landroidx/collection/MutableObjectList;[II)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/layout/GridItem;",
            ">;[II)J"
        }
    .end annotation

    const-string v0, "Grid intrinsic measurement failed because a SubcomposeLayout (e.g., LazyColumn or LazyRow) was placed inside a track that queries its intrinsic measurements (like `Auto` or `Flex`).\n\nTo fix this, change the track definition to `GridTrackSize.MinMax(min = 0.dp, max = 1.fr)` (or your desired flex weight for max) to explicitly set a minimum base size and bypass the intrinsic measurement pass."

    const-string v1, "SubcomposeLayout"

    const-wide/16 v2, 0x0

    if-nez p0, :cond_0

    return-wide v2

    :cond_0
    iget-object v4, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/collection/ObjectList;->_size:I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v6, p0, :cond_6

    aget-object v9, v4, v6

    check-cast v9, Landroidx/compose/foundation/layout/GridItem;

    invoke-virtual {v9}, Landroidx/compose/foundation/layout/GridItem;->getRowSpan()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    invoke-virtual {v9}, Landroidx/compose/foundation/layout/GridItem;->getColumn()I

    move-result v10

    array-length v12, p1

    if-ge v10, v12, :cond_1

    aget v10, p1, v10

    goto :goto_1

    :cond_1
    move v10, p2

    :goto_1
    :try_start_0
    invoke-virtual {v9}, Landroidx/compose/foundation/layout/GridItem;->getMeasurable()Landroidx/compose/ui/layout/Measurable;

    move-result-object v12

    invoke-interface {v12, v10}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v12
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v9}, Landroidx/compose/foundation/layout/GridItem;->getMeasurable()Landroidx/compose/ui/layout/Measurable;

    move-result-object v9

    invoke-interface {v9, v10}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    if-le v12, v8, :cond_2

    move v8, v12

    :cond_2
    if-le v9, v7, :cond_5

    move v7, v9

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {p1, v1, v5}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-ne p1, v11, :cond_3

    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v2

    :cond_3
    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-static {p1, v1, v5}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-ne p1, v11, :cond_4

    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v2

    :cond_4
    throw p0

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    int-to-long p0, v7

    const/16 p2, 0x20

    shl-long/2addr p0, p2

    int-to-long v0, v8

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static final calculateMinMaxIntrinsicWidth(Landroidx/collection/MutableObjectList;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/layout/GridItem;",
            ">;)J"
        }
    .end annotation

    const-string v0, "Grid intrinsic measurement failed because a SubcomposeLayout (e.g., LazyColumn or LazyRow) was placed inside a track that queries its intrinsic measurements (like `Auto` or `Flex`).\n\nTo fix this, change the track definition to `GridTrackSize.MinMax(min = 0.dp, max = 1.fr)` (or your desired flex weight for max) to explicitly set a minimum base size and bypass the intrinsic measurement pass."

    const-string v1, "SubcomposeLayout"

    const-wide/16 v2, 0x0

    if-nez p0, :cond_0

    return-wide v2

    :cond_0
    iget-object v4, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget p0, p0, Landroidx/collection/ObjectList;->_size:I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v6, p0, :cond_5

    aget-object v9, v4, v6

    check-cast v9, Landroidx/compose/foundation/layout/GridItem;

    invoke-virtual {v9}, Landroidx/compose/foundation/layout/GridItem;->getColumnSpan()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    :try_start_0
    invoke-virtual {v9}, Landroidx/compose/foundation/layout/GridItem;->getMeasurable()Landroidx/compose/ui/layout/Measurable;

    move-result-object v10

    const v12, 0x7fffffff

    invoke-interface {v10, v12}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v9}, Landroidx/compose/foundation/layout/GridItem;->getMeasurable()Landroidx/compose/ui/layout/Measurable;

    move-result-object v9

    invoke-interface {v9, v12}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    if-le v10, v8, :cond_1

    move v8, v10

    :cond_1
    if-le v9, v7, :cond_4

    move v7, v9

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4, v1, v5}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-ne v1, v11, :cond_2

    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v2

    :cond_2
    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v4, v1, v5}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-ne v1, v11, :cond_3

    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-wide v2

    :cond_3
    throw p0

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    int-to-long v0, v7

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long v2, v8

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static final calculateRowHeights-ESwBiLc(Landroidx/compose/ui/unit/Density;Landroidx/collection/LongList;II[I[Landroidx/collection/MutableObjectList;J[ILandroidx/collection/MutableObjectList;I)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/collection/LongList;",
            "II[I[",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/layout/GridItem;",
            ">;J[I",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/layout/GridItem;",
            ">;I)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v8, p2

    move/from16 v2, p3

    move-object/from16 v6, p8

    const/4 v3, 0x0

    if-nez v8, :cond_0

    return v3

    :cond_0
    add-int/lit8 v4, v8, -0x1

    mul-int v4, v4, p10

    if-gez v4, :cond_1

    move v4, v3

    :cond_1
    const v9, 0x7fffffff

    if-ne v2, v9, :cond_2

    move v10, v9

    goto :goto_0

    :cond_2
    sub-int/2addr v2, v4

    if-gez v2, :cond_3

    move v2, v3

    :cond_3
    move v10, v2

    :goto_0
    new-instance v11, Landroidx/collection/MutableIntList;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {v11, v3, v4, v2}, Landroidx/collection/MutableIntList;-><init>(IILjh2;)V

    new-array v12, v8, [I

    const/4 v2, 0x0

    move v13, v2

    :goto_1
    if-ge v3, v8, :cond_7

    iget v2, v1, Landroidx/collection/LongList;->_size:I

    if-ge v3, v2, :cond_4

    invoke-virtual {v1, v3}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v4

    goto :goto_2

    :cond_4
    sget-object v2, Landroidx/compose/foundation/layout/GridTrackSize;->Companion:Landroidx/compose/foundation/layout/GridTrackSize$Companion;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->getAuto-eyNpfc4()J

    move-result-wide v4

    :goto_2
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/GridTrackSize;->constructor-impl(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/GridTrackSize;->getType-impl$foundation_layout(J)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    aget-object v2, p5, v3

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    invoke-static {v2, v6, v4}, Landroidx/compose/foundation/layout/GridKt;->calculateMaxIntrinsicHeight(Landroidx/collection/MutableObjectList;[II)I

    move-result v2

    goto/16 :goto_5

    :pswitch_0
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/GridTrackSize;->getMaxValue-impl$foundation_layout(J)F

    move-result v2

    add-float/2addr v2, v13

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/GridTrackSize;->getMinValue-impl$foundation_layout(J)F

    move-result v4

    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    invoke-interface {v0, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v4

    :goto_3
    move v13, v2

    :goto_4
    move v2, v4

    goto/16 :goto_5

    :pswitch_1
    if-ne v10, v9, :cond_5

    aget-object v2, p5, v3

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    invoke-static {v2, v6, v4}, Landroidx/compose/foundation/layout/GridKt;->calculateMaxIntrinsicHeight(Landroidx/collection/MutableObjectList;[II)I

    move-result v2

    goto :goto_5

    :cond_5
    aget-object v2, p5, v3

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    invoke-static {v2, v6, v4}, Landroidx/compose/foundation/layout/GridKt;->calculateMinMaxIntrinsicHeight(Landroidx/collection/MutableObjectList;[II)J

    move-result-wide v4

    const/16 v2, 0x20

    ushr-long v14, v4, v2

    long-to-int v2, v14

    const-wide v14, 0xffffffffL

    and-long/2addr v4, v14

    long-to-int v4, v4

    invoke-virtual {v11, v3}, Landroidx/collection/MutableIntList;->add(I)Z

    aput v2, v12, v3

    goto :goto_4

    :pswitch_2
    aget-object v2, p5, v3

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    invoke-static {v2, v6, v4}, Landroidx/compose/foundation/layout/GridKt;->calculateMaxIntrinsicHeight(Landroidx/collection/MutableObjectList;[II)I

    move-result v2

    goto :goto_5

    :pswitch_3
    aget-object v2, p5, v3

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    invoke-static {v2, v6, v4}, Landroidx/compose/foundation/layout/GridKt;->calculateMinIntrinsicHeight(Landroidx/collection/MutableObjectList;[II)I

    move-result v2

    goto :goto_5

    :pswitch_4
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/GridTrackSize;->getValue-impl$foundation_layout(J)F

    move-result v2

    add-float/2addr v2, v13

    aget-object v4, p5, v3

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v5

    invoke-static {v4, v6, v5}, Landroidx/compose/foundation/layout/GridKt;->calculateMinIntrinsicHeight(Landroidx/collection/MutableObjectList;[II)I

    move-result v4

    goto :goto_3

    :pswitch_5
    if-eq v10, v9, :cond_6

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/GridTrackSize;->getValue-impl$foundation_layout(J)F

    move-result v2

    int-to-float v4, v10

    mul-float/2addr v2, v4

    invoke-static {v2}, Lw65;->b(F)I

    move-result v2

    goto :goto_5

    :cond_6
    aget-object v2, p5, v3

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    invoke-static {v2, v6, v4}, Landroidx/compose/foundation/layout/GridKt;->calculateMaxIntrinsicHeight(Landroidx/collection/MutableObjectList;[II)I

    move-result v2

    goto :goto_5

    :pswitch_6
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/GridTrackSize;->getValue-impl$foundation_layout(J)F

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    :goto_5
    aput v2, p4, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x1

    move-wide/from16 v4, p6

    move-object/from16 v2, p9

    move/from16 v7, p10

    move-object v0, v1

    move-object/from16 v1, p4

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/layout/GridKt;->distributeSpanningSpace-WeOhcdQ(Landroidx/collection/LongList;[ILandroidx/collection/MutableObjectList;ZJ[II)V

    if-eq v10, v9, :cond_8

    iget v2, v11, Landroidx/collection/IntList;->_size:I

    if-eqz v2, :cond_8

    invoke-static {v11, v1, v12, v10}, Landroidx/compose/foundation/layout/GridKt;->expandAutoTracks(Landroidx/collection/MutableIntList;[I[II)V

    :cond_8
    invoke-static {v1, v10, v13, v8, v0}, Landroidx/compose/foundation/layout/GridKt;->distributeFlexSpaceAndGetTotal([IIFILandroidx/collection/LongList;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final calculateTrackOffsets([II)[I
    .locals 5

    array-length v0, p0

    new-array v0, v0, [I

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aput v3, v0, v2

    aget v4, p0, v2

    add-int/2addr v4, p1

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final varargs columns(Landroidx/compose/foundation/layout/GridConfigurationScope;[Landroidx/compose/foundation/layout/GridTrackSpec;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    instance-of v3, v2, Landroidx/compose/foundation/layout/GridTrackSize;

    if-eqz v3, :cond_0

    check-cast v2, Landroidx/compose/foundation/layout/GridTrackSize;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/GridTrackSize;->unbox-impl()J

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Landroidx/compose/foundation/layout/GridConfigurationScope;->column-118E5d0(J)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final distributeFlexSpaceAndGetTotal([IIFILandroidx/collection/LongList;)I
    .locals 11

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget v4, p0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v3

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    const/4 v0, 0x0

    cmpl-float v2, p2, v0

    if-lez v2, :cond_7

    if-lez p1, :cond_7

    move v5, v0

    move v2, v1

    move v4, v2

    move v6, v4

    :goto_2
    if-ge v2, p3, :cond_6

    iget v7, p4, Landroidx/collection/LongList;->_size:I

    if-ge v2, v7, :cond_2

    invoke-virtual {p4, v2}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v7

    goto :goto_3

    :cond_2
    sget-object v7, Landroidx/compose/foundation/layout/GridTrackSize;->Companion:Landroidx/compose/foundation/layout/GridTrackSize$Companion;

    invoke-virtual {v7}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->getAuto-eyNpfc4()J

    move-result-wide v7

    :goto_3
    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/GridTrackSize;->constructor-impl(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/GridTrackSize;->getType-impl$foundation_layout(J)I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    const/4 v10, 0x7

    if-eq v9, v10, :cond_3

    move v7, v0

    goto :goto_4

    :cond_3
    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/GridTrackSize;->getMaxValue-impl$foundation_layout(J)F

    move-result v7

    goto :goto_4

    :cond_4
    invoke-static {v7, v8}, Landroidx/compose/foundation/layout/GridTrackSize;->getValue-impl$foundation_layout(J)F

    move-result v7

    :goto_4
    cmpl-float v8, v7, v0

    if-lez v8, :cond_5

    add-float/2addr v5, v7

    div-float v4, v5, p2

    int-to-float v7, p1

    mul-float/2addr v4, v7

    invoke-static {v4}, Lw65;->b(F)I

    move-result v4

    sub-int/2addr v4, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aget v7, p0, v2

    add-int/2addr v7, v4

    aput v7, p0, v2

    add-int/2addr v4, v6

    move v6, v4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    move v1, v4

    :cond_7
    add-int/2addr v3, v1

    return v3
.end method

.method private static final distributeSpanningSpace-WeOhcdQ(Landroidx/collection/LongList;[ILandroidx/collection/MutableObjectList;ZJ[II)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongList;",
            "[I",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/layout/GridItem;",
            ">;ZJ[II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    iget-object v4, v2, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v2, v2, Landroidx/collection/ObjectList;->_size:I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_11

    aget-object v7, v4, v6

    check-cast v7, Landroidx/compose/foundation/layout/GridItem;

    if-eqz p3, :cond_0

    invoke-virtual {v7}, Landroidx/compose/foundation/layout/GridItem;->getRow()I

    move-result v8

    goto :goto_1

    :cond_0
    invoke-virtual {v7}, Landroidx/compose/foundation/layout/GridItem;->getColumn()I

    move-result v8

    :goto_1
    if-eqz p3, :cond_1

    invoke-virtual {v7}, Landroidx/compose/foundation/layout/GridItem;->getRowSpan()I

    move-result v9

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Landroidx/compose/foundation/layout/GridItem;->getColumnSpan()I

    move-result v9

    :goto_2
    const/4 v10, 0x1

    if-le v9, v10, :cond_f

    add-int/2addr v9, v8

    array-length v11, v1

    if-le v9, v11, :cond_2

    move v9, v11

    :cond_2
    move v11, v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_3
    const/4 v14, 0x2

    if-ge v11, v9, :cond_5

    aget v15, v1, v11

    add-int/2addr v12, v15

    iget v15, v0, Landroidx/collection/LongList;->_size:I

    if-ge v11, v15, :cond_3

    invoke-virtual {v0, v11}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v15

    goto :goto_4

    :cond_3
    sget-object v15, Landroidx/compose/foundation/layout/GridTrackSize;->Companion:Landroidx/compose/foundation/layout/GridTrackSize$Companion;

    invoke-virtual {v15}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->getAuto-eyNpfc4()J

    move-result-wide v15

    :goto_4
    invoke-static/range {v15 .. v16}, Landroidx/compose/foundation/layout/GridTrackSize;->constructor-impl(J)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Landroidx/compose/foundation/layout/GridTrackSize;->getType-impl$foundation_layout(J)I

    move-result v5

    if-eq v5, v10, :cond_4

    invoke-static/range {v15 .. v16}, Landroidx/compose/foundation/layout/GridTrackSize;->getType-impl$foundation_layout(J)I

    move-result v5

    if-eq v5, v14, :cond_4

    add-int/lit8 v13, v13, 0x1

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_5
    const-string v5, "Grid intrinsic measurement failed because a SubcomposeLayout (e.g., LazyColumn or LazyRow) was placed inside a track that queries its intrinsic measurements (like `Auto` or `Flex`).\n\nTo fix this, change the track definition to `GridTrackSize.MinMax(min = 0.dp, max = 1.fr)` (or your desired flex weight for max) to explicitly set a minimum base size and bypass the intrinsic measurement pass."

    const-string v11, "SubcomposeLayout"

    if-eqz p3, :cond_a

    if-eqz v3, :cond_8

    invoke-virtual {v7}, Landroidx/compose/foundation/layout/GridItem;->getColumn()I

    move-result v15

    invoke-virtual {v7}, Landroidx/compose/foundation/layout/GridItem;->getColumnSpan()I

    move-result v16

    add-int v14, v15, v16

    move/from16 v16, v10

    array-length v10, v3

    if-le v14, v10, :cond_6

    move v14, v10

    :cond_6
    const/4 v10, 0x0

    :goto_5
    if-ge v15, v14, :cond_7

    aget v17, v3, v15

    add-int v10, v10, v17

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v7}, Landroidx/compose/foundation/layout/GridItem;->getColumnSpan()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    mul-int v14, v14, p7

    add-int/2addr v14, v10

    goto :goto_6

    :cond_8
    move/from16 v16, v10

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v14

    :goto_6
    :try_start_0
    invoke-virtual {v7}, Landroidx/compose/foundation/layout/GridItem;->getMeasurable()Landroidx/compose/ui/layout/Measurable;

    move-result-object v7

    invoke-interface {v7, v14}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v15, 0x0

    invoke-static {v1, v11, v15}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    move/from16 v2, v16

    if-ne v1, v2, :cond_9

    invoke-static {v5, v0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_9
    throw v0

    :cond_a
    :try_start_1
    invoke-virtual {v7}, Landroidx/compose/foundation/layout/GridItem;->getMeasurable()Landroidx/compose/ui/layout/Measurable;

    move-result-object v7

    const v10, 0x7fffffff

    invoke-interface {v7, v10}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_7
    sub-int/2addr v5, v12

    if-lez v5, :cond_f

    if-lez v13, :cond_f

    div-int v7, v5, v13

    rem-int/2addr v5, v13

    :goto_8
    if-ge v8, v9, :cond_f

    iget v10, v0, Landroidx/collection/LongList;->_size:I

    if-ge v8, v10, :cond_b

    invoke-virtual {v0, v8}, Landroidx/collection/LongList;->get(I)J

    move-result-wide v10

    goto :goto_9

    :cond_b
    sget-object v10, Landroidx/compose/foundation/layout/GridTrackSize;->Companion:Landroidx/compose/foundation/layout/GridTrackSize$Companion;

    invoke-virtual {v10}, Landroidx/compose/foundation/layout/GridTrackSize$Companion;->getAuto-eyNpfc4()J

    move-result-wide v10

    :goto_9
    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/GridTrackSize;->constructor-impl(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/GridTrackSize;->getType-impl$foundation_layout(J)I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_d

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/GridTrackSize;->getType-impl$foundation_layout(J)I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_e

    if-lez v5, :cond_c

    const/4 v15, 0x1

    goto :goto_a

    :cond_c
    const/4 v15, 0x0

    :goto_a
    add-int/2addr v15, v7

    aget v10, v1, v8

    add-int/2addr v10, v15

    aput v10, v1, v8

    if-lez v5, :cond_e

    add-int/lit8 v5, v5, -0x1

    goto :goto_b

    :cond_d
    const/4 v11, 0x2

    :cond_e
    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_f
    const/4 v15, 0x0

    goto :goto_c

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v15, 0x0

    invoke-static {v1, v11, v15}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    const/4 v13, 0x1

    if-ne v1, v13, :cond_10

    invoke-static {v5, v0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_10
    throw v0

    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method private static final expandAutoTracks(Landroidx/collection/MutableIntList;[I[II)V
    .locals 8

    iget v0, p0, Landroidx/collection/IntList;->_size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget v4, p1, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr p3, v3

    if-gtz p3, :cond_2

    goto :goto_4

    :cond_2
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    new-array v2, v0, [I

    iget-object v3, p0, Landroidx/collection/IntList;->content:[I

    move v4, v1

    move v5, v4

    :goto_1
    if-ge v4, v0, :cond_3

    aget v6, v3, v4

    aget v7, p1, v6

    aget v6, p2, v6

    sub-int/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    aput v6, v2, v4

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    if-lt p3, v5, :cond_5

    iget p2, p0, Landroidx/collection/IntList;->_size:I

    invoke-static {v1, p2}, Lkx6;->n(II)Ly74;

    move-result-object p2

    iget p3, p2, Lw74;->b:I

    iget p2, p2, Lw74;->c:I

    if-gt p3, p2, :cond_6

    :goto_2
    invoke-virtual {p0, p3}, Landroidx/collection/IntList;->get(I)I

    move-result v0

    aget v1, p1, v0

    aget v3, v2, p3

    add-int/2addr v1, v3

    aput v1, p1, v0

    if-eq p3, p2, :cond_6

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_5
    iget p2, p0, Landroidx/collection/IntList;->_size:I

    invoke-static {v1, p2}, Lkx6;->n(II)Ly74;

    move-result-object p2

    iget v0, p2, Lw74;->b:I

    iget p2, p2, Lw74;->c:I

    if-gt v0, p2, :cond_6

    :goto_3
    invoke-virtual {p0, v0}, Landroidx/collection/IntList;->get(I)I

    move-result v1

    aget v3, v2, v0

    int-to-float v3, v3

    int-to-float v4, v5

    div-float/2addr v3, v4

    int-to-float v4, p3

    mul-float/2addr v3, v4

    invoke-static {v3}, Lw65;->b(F)I

    move-result v3

    aget v4, p1, v1

    add-int/2addr v4, v3

    aput v4, p1, v1

    if-eq v0, p2, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method public static synthetic getSubcomposeLayoutIntrinsicErrorMessage$annotations()V
    .locals 0

    return-void
.end method

.method private static final measureItems(Landroidx/collection/MutableObjectList;Landroidx/compose/foundation/layout/GridTrackSizes;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableObjectList<",
            "Landroidx/compose/foundation/layout/GridItem;",
            ">;",
            "Landroidx/compose/foundation/layout/GridTrackSizes;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/layout/GridTrackSizes;->getRowHeights()[I

    move-result-object v1

    array-length v1, v1

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/layout/GridTrackSizes;->getColumnWidths()[I

    move-result-object v2

    array-length v2, v2

    iget-object v3, v0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v0, v0, Landroidx/collection/ObjectList;->_size:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_7

    aget-object v6, v3, v5

    check-cast v6, Landroidx/compose/foundation/layout/GridItem;

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/GridItem;->getRow()I

    move-result v7

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/GridItem;->getColumn()I

    move-result v8

    if-ge v7, v1, :cond_6

    if-ge v8, v2, :cond_6

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/GridItem;->getColumnSpan()I

    move-result v9

    add-int/2addr v9, v8

    if-le v9, v2, :cond_0

    move v9, v2

    :cond_0
    move v11, v4

    move v10, v8

    :goto_1
    if-ge v10, v9, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/layout/GridTrackSizes;->getColumnWidths()[I

    move-result-object v12

    aget v12, v12, v10

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr v9, v8

    const/4 v8, 0x1

    if-le v9, v8, :cond_2

    add-int/lit8 v9, v9, -0x1

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/layout/GridTrackSizes;->getColumnGapPx()I

    move-result v10

    mul-int/2addr v9, v10

    add-int/2addr v11, v9

    :cond_2
    move v13, v11

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/GridItem;->getRowSpan()I

    move-result v9

    add-int/2addr v9, v7

    if-le v9, v1, :cond_3

    move v9, v1

    :cond_3
    move v11, v4

    move v10, v7

    :goto_2
    if-ge v10, v9, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/layout/GridTrackSizes;->getRowHeights()[I

    move-result-object v12

    aget v12, v12, v10

    add-int/2addr v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    sub-int/2addr v9, v7

    if-le v9, v8, :cond_5

    add-int/lit8 v9, v9, -0x1

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/layout/GridTrackSizes;->getRowGapPx()I

    move-result v7

    mul-int/2addr v9, v7

    add-int/2addr v11, v9

    :cond_5
    move v15, v11

    const/16 v16, 0x5

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v7

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/GridItem;->getMeasurable()Landroidx/compose/ui/layout/Measurable;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v7

    int-to-long v8, v13

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    int-to-long v11, v15

    const-wide v13, 0xffffffffL

    and-long/2addr v11, v13

    or-long/2addr v8, v11

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v18

    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v8

    invoke-virtual {v7}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v9

    int-to-long v11, v8

    shl-long v10, v11, v10

    int-to-long v8, v9

    and-long/2addr v8, v13

    or-long/2addr v8, v10

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v16

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/GridItem;->getAlignment()Landroidx/compose/ui/Alignment;

    move-result-object v15

    move-object/from16 v20, p2

    invoke-interface/range {v15 .. v20}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide v8

    invoke-virtual {v6, v7}, Landroidx/compose/foundation/layout/GridItem;->setPlaceable(Landroidx/compose/ui/layout/Placeable;)V

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/compose/foundation/layout/GridItem;->setOffsetX(I)V

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/compose/foundation/layout/GridItem;->setOffsetY(I)V

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private static final resolveGridItemIndices-pclAfdo(Ljava/util/List;Landroidx/collection/LongList;Landroidx/collection/LongList;I)Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;",
            "Landroidx/collection/LongList;",
            "Landroidx/collection/LongList;",
            "I)",
            "Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    new-instance v2, Landroidx/collection/MutableObjectList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Landroidx/collection/MutableObjectList;-><init>(I)V

    new-instance v3, Landroidx/collection/MutableIntSet;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroidx/collection/MutableIntSet;-><init>(IILjh2;)V

    move-object/from16 v7, p1

    iget v7, v7, Landroidx/collection/LongList;->_size:I

    move-object/from16 v8, p2

    iget v8, v8, Landroidx/collection/LongList;->_size:I

    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    move v10, v4

    move v13, v10

    move v14, v13

    move v11, v7

    move v12, v8

    :goto_0
    if-ge v10, v9, :cond_19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v17, v15

    check-cast v17, Landroidx/compose/ui/layout/Measurable;

    invoke-interface/range {v17 .. v17}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->getParentData()Ljava/lang/Object;

    move-result-object v15

    move/from16 v28, v5

    instance-of v5, v15, Landroidx/compose/foundation/layout/GridItemNode;

    if-eqz v5, :cond_0

    check-cast v15, Landroidx/compose/foundation/layout/GridItemNode;

    goto :goto_1

    :cond_0
    move-object v15, v6

    :goto_1
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Landroidx/compose/foundation/layout/GridItemNode;->getRowSpan()I

    move-result v5

    goto :goto_2

    :cond_1
    move/from16 v5, v28

    :goto_2
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Landroidx/compose/foundation/layout/GridItemNode;->getColumnSpan()I

    move-result v16

    move/from16 v6, v16

    goto :goto_3

    :cond_2
    move/from16 v6, v28

    :goto_3
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroidx/compose/foundation/layout/GridItemNode;->getRow()I

    move-result v16

    move/from16 v29, v4

    move/from16 v4, v16

    goto :goto_4

    :cond_3
    move/from16 v29, v4

    :goto_4
    invoke-static {v4, v8}, Landroidx/compose/foundation/layout/GridKt;->resolveToZeroBasedIndex(II)I

    move-result v4

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroidx/compose/foundation/layout/GridItemNode;->getColumn()I

    move-result v16

    move/from16 v0, v16

    goto :goto_5

    :cond_4
    move/from16 v0, v29

    :goto_5
    invoke-static {v0, v7}, Landroidx/compose/foundation/layout/GridKt;->resolveToZeroBasedIndex(II)I

    move-result v0

    move/from16 p1, v9

    const/4 v9, -0x1

    if-eq v4, v9, :cond_5

    if-eq v0, v9, :cond_5

    move v9, v4

    move/from16 p2, v10

    :goto_6
    move/from16 v30, v13

    move/from16 v10, v29

    :goto_7
    move v13, v0

    goto/16 :goto_d

    :cond_5
    move/from16 p2, v10

    const/16 v10, 0x3e8

    if-eq v4, v9, :cond_9

    invoke-static/range {v29 .. v29}, Landroidx/compose/foundation/layout/GridFlow;->constructor-impl(I)I

    move-result v9

    invoke-static {v1, v9}, Landroidx/compose/foundation/layout/GridFlow;->equals-impl0(II)Z

    move-result v9

    if-eqz v9, :cond_6

    if-ne v4, v13, :cond_6

    move v9, v14

    goto :goto_8

    :cond_6
    move/from16 v9, v29

    :goto_8
    if-ge v9, v10, :cond_8

    invoke-static {v3, v4, v9, v5, v6}, Landroidx/compose/foundation/layout/GridKt;->resolveGridItemIndices_pclAfdo$isAreaOccupied(Landroidx/collection/MutableIntSet;IIII)Z

    move-result v16

    if-nez v16, :cond_7

    move/from16 v30, v13

    move/from16 v10, v29

    move v13, v9

    move v9, v4

    goto/16 :goto_d

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_8
    move v9, v4

    move/from16 v30, v13

    move/from16 v10, v29

    :goto_9
    const/4 v13, -0x1

    goto/16 :goto_d

    :cond_9
    if-eq v0, v9, :cond_d

    invoke-static/range {v28 .. v28}, Landroidx/compose/foundation/layout/GridFlow;->constructor-impl(I)I

    move-result v9

    invoke-static {v1, v9}, Landroidx/compose/foundation/layout/GridFlow;->equals-impl0(II)Z

    move-result v9

    if-eqz v9, :cond_a

    if-ne v0, v14, :cond_a

    move v9, v13

    goto :goto_a

    :cond_a
    move/from16 v9, v29

    :goto_a
    if-ge v9, v10, :cond_c

    invoke-static {v3, v9, v0, v5, v6}, Landroidx/compose/foundation/layout/GridKt;->resolveGridItemIndices_pclAfdo$isAreaOccupied(Landroidx/collection/MutableIntSet;IIII)Z

    move-result v16

    if-nez v16, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_c
    move/from16 v30, v13

    move/from16 v10, v29

    const/4 v9, -0x1

    goto :goto_7

    :cond_d
    move v9, v13

    move/from16 v30, v9

    move v13, v14

    :cond_e
    :goto_b
    if-ge v9, v10, :cond_13

    if-ge v13, v10, :cond_13

    invoke-static/range {v29 .. v29}, Landroidx/compose/foundation/layout/GridFlow;->constructor-impl(I)I

    move-result v10

    invoke-static {v1, v10}, Landroidx/compose/foundation/layout/GridFlow;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_f

    if-lez v7, :cond_10

    add-int v10, v13, v6

    if-le v10, v7, :cond_10

    if-lez v13, :cond_10

    add-int/lit8 v9, v9, 0x1

    move/from16 v13, v29

    :goto_c
    const/16 v10, 0x3e8

    goto :goto_b

    :cond_f
    if-lez v8, :cond_10

    add-int v10, v9, v5

    if-le v10, v8, :cond_10

    if-lez v9, :cond_10

    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v29

    goto :goto_c

    :cond_10
    invoke-static {v3, v9, v13, v5, v6}, Landroidx/compose/foundation/layout/GridKt;->resolveGridItemIndices_pclAfdo$isAreaOccupied(Landroidx/collection/MutableIntSet;IIII)Z

    move-result v10

    if-nez v10, :cond_11

    move/from16 v10, v29

    goto :goto_d

    :cond_11
    invoke-static/range {v29 .. v29}, Landroidx/compose/foundation/layout/GridFlow;->constructor-impl(I)I

    move-result v10

    invoke-static {v1, v10}, Landroidx/compose/foundation/layout/GridFlow;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_12

    add-int/lit8 v13, v13, 0x1

    const/16 v10, 0x3e8

    if-le v13, v10, :cond_e

    add-int/lit8 v9, v9, 0x1

    move/from16 v13, v29

    goto :goto_b

    :cond_12
    const/16 v10, 0x3e8

    add-int/lit8 v9, v9, 0x1

    if-le v9, v10, :cond_e

    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v29

    goto :goto_b

    :cond_13
    move/from16 v10, v29

    const/4 v9, -0x1

    goto/16 :goto_9

    :goto_d
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v3, v9, v13, v5, v6}, Landroidx/compose/foundation/layout/GridKt;->resolveGridItemIndices_pclAfdo$markAreaOccupied(Landroidx/collection/MutableIntSet;IIII)V

    new-instance v16, Landroidx/compose/foundation/layout/GridItem;

    if-eqz v15, :cond_15

    invoke-virtual {v15}, Landroidx/compose/foundation/layout/GridItemNode;->getAlignment()Landroidx/compose/ui/Alignment;

    move-result-object v10

    if-nez v10, :cond_14

    goto :goto_f

    :cond_14
    :goto_e
    move-object/from16 v22, v10

    goto :goto_10

    :cond_15
    :goto_f
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v10

    goto :goto_e

    :goto_10
    const/16 v26, 0x1c0

    const/16 v27, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v18, v9

    move/from16 v19, v13

    invoke-direct/range {v16 .. v27}, Landroidx/compose/foundation/layout/GridItem;-><init>(Landroidx/compose/ui/layout/Measurable;IIIILandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/Placeable;IIILjh2;)V

    move-object/from16 v5, v16

    invoke-virtual {v2, v5}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    add-int v9, v18, v20

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int v13, v19, v21

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/4 v5, -0x1

    if-eq v4, v5, :cond_16

    if-ne v0, v5, :cond_17

    :cond_16
    const/16 v29, 0x0

    goto :goto_11

    :cond_17
    move/from16 v13, v30

    const/16 v29, 0x0

    goto :goto_12

    :goto_11
    invoke-static/range {v29 .. v29}, Landroidx/compose/foundation/layout/GridFlow;->constructor-impl(I)I

    move-result v0

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/GridFlow;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_18

    move v14, v13

    move/from16 v13, v18

    goto :goto_12

    :cond_18
    move v13, v9

    move/from16 v14, v19

    :goto_12
    add-int/lit8 v10, p2, 0x1

    move-object/from16 v0, p0

    move/from16 v9, p1

    move/from16 v5, v28

    move/from16 v4, v29

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_19
    new-instance v0, Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;

    int-to-long v3, v11

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    int-to-long v5, v12

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->constructor-impl(J)J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Landroidx/compose/foundation/layout/ResolvedGridItemIndicesResult;-><init>(Landroidx/collection/MutableObjectList;JLjh2;)V

    return-object v0
.end method

.method private static final resolveGridItemIndices_pclAfdo$isAreaOccupied(Landroidx/collection/MutableIntSet;IIII)Z
    .locals 3

    add-int/2addr p3, p1

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-gt p3, v1, :cond_4

    add-int/2addr p4, p2

    if-le p4, v1, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    if-ge p1, p3, :cond_3

    move v1, p2

    :goto_1
    if-ge v1, p4, :cond_2

    invoke-static {p1, v1}, Landroidx/compose/foundation/layout/GridKt;->resolveGridItemIndices_pclAfdo$packCoordinate(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/collection/IntSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_2
    return v0
.end method

.method private static final resolveGridItemIndices_pclAfdo$markAreaOccupied(Landroidx/collection/MutableIntSet;IIII)V
    .locals 3

    add-int/2addr p3, p1

    :goto_0
    if-ge p1, p3, :cond_1

    add-int v0, p2, p4

    move v1, p2

    :goto_1
    if-ge v1, v0, :cond_0

    invoke-static {p1, v1}, Landroidx/compose/foundation/layout/GridKt;->resolveGridItemIndices_pclAfdo$packCoordinate(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/collection/MutableIntSet;->add(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final resolveGridItemIndices_pclAfdo$packCoordinate(II)I
    .locals 1

    shl-int/lit8 p0, p0, 0x10

    const v0, 0xffff

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private static final resolveToZeroBasedIndex(II)I
    .locals 1

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-lez p0, :cond_1

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_1
    add-int/2addr p1, p0

    if-ltz p1, :cond_2

    return p1

    :cond_2
    return v0
.end method

.method public static final varargs rows(Landroidx/compose/foundation/layout/GridConfigurationScope;[Landroidx/compose/foundation/layout/GridTrackSpec;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    instance-of v3, v2, Landroidx/compose/foundation/layout/GridTrackSize;

    if-eqz v3, :cond_0

    check-cast v2, Landroidx/compose/foundation/layout/GridTrackSize;

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/GridTrackSize;->unbox-impl()J

    move-result-wide v2

    invoke-interface {p0, v2, v3}, Landroidx/compose/foundation/layout/GridConfigurationScope;->row-118E5d0(J)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static final wrapIntrinsicException(Lll3;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lll3<",
            "+TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "SubcomposeLayout"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lta8;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Grid intrinsic measurement failed because a SubcomposeLayout (e.g., LazyColumn or LazyRow) was placed inside a track that queries its intrinsic measurements (like `Auto` or `Flex`).\n\nTo fix this, change the track definition to `GridTrackSize.MinMax(min = 0.dp, max = 1.fr)` (or your desired flex weight for max) to explicitly set a minimum base size and bypass the intrinsic measurement pass."

    invoke-static {v0, p0}, Lh2;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    throw p0
.end method
