.class final Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field private final flexBoxConfigState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/layout/FlexBoxConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final resolvedFlexBoxConfig:Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Landroidx/compose/foundation/layout/FlexBoxConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->flexBoxConfigState:Landroidx/compose/runtime/State;

    new-instance p1, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    invoke-direct {p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolvedFlexBoxConfig:Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->measure_3p2s80s$lambda$0(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final applyAlignContentStretch-WWvErGg(Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;Ljava/util/ArrayList;JII)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/foundation/layout/FlexLine;",
            ">;JII)I"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getAlignContent-d9B3MrI$foundation_layout()I

    move-result p0

    const/4 p1, 0x3

    invoke-static {p1}, Landroidx/compose/foundation/layout/FlexAlignContent;->constructor-impl(I)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlexAlignContent;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p0

    const p1, 0x7fffffff

    if-eq p0, p1, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, p1

    mul-int/2addr p0, p6

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result p1

    add-int p3, p5, p0

    if-lt p3, p1, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr p1, p5

    sub-int/2addr p1, p0

    const/4 p0, 0x0

    if-gez p1, :cond_2

    move p1, p0

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    div-int/2addr p1, p3

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p3

    move p4, p0

    :goto_0
    if-ge p0, p3, :cond_3

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/layout/FlexLine;

    invoke-virtual {v0, p4}, Landroidx/compose/foundation/layout/FlexLine;->setCrossStart(I)V

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/layout/FlexLine;->setCrossAxisSize(I)V

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result v0

    add-int/2addr v0, p6

    add-int/2addr p4, v0

    add-int/2addr p5, p1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p5
.end method

.method public static synthetic b(Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IIIZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    invoke-static/range {p0 .. p9}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->measureFlexBox_w1Onq5I$lambda$4(Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IIIZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method private final buildFlexLines-JlE-8fw(Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;Ljava/util/ArrayList;JIIZLnl3;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;",
            ">;JIIZ",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/foundation/layout/FlexLine;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroidx/compose/foundation/layout/FlexLine;

    invoke-direct {v1}, Landroidx/compose/foundation/layout/FlexLine;-><init>()V

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x0

    move-object v6, v1

    move v13, v2

    move v1, v4

    move v2, v1

    move v5, v2

    move v14, v5

    move v15, v14

    :goto_0
    if-ge v1, v3, :cond_3

    move-object/from16 v7, p2

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v9}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v9

    invoke-static {v8, v9}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v9}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v9

    invoke-static {v8, v9}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    if-le v1, v2, :cond_2

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getHypotheticalMainSize()I

    move-result v8

    add-int/2addr v8, v5

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v9

    if-le v8, v9, :cond_2

    invoke-virtual {v6, v2}, Landroidx/compose/foundation/layout/FlexLine;->setStartIndex(I)V

    invoke-virtual {v6, v1}, Landroidx/compose/foundation/layout/FlexLine;->setEndIndex(I)V

    sub-int v9, v5, p5

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-wide/from16 v11, p3

    move/from16 v10, p7

    invoke-direct/range {v5 .. v13}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->processFlexLine-7gjidqw(Landroidx/compose/foundation/layout/FlexLine;Ljava/util/ArrayList;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IZJI)V

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result v2

    add-int/2addr v14, v2

    invoke-virtual {v6, v15}, Landroidx/compose/foundation/layout/FlexLine;->setCrossStart(I)V

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result v2

    add-int v2, v2, p6

    add-int/2addr v15, v2

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result v2

    add-int v2, v2, p6

    sub-int/2addr v13, v2

    if-gez v13, :cond_1

    move v13, v4

    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroidx/compose/foundation/layout/FlexLine;

    invoke-direct {v2}, Landroidx/compose/foundation/layout/FlexLine;-><init>()V

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getHypotheticalMainSize()I

    move-result v5

    add-int v5, v5, p5

    move-object v6, v2

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getHypotheticalMainSize()I

    move-result v7

    add-int v7, v7, p5

    add-int/2addr v7, v5

    move v5, v7

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    invoke-virtual {v6, v2}, Landroidx/compose/foundation/layout/FlexLine;->setStartIndex(I)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v6, v1}, Landroidx/compose/foundation/layout/FlexLine;->setEndIndex(I)V

    sub-int v9, v5, p5

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    move-object/from16 v7, p2

    move-wide/from16 v11, p3

    move/from16 v10, p7

    invoke-direct/range {v5 .. v13}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->processFlexLine-7gjidqw(Landroidx/compose/foundation/layout/FlexLine;Ljava/util/ArrayList;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IZJI)V

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result v1

    add-int/2addr v14, v1

    invoke-virtual {v6, v15}, Landroidx/compose/foundation/layout/FlexLine;->setCrossStart(I)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p8

    invoke-interface {v2, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private final calculateItemCrossPosition-sT6f14c(Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;IIIII)I
    .locals 6

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getAlignSelf-_ov7Qcc$foundation_layout()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/foundation/layout/FlexAlignSelf;->equals-impl0(II)Z

    move-result p0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getAlignSelf-_ov7Qcc$foundation_layout()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexAlignItems;->constructor-impl(I)I

    move-result p0

    invoke-static {p6, p0}, Landroidx/compose/foundation/layout/FlexAlignItems;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v5}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {v5}, Landroidx/compose/foundation/layout/FlexAlignItems;->constructor-impl(I)I

    move-result p0

    invoke-static {p6, p0}, Landroidx/compose/foundation/layout/FlexAlignItems;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v4}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-static {v4}, Landroidx/compose/foundation/layout/FlexAlignItems;->constructor-impl(I)I

    move-result p0

    invoke-static {p6, p0}, Landroidx/compose/foundation/layout/FlexAlignItems;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {v3}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result p0

    goto :goto_0

    :cond_3
    invoke-static {v3}, Landroidx/compose/foundation/layout/FlexAlignItems;->constructor-impl(I)I

    move-result p0

    invoke-static {p6, p0}, Landroidx/compose/foundation/layout/FlexAlignItems;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v2}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result p0

    goto :goto_0

    :cond_4
    invoke-static {v2}, Landroidx/compose/foundation/layout/FlexAlignItems;->constructor-impl(I)I

    move-result p0

    invoke-static {p6, p0}, Landroidx/compose/foundation/layout/FlexAlignItems;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result p0

    goto :goto_0

    :cond_5
    invoke-static {v5}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result p0

    :goto_0
    invoke-static {v5}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlexAlignSelf;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    invoke-static {v4}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlexAlignSelf;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_7

    sub-int/2addr p5, p4

    return p5

    :cond_7
    invoke-static {v3}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlexAlignSelf;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_8

    sub-int/2addr p5, p4

    div-int/2addr p5, v4

    return p5

    :cond_8
    invoke-static {v2}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlexAlignSelf;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_9

    return v0

    :cond_9
    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlexAlignSelf;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_a

    const/high16 p0, -0x80000000

    if-eq p2, p0, :cond_a

    sub-int/2addr p3, p2

    return p3

    :cond_a
    return v0
.end method

.method private final calculateLineCrossAxisSize(Ljava/util/ArrayList;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;Landroidx/compose/foundation/layout/FlexLine;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;",
            ">;",
            "Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;",
            "Landroidx/compose/foundation/layout/FlexLine;",
            "I)V"
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result v1

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/FlexLine;->getStartIndex()I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/FlexLine;->getEndIndex()I

    move-result v4

    const-string v5, ") is out of bounds [0, "

    if-ltz v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v3, v6, :cond_8

    if-ltz v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v4, v6, :cond_7

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_2
    if-ge v3, v4, :cond_6

    move-object/from16 v8, p1

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getHasBaseline()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getAlignItems-20X20zU$foundation_layout()I

    move-result v9

    const/4 v10, 0x4

    invoke-static {v10}, Landroidx/compose/foundation/layout/FlexAlignItems;->constructor-impl(I)I

    move-result v10

    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/FlexAlignItems;->equals-impl0(II)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getAlignSelf-_ov7Qcc$foundation_layout()I

    move-result v9

    invoke-static {v2}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result v10

    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/FlexAlignSelf;->equals-impl0(II)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_4

    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getMeasurable()Landroidx/compose/ui/layout/Measurable;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getTargetMainSize()I

    move-result v10

    invoke-interface {v9, v10}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v9

    goto :goto_3

    :cond_3
    move v9, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v11}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getMeasurable()Landroidx/compose/ui/layout/Measurable;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getTargetMainSize()I

    move-result v10

    invoke-interface {v9, v10}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v9

    :goto_3
    invoke-virtual {v11, v9}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setCrossAxisSize(I)V

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getCrossAxisSize()I

    move-result v9

    move-object/from16 v12, p2

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p2

    move/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->measureItem(Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IZI)I

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getPlaceable()Landroidx/compose/ui/layout/Placeable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11, v9, v12}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getBaseline(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;)I

    move-result v9

    invoke-virtual {v11, v9}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setBaseline(I)V

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getCrossAxisSize()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v9, v5, v7

    :goto_5
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v0, v5}, Landroidx/compose/foundation/layout/FlexLine;->setMaxAboveBaseline(I)V

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/layout/FlexLine;->setCrossAxisSize(I)V

    return-void

    :cond_7
    move-object/from16 v8, p1

    const-string v0, "toIndex ("

    invoke-static {v4, v0, v5}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, v0}, Leq;->c(ILjava/lang/StringBuilder;)V

    return-void

    :cond_8
    move-object/from16 v8, p1

    const-string v0, "fromIndex ("

    invoke-static {v3, v0, v5}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, v0}, Leq;->c(ILjava/lang/StringBuilder;)V

    return-void
.end method

.method private final calculateLineCrossPositions(Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;ILjava/util/ArrayList;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/foundation/layout/FlexLine;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v0

    mul-int/2addr p0, p5

    sub-int/2addr p2, p4

    sub-int/2addr p2, p0

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getAlignContent-d9B3MrI$foundation_layout()I

    move-result p0

    const/4 p4, 0x5

    invoke-static {p4}, Landroidx/compose/foundation/layout/FlexAlignContent;->constructor-impl(I)I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/foundation/layout/FlexAlignContent;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    div-int p0, p2, p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexAlignContent;->constructor-impl(I)I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/foundation/layout/FlexAlignContent;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v0

    div-int p0, p2, p0

    goto :goto_0

    :cond_2
    move p0, v2

    :goto_0
    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getAlignContent-d9B3MrI$foundation_layout()I

    move-result v1

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexAlignContent;->constructor-impl(I)I

    move-result v0

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/FlexAlignContent;->equals-impl0(II)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result p4

    invoke-static {v3}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v0

    invoke-static {p4, v0}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result p4

    if-eqz p4, :cond_7

    :cond_3
    move p2, v2

    goto :goto_1

    :cond_4
    invoke-static {v3}, Landroidx/compose/foundation/layout/FlexAlignContent;->constructor-impl(I)I

    move-result v0

    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/FlexAlignContent;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_5

    div-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_5
    invoke-static {p4}, Landroidx/compose/foundation/layout/FlexAlignContent;->constructor-impl(I)I

    move-result p4

    invoke-static {v1, p4}, Landroidx/compose/foundation/layout/FlexAlignContent;->equals-impl0(II)Z

    move-result p4

    if-eqz p4, :cond_6

    div-int/lit8 p2, p0, 0x2

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result p4

    invoke-static {v3}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v0

    invoke-static {p4, v0}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result p4

    if-eqz p4, :cond_3

    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result p1

    invoke-static {v3}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result p4

    invoke-static {p1, p4}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {p3}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object p1

    invoke-static {p1}, Lkx6;->l(Ly74;)Lw74;

    move-result-object p1

    goto :goto_2

    :cond_8
    invoke-static {p3}, Lu96;->f(Ljava/util/Collection;)Ly74;

    move-result-object p1

    :goto_2
    iget p4, p1, Lw74;->b:I

    iget v0, p1, Lw74;->c:I

    iget p1, p1, Lw74;->d:I

    if-lez p1, :cond_9

    if-le p4, v0, :cond_a

    :cond_9
    if-gez p1, :cond_b

    if-gt v0, p4, :cond_b

    :cond_a
    :goto_3
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/layout/FlexLine;

    invoke-virtual {v1, p2}, Landroidx/compose/foundation/layout/FlexLine;->setCrossStart(I)V

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result v1

    add-int/2addr v1, p0

    add-int/2addr v1, p5

    add-int/2addr p2, v1

    if-eq p4, v0, :cond_b

    add-int/2addr p4, p1

    goto :goto_3

    :cond_b
    :goto_4
    return-void
.end method

.method private final createFlexItem-XsoA538(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;ZJ)Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;
    .locals 3

    invoke-interface {p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->getParentData()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroidx/compose/foundation/layout/FlexBoxChildDataNode;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/foundation/layout/FlexBoxChildDataNode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {v0, p1, p4, p5}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->prepare-RMq0m1M(Landroidx/compose/ui/unit/Density;J)V

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/FlexBoxChildDataNode;->getConfig()Landroidx/compose/foundation/layout/FlexConfig;

    move-result-object p0

    invoke-interface {p0, v0}, Landroidx/compose/foundation/layout/FlexConfig;->configure(Landroidx/compose/foundation/layout/FlexConfigScope;)V

    :cond_1
    invoke-virtual {v0, p2}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setMeasurable(Landroidx/compose/ui/layout/Measurable;)V

    invoke-virtual {v0, p3}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getMinMainAxisSize$foundation_layout(Z)I

    move-result p0

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getBasis-d-lZNVs$foundation_layout()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/FlexBasis;->isDp-impl$foundation_layout(J)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getBasis-d-lZNVs$foundation_layout()J

    move-result-wide p2

    invoke-static {p2, p3}, Landroidx/compose/foundation/layout/FlexBasis;->getValue-impl$foundation_layout(J)F

    move-result p2

    invoke-static {p2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p2

    invoke-interface {p1, p2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getBasis-d-lZNVs$foundation_layout()J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/FlexBasis;->isPercent-impl$foundation_layout(J)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p4, p5}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p1

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_4

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getBasis-d-lZNVs$foundation_layout()J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/FlexBasis;->getValue-impl$foundation_layout(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p4, p5}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getBasis-d-lZNVs$foundation_layout()J

    move-result-wide p2

    invoke-static {p2, p3}, Landroidx/compose/foundation/layout/FlexBasis;->getValue-impl$foundation_layout(J)F

    move-result p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v0, p3}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getMaxContentSize$foundation_layout(Z)I

    move-result p1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getBasis-d-lZNVs$foundation_layout()J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/foundation/layout/FlexBasis;->isAuto-impl$foundation_layout(J)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v0, p3}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getMaxContentSize$foundation_layout(Z)I

    move-result p1

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p3}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getMaxContentSize$foundation_layout(Z)I

    move-result p1

    :goto_2
    invoke-virtual {v0, p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setFlexBaseSize(I)V

    if-ge p1, p0, :cond_7

    goto :goto_3

    :cond_7
    move p0, p1

    :goto_3
    invoke-virtual {v0, p0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setHypotheticalMainSize(I)V

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getHypotheticalMainSize()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setTargetMainSize(I)V

    return-object v0
.end method

.method private final isMainAxisReversedForLayout(Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;Landroidx/compose/ui/unit/LayoutDirection;)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p0

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p0

    const/4 v3, 0x3

    invoke-static {v3}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v3

    invoke-static {p0, v3}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result v3

    invoke-static {v2}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p1

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return p0

    :cond_3
    :goto_2
    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p2, p1, :cond_5

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    return p0
.end method

.method private final measureFlexBox-w1Onq5I(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;Ljava/util/List;JZ)Landroidx/compose/ui/layout/MeasureResult;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;JZ)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p3

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v8, p2

    move-wide/from16 v3, p4

    invoke-direct {v0, v8, v3, v4}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->needUpfrontCrossAxisCalculation-RMq0m1M(Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;J)Z

    move-result v1

    move-object v2, v6

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v9

    move v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x1

    if-ge v12, v9, :cond_3

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/layout/Measurable;

    move-object/from16 v1, p1

    move-wide v4, v3

    move/from16 v3, p6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->createFlexItem-XsoA538(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;ZJ)Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getOrder$foundation_layout()I

    move-result v0

    if-eqz v0, :cond_0

    move v13, v14

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getAlignSelf-_ov7Qcc$foundation_layout()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/FlexAlignSelf;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getAlignSelf-_ov7Qcc$foundation_layout()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/FlexAlignSelf;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v11, v14

    :cond_2
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v3, p4

    goto :goto_0

    :cond_3
    if-eqz v13, :cond_4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v14, :cond_4

    new-instance v0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$measureFlexBox-w1Onq5I$$inlined$sortBy$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy$measureFlexBox-w1Onq5I$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, v7}, Lnn1;->J(Ljava/util/Comparator;Ljava/util/List;)V

    :cond_4
    invoke-virtual {v8}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->mainAxisGap()I

    move-result v9

    invoke-virtual {v8}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->crossAxisGap()I

    move-result v12

    new-instance v13, Ljava/util/ArrayList;

    const/16 v0, 0x8

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Landroidx/compose/foundation/layout/FlexLine;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/FlexLine;-><init>()V

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    move v8, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v16, 0x0

    move-object v1, v0

    const/4 v0, 0x0

    :goto_1
    const/16 v17, 0x2

    if-ge v0, v15, :cond_8

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v5

    invoke-static {v14}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v5

    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    move v10, v4

    move v5, v11

    move v11, v0

    move-object v0, v7

    goto :goto_3

    :cond_6
    :goto_2
    if-le v0, v2, :cond_5

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getHypotheticalMainSize()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v6

    if-le v5, v6, :cond_5

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/layout/FlexLine;->setStartIndex(I)V

    invoke-virtual {v1, v0}, Landroidx/compose/foundation/layout/FlexLine;->setEndIndex(I)V

    sub-int/2addr v3, v9

    move v10, v4

    move-object v2, v7

    move v5, v11

    move-wide/from16 v6, p4

    move v11, v0

    move v4, v3

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->processFlexLine-7gjidqw(Landroidx/compose/foundation/layout/FlexLine;Ljava/util/ArrayList;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IZJI)V

    move-object v0, v2

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result v2

    add-int v16, v16, v2

    invoke-virtual {v1, v10}, Landroidx/compose/foundation/layout/FlexLine;->setCrossStart(I)V

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result v2

    add-int/2addr v2, v12

    add-int v4, v2, v10

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result v2

    add-int/2addr v2, v12

    sub-int v2, v8, v2

    if-gez v2, :cond_7

    const/4 v2, 0x0

    :cond_7
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/compose/foundation/layout/FlexLine;

    invoke-direct {v1}, Landroidx/compose/foundation/layout/FlexLine;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getHypotheticalMainSize()I

    move-result v3

    add-int/2addr v3, v9

    move v8, v2

    move v2, v11

    goto :goto_4

    :goto_3
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getHypotheticalMainSize()I

    move-result v4

    add-int/2addr v4, v9

    add-int/2addr v4, v3

    move v3, v4

    move v4, v10

    :goto_4
    add-int/lit8 v6, v11, 0x1

    move-object v7, v0

    move v11, v5

    move v0, v6

    goto/16 :goto_1

    :cond_8
    move v10, v4

    move-object v0, v7

    move v5, v11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/layout/FlexLine;->setStartIndex(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/layout/FlexLine;->setEndIndex(I)V

    sub-int v4, v3, v9

    move-object/from16 v3, p2

    move-wide/from16 v6, p4

    move-object v2, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->processFlexLine-7gjidqw(Landroidx/compose/foundation/layout/FlexLine;Ljava/util/ArrayList;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IZJI)V

    move-object v7, v2

    move v11, v5

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result v0

    add-int v16, v16, v0

    invoke-virtual {v1, v10}, Landroidx/compose/foundation/layout/FlexLine;->setCrossStart(I)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    move/from16 v5, v16

    goto :goto_6

    :cond_9
    move-object v7, v0

    move v11, v5

    goto :goto_5

    :goto_6
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v14, :cond_a

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/foundation/layout/FlexLine;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result v1

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/foundation/layout/FlexLine;

    invoke-virtual {v2, v1}, Landroidx/compose/foundation/layout/FlexLine;->setCrossAxisSize(I)V

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v3, p4

    move v6, v12

    move-object v2, v13

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->applyAlignContentStretch-WWvErGg(Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;Ljava/util/ArrayList;JII)I

    move-result v5

    move v8, v6

    move-wide/from16 v22, v3

    move-object v3, v1

    move-object v1, v2

    move v4, v5

    move-object v2, v7

    move v5, v11

    move-wide/from16 v6, v22

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->measureFlexItems-HjG58DU(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IZJ)I

    move-result v4

    move-object v7, v2

    move-object v2, v1

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v1, p2

    move-object v3, v2

    move v5, v8

    move v2, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->calculateLineCrossPositions(Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;ILjava/util/ArrayList;II)V

    move-object v2, v3

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v1

    invoke-static/range {v17 .. v17}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v1

    invoke-direct {v0, v2, v1}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->totalCrossAxisSize(Ljava/util/ArrayList;Z)I

    move-result v1

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/compose/foundation/layout/FlexLine;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/FlexLine;->getMainAxisSize()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v14

    if-gt v14, v5, :cond_d

    :goto_7
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroidx/compose/foundation/layout/FlexLine;

    invoke-virtual {v8}, Landroidx/compose/foundation/layout/FlexLine;->getMainAxisSize()I

    move-result v8

    if-ge v4, v8, :cond_c

    move-object v3, v6

    move v4, v8

    :cond_c
    if-eq v14, v5, :cond_d

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_d
    :goto_8
    check-cast v3, Landroidx/compose/foundation/layout/FlexLine;

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/FlexLine;->getMainAxisSize()I

    move-result v3

    goto :goto_9

    :cond_e
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v3

    :goto_9
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v4

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v5

    if-ge v3, v4, :cond_f

    move v3, v4

    :cond_f
    if-le v3, v5, :cond_10

    goto :goto_a

    :cond_10
    move v5, v3

    :goto_a
    if-eqz p6, :cond_13

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    if-ge v1, v3, :cond_11

    move v1, v3

    :cond_11
    if-le v1, v4, :cond_12

    goto :goto_b

    :cond_12
    move v4, v1

    :goto_b
    move/from16 v17, v4

    move/from16 v16, v5

    goto :goto_d

    :cond_13
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    if-ge v1, v3, :cond_14

    move v1, v3

    :cond_14
    if-le v1, v4, :cond_15

    goto :goto_c

    :cond_15
    move v4, v1

    :goto_c
    move/from16 v16, v4

    move/from16 v17, v5

    :goto_d
    new-instance v19, Landroidx/compose/foundation/layout/m;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v1, v0

    move-object v3, v7

    move v8, v9

    move/from16 v6, v16

    move/from16 v7, v17

    move-object/from16 v0, v19

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Landroidx/compose/foundation/layout/m;-><init>(Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IIIZ)V

    const/16 v20, 0x4

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v15, p1

    invoke-static/range {v15 .. v21}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method private static final measureFlexBox_w1Onq5I$lambda$4(Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IIIZLandroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 1

    invoke-interface {p3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p3

    move-object v0, p2

    move-object p2, p1

    move-object p1, p9

    move p9, p8

    move p8, p7

    move p7, p6

    move p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, v0

    invoke-direct/range {p0 .. p9}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->placeFlexItems(Landroidx/compose/ui/layout/Placeable$PlacementScope;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IIIZ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final measureFlexItems-HjG58DU(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IZJ)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/foundation/layout/FlexLine;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;",
            ">;",
            "Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;",
            "IZJ)I"
        }
    .end annotation

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    move/from16 v9, p4

    move v8, v0

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_d

    move-object/from16 v10, p1

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroidx/compose/foundation/layout/FlexLine;

    if-eqz p5, :cond_0

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result v3

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    invoke-virtual {v11}, Landroidx/compose/foundation/layout/FlexLine;->getStartIndex()I

    move-result v4

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/FlexLine;->getEndIndex()I

    move-result v12

    const-string v5, ") is out of bounds [0, "

    if-ltz v4, :cond_c

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v4, v6, :cond_c

    if-ltz v12, :cond_b

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt v12, v6, :cond_b

    move v13, v3

    move v14, v4

    :goto_2
    if-ge v14, v12, :cond_8

    move-object/from16 v15, p2

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getPlaceable()Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    if-eqz v3, :cond_2

    if-nez p5, :cond_1

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getCrossAxisSize()I

    move-result v3

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_1
    move/from16 v16, v2

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v4}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getAlignSelf-_ov7Qcc$foundation_layout()I

    move-result v3

    const/4 v5, 0x4

    invoke-static {v5}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result v5

    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/FlexAlignSelf;->equals-impl0(II)Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_4

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getAlignSelf-_ov7Qcc$foundation_layout()I

    move-result v3

    invoke-static {v2}, Landroidx/compose/foundation/layout/FlexAlignSelf;->constructor-impl(I)I

    move-result v6

    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/FlexAlignSelf;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getAlignItems-20X20zU$foundation_layout()I

    move-result v3

    const/4 v6, 0x3

    invoke-static {v6}, Landroidx/compose/foundation/layout/FlexAlignItems;->constructor-impl(I)I

    move-result v7

    invoke-static {v3, v7}, Landroidx/compose/foundation/layout/FlexAlignItems;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getAlignContent-d9B3MrI$foundation_layout()I

    move-result v3

    invoke-static {v6}, Landroidx/compose/foundation/layout/FlexAlignContent;->constructor-impl(I)I

    move-result v6

    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/FlexAlignContent;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    move v7, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v7, v5

    :goto_4
    if-eqz v7, :cond_5

    invoke-virtual {v11}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result v3

    move/from16 v16, v2

    move v6, v3

    move v2, v5

    move-object/from16 v3, p0

    :goto_5
    move-object/from16 v5, p3

    goto :goto_6

    :cond_5
    move v6, v2

    move/from16 v16, v6

    move-object/from16 v3, p0

    move v2, v5

    goto :goto_5

    :goto_6
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->measureItem(Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IZI)I

    move-result v4

    if-nez p5, :cond_6

    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_7

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_7
    :goto_7
    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v16

    goto/16 :goto_2

    :cond_8
    move-object/from16 v15, p2

    move/from16 v16, v2

    if-nez p5, :cond_9

    invoke-virtual {v11, v13}, Landroidx/compose/foundation/layout/FlexLine;->setCrossAxisSize(I)V

    add-int/2addr v9, v13

    :cond_9
    invoke-virtual {v11}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result v2

    sub-int/2addr v8, v2

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->crossAxisGap()I

    move-result v2

    sub-int/2addr v8, v2

    if-gez v8, :cond_a

    move/from16 v8, v16

    :cond_a
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v16

    goto/16 :goto_0

    :cond_b
    move-object/from16 v15, p2

    move/from16 v16, v2

    const-string v0, "toIndex ("

    invoke-static {v12, v0, v5}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, v0}, Leq;->c(ILjava/lang/StringBuilder;)V

    return v16

    :cond_c
    move-object/from16 v15, p2

    move/from16 v16, v2

    const-string v0, "fromIndex ("

    invoke-static {v4, v0, v5}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, v0}, Leq;->c(ILjava/lang/StringBuilder;)V

    return v16

    :cond_d
    if-eqz p5, :cond_e

    return p4

    :cond_e
    return v9
.end method

.method private final measureItem(Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IZI)I
    .locals 2

    invoke-virtual {p2}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p0

    const/4 p2, 0x2

    invoke-static {p2}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result p2

    invoke-static {p0, p2}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p4, :cond_6

    if-lez p3, :cond_6

    sget-object p2, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getTargetMainSize()I

    move-result p4

    goto :goto_2

    :cond_2
    if-le p3, p5, :cond_3

    move p4, p5

    goto :goto_2

    :cond_3
    move p4, p3

    :goto_2
    if-eqz p0, :cond_4

    if-le p3, p5, :cond_5

    move p3, p5

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getTargetMainSize()I

    move-result p3

    :cond_5
    :goto_3
    invoke-virtual {p2, p4, p3}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    move-result-wide p2

    goto :goto_4

    :cond_6
    if-eqz p0, :cond_7

    sget-object p2, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getTargetMainSize()I

    move-result p3

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getTargetMainSize()I

    move-result p4

    invoke-virtual {p2, p3, p4, v0, p5}, Landroidx/compose/ui/unit/Constraints$Companion;->fitPrioritizingWidth-Zbe2FdA(IIII)J

    move-result-wide p2

    goto :goto_4

    :cond_7
    sget-object p2, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getTargetMainSize()I

    move-result p3

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getTargetMainSize()I

    move-result p4

    invoke-virtual {p2, v0, p5, p3, p4}, Landroidx/compose/ui/unit/Constraints$Companion;->fitPrioritizingHeight-Zbe2FdA(IIII)J

    move-result-wide p2

    :goto_4
    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getMeasurable()Landroidx/compose/ui/layout/Measurable;

    move-result-object p4

    if-eqz p4, :cond_8

    invoke-interface {p4, p2, p3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    goto :goto_5

    :cond_8
    const/4 p2, 0x0

    :goto_5
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setPlaceable(Landroidx/compose/ui/layout/Placeable;)V

    if-eqz p0, :cond_a

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getPlaceable()Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result p2

    goto :goto_6

    :cond_9
    move p2, v0

    goto :goto_6

    :cond_a
    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getPlaceable()Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result p2

    :goto_6
    invoke-virtual {p1, p2}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setCrossAxisSize(I)V

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getPlaceable()Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    goto :goto_7

    :cond_b
    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getPlaceable()Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    :cond_c
    :goto_7
    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setMainAxisSize(I)V

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getCrossAxisSize()I

    move-result p0

    return p0
.end method

.method private static final measure_3p2s80s$lambda$0(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Lj59;
    .locals 0

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method private final needUpfrontCrossAxisCalculation-RMq0m1M(Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;J)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getAlignItems-20X20zU$foundation_layout()I

    move-result p0

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexAlignItems;->constructor-impl(I)I

    move-result v1

    invoke-static {p0, v1}, Landroidx/compose/foundation/layout/FlexAlignItems;->equals-impl0(II)Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getAlignItems-20X20zU$foundation_layout()I

    move-result p0

    const/4 v2, 0x4

    invoke-static {v2}, Landroidx/compose/foundation/layout/FlexAlignItems;->constructor-impl(I)I

    move-result v2

    invoke-static {p0, v2}, Landroidx/compose/foundation/layout/FlexAlignItems;->equals-impl0(II)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result p0

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v2

    invoke-static {p0, v2}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result p0

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v2

    invoke-static {p0, v2}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getAlignContent-d9B3MrI$foundation_layout()I

    move-result p0

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexAlignContent;->constructor-impl(I)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/FlexAlignContent;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    const p1, 0x7fffffff

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private final placeFlexItems(Landroidx/compose/ui/layout/Placeable$PlacementScope;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IIIZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/foundation/layout/FlexLine;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;",
            ">;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;",
            "IIIZ)V"
        }
    .end annotation

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    move-object/from16 v2, p2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroidx/compose/foundation/layout/FlexLine;

    if-eqz p9, :cond_0

    move/from16 v7, p6

    :goto_1
    move-object/from16 v4, p0

    move-object/from16 v3, p4

    move-object/from16 v6, p5

    goto :goto_2

    :cond_0
    move/from16 v7, p7

    goto :goto_1

    :goto_2
    invoke-direct {v4, v6, v3}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->isMainAxisReversedForLayout(Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;Landroidx/compose/ui/unit/LayoutDirection;)Z

    move-result v10

    move-object/from16 v5, p3

    move/from16 v9, p8

    invoke-direct/range {v4 .. v10}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->positionItemsOnMainAxis(Ljava/util/ArrayList;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;ILandroidx/compose/foundation/layout/FlexLine;IZ)V

    invoke-virtual {v8}, Landroidx/compose/foundation/layout/FlexLine;->getStartIndex()I

    move-result v4

    invoke-virtual {v8}, Landroidx/compose/foundation/layout/FlexLine;->getEndIndex()I

    move-result v5

    const-string v6, ") is out of bounds [0, "

    if-ltz v4, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v4, v7, :cond_6

    if-ltz v5, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v5, v7, :cond_5

    :goto_3
    if-ge v4, v5, :cond_4

    move-object/from16 v7, p3

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    if-eqz p9, :cond_1

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getMainPosition()I

    move-result v8

    :goto_4
    move v11, v8

    goto :goto_5

    :cond_1
    invoke-virtual {v6}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getCrossPosition()I

    move-result v8

    goto :goto_4

    :goto_5
    if-eqz p9, :cond_2

    invoke-virtual {v6}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getCrossPosition()I

    move-result v8

    :goto_6
    move v12, v8

    goto :goto_7

    :cond_2
    invoke-virtual {v6}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getMainPosition()I

    move-result v8

    goto :goto_6

    :goto_7
    invoke-virtual {v6}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getPlaceable()Landroidx/compose/ui/layout/Placeable;

    move-result-object v10

    if-eqz v10, :cond_3

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v15}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v7, p3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v7, p3

    const-string v0, "toIndex ("

    invoke-static {v5, v0, v6}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, v0}, Leq;->c(ILjava/lang/StringBuilder;)V

    return-void

    :cond_6
    move-object/from16 v7, p3

    const-string v0, "fromIndex ("

    invoke-static {v4, v0, v6}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, v0}, Leq;->c(ILjava/lang/StringBuilder;)V

    :cond_7
    return-void
.end method

.method private final positionItemsOnMainAxis(Ljava/util/ArrayList;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;ILandroidx/compose/foundation/layout/FlexLine;IZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;",
            ">;",
            "Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;",
            "I",
            "Landroidx/compose/foundation/layout/FlexLine;",
            "IZ)V"
        }
    .end annotation

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/layout/FlexLine;->getEndIndex()I

    move-result v0

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/layout/FlexLine;->getStartIndex()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/layout/FlexLine;->getMainAxisSize()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {p2}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getJustifyContent-GomtQF4$foundation_layout()I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v3}, Landroidx/compose/foundation/layout/FlexJustifyContent;->constructor-impl(I)I

    move-result v4

    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/FlexJustifyContent;->equals-impl0(II)Z

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    div-int v0, v1, v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    invoke-static {v4}, Landroidx/compose/foundation/layout/FlexJustifyContent;->constructor-impl(I)I

    move-result v4

    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/FlexJustifyContent;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_3

    if-le v0, v7, :cond_2

    sub-int/2addr v0, v7

    div-int v0, v1, v0

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_0

    :cond_3
    invoke-static {v5}, Landroidx/compose/foundation/layout/FlexJustifyContent;->constructor-impl(I)I

    move-result v4

    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/FlexJustifyContent;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/2addr v0, v7

    div-int v0, v1, v0

    :goto_0
    invoke-virtual {p2}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getJustifyContent-GomtQF4$foundation_layout()I

    move-result v2

    invoke-static {v7}, Landroidx/compose/foundation/layout/FlexJustifyContent;->constructor-impl(I)I

    move-result v4

    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/FlexJustifyContent;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p6, :cond_9

    :cond_4
    move v1, v6

    goto :goto_1

    :cond_5
    const/4 v4, 0x2

    invoke-static {v4}, Landroidx/compose/foundation/layout/FlexJustifyContent;->constructor-impl(I)I

    move-result v4

    invoke-static {v2, v4}, Landroidx/compose/foundation/layout/FlexJustifyContent;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_6

    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_6
    invoke-static {v3}, Landroidx/compose/foundation/layout/FlexJustifyContent;->constructor-impl(I)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/FlexJustifyContent;->equals-impl0(II)Z

    move-result v3

    if-eqz v3, :cond_7

    div-int/lit8 v1, v0, 0x2

    goto :goto_1

    :cond_7
    invoke-static {v5}, Landroidx/compose/foundation/layout/FlexJustifyContent;->constructor-impl(I)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/FlexJustifyContent;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v0

    goto :goto_1

    :cond_8
    if-eqz p6, :cond_4

    :cond_9
    :goto_1
    if-eqz p6, :cond_a

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/layout/FlexLine;->getEndIndex()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/layout/FlexLine;->getStartIndex()I

    move-result v3

    invoke-static {v2, v3}, Lkx6;->k(II)Lw74;

    move-result-object v2

    goto :goto_2

    :cond_a
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/layout/FlexLine;->getStartIndex()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/layout/FlexLine;->getEndIndex()I

    move-result v3

    invoke-static {v2, v3}, Lkx6;->n(II)Ly74;

    move-result-object v2

    :goto_2
    iget v3, v2, Lw74;->b:I

    iget v4, v2, Lw74;->c:I

    iget v2, v2, Lw74;->d:I

    if-lez v2, :cond_b

    if-le v3, v4, :cond_c

    :cond_b
    if-gez v2, :cond_d

    if-gt v4, v3, :cond_d

    :cond_c
    :goto_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    invoke-virtual {v7, v1}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setMainPosition(I)V

    invoke-virtual {v7}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getTargetMainSize()I

    move-result v5

    add-int/2addr v5, v0

    add-int v5, v5, p5

    add-int/2addr v1, v5

    invoke-virtual {v7}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getCrossAxisSize()I

    move-result v10

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/layout/FlexLine;->getCrossStart()I

    move-result v5

    invoke-virtual {v7}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getBaseline()I

    move-result v8

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/layout/FlexLine;->getMaxAboveBaseline()I

    move-result v9

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result v11

    invoke-virtual {p2}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getAlignItems-20X20zU$foundation_layout()I

    move-result v12

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->calculateItemCrossPosition-sT6f14c(Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;IIIII)I

    move-result v8

    add-int/2addr v5, v8

    invoke-virtual {v7, v5}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setCrossPosition(I)V

    if-eq v3, v4, :cond_d

    add-int/2addr v3, v2

    goto :goto_3

    :cond_d
    :goto_4
    return-void
.end method

.method private final processFlexLine-7gjidqw(Landroidx/compose/foundation/layout/FlexLine;Ljava/util/ArrayList;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IZJI)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/FlexLine;",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;",
            ">;",
            "Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;",
            "IZJI)V"
        }
    .end annotation

    invoke-virtual {p3}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v3, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Landroidx/compose/foundation/layout/FlexLine;->getStartIndex()I

    move-result v6

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/FlexLine;->getEndIndex()I

    move-result v7

    invoke-static/range {p6 .. p7}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v9

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move v8, p4

    invoke-direct/range {v2 .. v9}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolveFlexibleLengths(ZLjava/util/ArrayList;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IIII)I

    move-result p4

    invoke-virtual {p1, p4}, Landroidx/compose/foundation/layout/FlexLine;->setMainAxisSize(I)V

    if-eqz p5, :cond_2

    move/from16 p4, p8

    invoke-direct {p0, p2, p3, p1, p4}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->calculateLineCrossAxisSize(Ljava/util/ArrayList;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;Landroidx/compose/foundation/layout/FlexLine;I)V

    :cond_2
    return-void
.end method

.method private final resolveFlexBoxConfig-3p2s80s(Landroidx/compose/foundation/layout/FlexBoxConfig;Landroidx/compose/ui/unit/Density;J)Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolvedFlexBoxConfig:Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    invoke-virtual {v0, p2, p3, p4}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->prepare-0kLqBqw(Landroidx/compose/ui/unit/Density;J)V

    iget-object p2, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolvedFlexBoxConfig:Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    invoke-interface {p1, p2}, Landroidx/compose/foundation/layout/FlexBoxConfig;->configure(Landroidx/compose/foundation/layout/FlexBoxConfigScope;)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolvedFlexBoxConfig:Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    return-object p0
.end method

.method private final resolveFlexibleLengths(ZLjava/util/ArrayList;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;IIII)I
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;",
            ">;",
            "Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;",
            "IIII)I"
        }
    .end annotation

    move-object/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p7

    sub-int v4, v2, v1

    const/4 v5, 0x0

    if-lez v4, :cond_0

    add-int/lit8 v6, v4, -0x1

    invoke-virtual/range {p3 .. p3}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->mainAxisGap()I

    move-result v7

    mul-int/2addr v7, v6

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    const v6, 0x7fffffff

    const-string v8, "toIndex ("

    const-string v9, "fromIndex ("

    const-string v10, ") is out of bounds [0, "

    if-ne v3, v6, :cond_4

    if-ltz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v1, v3, :cond_3

    if-ltz v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_2

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getHypotheticalMainSize()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setTargetMainSize(I)V

    invoke-virtual {v3}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getTargetMainSize()I

    move-result v3

    add-int/2addr v7, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v7

    :cond_2
    invoke-static {v2, v8, v10}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0, v1}, Leq;->c(ILjava/lang/StringBuilder;)V

    return v5

    :cond_3
    invoke-static {v1, v9, v10}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0, v1}, Leq;->c(ILjava/lang/StringBuilder;)V

    return v5

    :cond_4
    move/from16 v11, p6

    if-ge v11, v3, :cond_5

    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    move v11, v5

    :goto_2
    if-ltz v1, :cond_1d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gt v1, v12, :cond_1d

    if-ltz v2, :cond_1c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gt v2, v12, :cond_1c

    move v13, v1

    move v14, v5

    move v15, v14

    move/from16 v18, v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    :goto_3
    if-ge v13, v2, :cond_b

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    const/16 p0, 0x0

    move-object/from16 v12, v20

    check-cast v12, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    if-eqz v11, :cond_6

    invoke-virtual {v12}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getGrow$foundation_layout()F

    move-result v20

    goto :goto_4

    :cond_6
    invoke-virtual {v12}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getShrink$foundation_layout()F

    move-result v20

    :goto_4
    cmpg-float v21, v20, p0

    if-nez v21, :cond_7

    goto :goto_5

    :cond_7
    if-nez v11, :cond_9

    invoke-virtual {v12}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getFlexBaseSize()I

    move-result v5

    invoke-virtual {v12}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getHypotheticalMainSize()I

    move-result v6

    if-ge v5, v6, :cond_8

    :goto_5
    invoke-virtual {v12}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getHypotheticalMainSize()I

    move-result v5

    invoke-virtual {v12, v5}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setTargetMainSize(I)V

    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setFrozen(Z)V

    invoke-virtual {v12}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getTargetMainSize()I

    move-result v5

    add-int/2addr v14, v5

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :cond_9
    invoke-virtual {v12, v5}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setFrozen(Z)V

    add-int/lit8 v18, v18, 0x1

    invoke-virtual {v12}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getFlexBaseSize()I

    move-result v5

    add-int/2addr v15, v5

    add-float v16, v16, v20

    if-eqz v11, :cond_a

    invoke-virtual {v12}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getGrow$foundation_layout()F

    move-result v5

    add-float v17, v5, v17

    goto :goto_6

    :cond_a
    invoke-virtual {v12}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getShrink$foundation_layout()F

    move-result v5

    invoke-virtual {v12}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getFlexBaseSize()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float v19, v5, v19

    :goto_6
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    goto :goto_3

    :cond_b
    const/16 p0, 0x0

    sub-int v5, v3, v7

    sub-int/2addr v5, v14

    sub-int/2addr v5, v15

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v11, :cond_11

    add-int v4, v7, v14

    add-int/2addr v4, v15

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v4, v16, v6

    if-gez v4, :cond_c

    mul-float v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v4, v4, v6

    if-gez v4, :cond_c

    move v3, v5

    :cond_c
    if-ltz v1, :cond_10

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v1, v4, :cond_10

    if-ltz v2, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v2, v4, :cond_f

    const/4 v5, 0x0

    :goto_7
    if-ge v1, v2, :cond_1b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->isFrozen()Z

    move-result v6

    if-nez v6, :cond_e

    cmpl-float v6, v17, p0

    if-lez v6, :cond_d

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getGrow$foundation_layout()F

    move-result v6

    div-float v6, v6, v17

    goto :goto_8

    :cond_d
    move/from16 v6, p0

    :goto_8
    mul-float/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v8, v6

    sub-float/2addr v3, v8

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getGrow$foundation_layout()F

    move-result v8

    sub-float v17, v17, v8

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getFlexBaseSize()I

    move-result v8

    add-int/2addr v8, v6

    invoke-virtual {v4, v8}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setTargetMainSize(I)V

    invoke-virtual {v4}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getTargetMainSize()I

    move-result v4

    add-int/2addr v4, v5

    move v5, v4

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    invoke-static {v2, v8, v10}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0, v1}, Leq;->c(ILjava/lang/StringBuilder;)V

    const/16 v21, 0x0

    return v21

    :cond_10
    const/16 v21, 0x0

    invoke-static {v1, v9, v10}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0, v1}, Leq;->c(ILjava/lang/StringBuilder;)V

    return v21

    :cond_11
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_9
    if-eqz v11, :cond_1a

    if-ge v12, v4, :cond_1a

    add-int/lit8 v12, v12, 0x1

    if-eqz v18, :cond_19

    add-int v11, v7, v14

    add-int/2addr v11, v15

    sub-int v11, v3, v11

    int-to-float v11, v11

    cmpg-float v13, v16, v6

    if-gez v13, :cond_12

    mul-float v13, v5, v16

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v17

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v20

    cmpg-float v17, v17, v20

    if-gez v17, :cond_12

    move v11, v13

    :cond_12
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    if-ltz v1, :cond_18

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gt v1, v13, :cond_18

    if-ltz v2, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gt v2, v13, :cond_17

    move v6, v1

    move v13, v11

    move/from16 v17, v16

    move/from16 v20, v19

    const/4 v11, 0x0

    move/from16 v16, v15

    move v15, v14

    const/4 v14, 0x0

    :goto_a
    if-ge v6, v2, :cond_16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    check-cast v0, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->isFrozen()Z

    move-result v22

    if-nez v22, :cond_15

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getShrink$foundation_layout()F

    move-result v22

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getFlexBaseSize()I

    move-result v3

    int-to-float v3, v3

    mul-float v22, v22, v3

    cmpl-float v3, v20, p0

    if-lez v3, :cond_13

    div-float v3, v22, v20

    goto :goto_b

    :cond_13
    move/from16 v3, p0

    :goto_b
    mul-float/2addr v3, v13

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getFlexBaseSize()I

    move-result v23

    move/from16 v24, v4

    sub-int v4, v23, v3

    move/from16 v23, v5

    move/from16 v25, v6

    move/from16 v5, p1

    invoke-virtual {v0, v5}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getMinMainAxisSize$foundation_layout(Z)I

    move-result v6

    if-ge v4, v6, :cond_14

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setFrozen(Z)V

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getFlexBaseSize()I

    move-result v3

    sub-int/2addr v3, v6

    int-to-float v3, v3

    sub-float/2addr v13, v3

    sub-float v20, v20, v22

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setTargetMainSize(I)V

    add-int/lit8 v18, v18, -0x1

    add-int/2addr v15, v6

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getFlexBaseSize()I

    move-result v3

    sub-int v16, v16, v3

    sub-float v19, v19, v22

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getShrink$foundation_layout()F

    move-result v0

    sub-float v17, v17, v0

    move v11, v5

    goto :goto_c

    :cond_14
    const/4 v5, 0x1

    int-to-float v3, v3

    sub-float/2addr v13, v3

    sub-float v20, v20, v22

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->setTargetMainSize(I)V

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/ResolvedFlexItemInfo;->getTargetMainSize()I

    move-result v0

    add-int/2addr v14, v0

    goto :goto_c

    :cond_15
    move/from16 v24, v4

    move/from16 v23, v5

    move/from16 v25, v6

    const/4 v5, 0x1

    :goto_c
    add-int/lit8 v6, v25, 0x1

    move-object/from16 v0, p2

    move/from16 v3, p7

    move/from16 v5, v23

    move/from16 v4, v24

    goto :goto_a

    :cond_16
    move-object/from16 v0, p2

    move/from16 v3, p7

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_9

    :cond_17
    invoke-static {v2, v8, v10}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, v0}, Leq;->c(ILjava/lang/StringBuilder;)V

    const/16 v21, 0x0

    return v21

    :cond_18
    const/16 v21, 0x0

    invoke-static {v1, v9, v10}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, v0}, Leq;->c(ILjava/lang/StringBuilder;)V

    return v21

    :cond_19
    const/4 v5, 0x0

    goto :goto_d

    :cond_1a
    move v5, v13

    :cond_1b
    :goto_d
    add-int/2addr v7, v14

    add-int/2addr v7, v5

    return v7

    :cond_1c
    invoke-static {v2, v8, v10}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, v0}, Leq;->c(ILjava/lang/StringBuilder;)V

    const/16 v21, 0x0

    return v21

    :cond_1d
    move/from16 v21, v5

    invoke-static {v1, v9, v10}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1, v0}, Leq;->c(ILjava/lang/StringBuilder;)V

    return v21
.end method

.method private final totalCrossAxisSize(Ljava/util/ArrayList;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/compose/foundation/layout/FlexLine;",
            ">;Z)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 v0, p0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/layout/FlexLine;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/FlexLine;->getCrossStart()I

    move-result p0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/layout/FlexLine;

    invoke-virtual {p1}, Landroidx/compose/foundation/layout/FlexLine;->getCrossAxisSize()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->flexBoxConfigState:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/layout/FlexBoxConfig;

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v3

    invoke-direct {p0, v0, p1, v3, v4}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolveFlexBoxConfig-3p2s80s(Landroidx/compose/foundation/layout/FlexBoxConfig;Landroidx/compose/ui/unit/Density;J)Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p1

    const/4 p3, 0x0

    invoke-static {p3}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p1

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v3

    invoke-static {p1, v3}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return p3

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->mainAxisGap()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v3

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result p0

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    move v0, p3

    move v3, v0

    :goto_0
    if-ge v0, p0, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {v4, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v1

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    move p3, p0

    :goto_1
    mul-int/2addr p3, p1

    add-int/2addr p3, v3

    return p3

    :cond_5
    :goto_2
    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    move p1, p3

    :goto_3
    if-ge p3, p0, :cond_6

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {v0, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_6
    return p1

    :cond_7
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    return p3

    :cond_8
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->mainAxisGap()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->crossAxisGap()I

    move-result v3

    move-object v4, p2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    move v5, p3

    move v6, v5

    move v7, v6

    :goto_5
    if-ge p3, v4, :cond_b

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    const v9, 0x7fffffff

    invoke-interface {v8, v9}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v9

    invoke-interface {v8, v9}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v8

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v10

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v11

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v10

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v11

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    if-eqz v7, :cond_a

    add-int v10, v7, v9

    if-le v10, v2, :cond_a

    add-int/2addr v6, v3

    add-int/2addr v6, v5

    add-int/2addr v9, p1

    move v5, v6

    move v6, v8

    :goto_6
    move v7, v9

    goto :goto_7

    :cond_a
    add-int/2addr v9, p1

    add-int/2addr v9, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_6

    :goto_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_b
    add-int/2addr v5, v6

    return v5
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->flexBoxConfigState:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/layout/FlexBoxConfig;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v1

    invoke-direct {p0, v0, p1, v1, v2}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolveFlexBoxConfig-3p2s80s(Landroidx/compose/foundation/layout/FlexBoxConfig;Landroidx/compose/ui/unit/Density;J)Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p1

    const/4 p3, 0x0

    invoke-static {p3}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p1

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v2

    invoke-static {p1, v2}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return p3

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->mainAxisGap()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->crossAxisGap()I

    move-result v2

    move-object v3, p2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v5, p3

    move v6, v5

    move v7, v6

    :goto_0
    if-ge p3, v3, :cond_4

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    const v9, 0x7fffffff

    invoke-interface {v8, v9}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result v9

    invoke-interface {v8, v9}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v8

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v10

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v11

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v10

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v11

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    if-eqz v7, :cond_3

    add-int v10, v7, v9

    if-le v10, v4, :cond_3

    add-int/2addr v6, v2

    add-int/2addr v6, v5

    add-int/2addr v9, p1

    move v5, v6

    move v6, v8

    :goto_1
    move v7, v9

    goto :goto_2

    :cond_3
    add-int/2addr v9, p1

    add-int/2addr v9, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v5, v6

    return v5

    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    return p3

    :cond_6
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->mainAxisGap()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v2

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result p0

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_6

    :cond_7
    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    move v0, p3

    move v2, v0

    :goto_4
    if-ge v0, p0, :cond_8

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {v3, v4}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v1

    if-gez p0, :cond_9

    goto :goto_5

    :cond_9
    move p3, p0

    :goto_5
    mul-int/2addr p3, p1

    add-int/2addr p3, v2

    return p3

    :cond_a
    :goto_6
    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    move p1, p3

    :goto_7
    if-ge p3, p0, :cond_b

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {v0, v4}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_b
    return p1
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    new-instance v5, Landroidx/compose/foundation/layout/l;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lnl3;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v1, p1

    iget-object p1, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->flexBoxConfigState:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/layout/FlexBoxConfig;

    invoke-direct {p0, p1, v1, p3, p4}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolveFlexBoxConfig-3p2s80s(Landroidx/compose/foundation/layout/FlexBoxConfig;Landroidx/compose/ui/unit/Density;J)Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v3

    invoke-static {p1, v3}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p1

    const/4 v3, 0x2

    if-nez p1, :cond_2

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p1

    invoke-static {v3}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v4

    invoke-static {p1, v4}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/compose/foundation/layout/LayoutOrientation;->Vertical:Landroidx/compose/foundation/layout/LayoutOrientation;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p1, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    :goto_1
    invoke-static {p3, p4, p1}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v4

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p1

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result p3

    invoke-static {p1, p3}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v2}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p1

    invoke-static {v3}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result p3

    invoke-static {p1, p3}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v3, p2

    move v6, v0

    move-object v0, p0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v0, 0x1

    goto :goto_2

    :goto_4
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->measureFlexBox-w1Onq5I(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;Ljava/util/List;JZ)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->flexBoxConfigState:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/layout/FlexBoxConfig;

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v2, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v3

    invoke-direct {p0, v0, p1, v3, v4}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolveFlexBoxConfig-3p2s80s(Landroidx/compose/foundation/layout/FlexBoxConfig;Landroidx/compose/ui/unit/Density;J)Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p1

    const/4 p3, 0x0

    invoke-static {p3}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p1

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v3

    invoke-static {p1, v3}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return p3

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->mainAxisGap()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v3

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v4

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result p0

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    move v0, p3

    move v3, v0

    :goto_0
    if-ge v0, p0, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {v4, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v1

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    move p3, p0

    :goto_1
    mul-int/2addr p3, p1

    add-int/2addr p3, v3

    return p3

    :cond_5
    :goto_2
    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    move p1, p3

    :goto_3
    if-ge p3, p0, :cond_6

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {v0, v2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_6
    return p1

    :cond_7
    :goto_4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    return p3

    :cond_8
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->mainAxisGap()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->crossAxisGap()I

    move-result v3

    move-object v4, p2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    move v5, p3

    move v6, v5

    move v7, v6

    :goto_5
    if-ge p3, v4, :cond_b

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    const v9, 0x7fffffff

    invoke-interface {v8, v9}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v9

    invoke-interface {v8, v9}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v8

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v10

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v11

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v10

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v11

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    if-eqz v7, :cond_a

    add-int v10, v7, v9

    if-le v10, v2, :cond_a

    add-int/2addr v6, v3

    add-int/2addr v6, v5

    add-int/2addr v9, p1

    move v5, v6

    move v6, v8

    :goto_6
    move v7, v9

    goto :goto_7

    :cond_a
    add-int/2addr v9, p1

    add-int/2addr v9, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_6

    :goto_7
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_b
    add-int/2addr v5, v6

    return v5
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->flexBoxConfigState:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/layout/FlexBoxConfig;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v1

    invoke-direct {p0, v0, p1, v1, v2}, Landroidx/compose/foundation/layout/FlexBoxMeasurePolicy;->resolveFlexBoxConfig-3p2s80s(Landroidx/compose/foundation/layout/FlexBoxConfig;Landroidx/compose/ui/unit/Density;J)Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p1

    const/4 p3, 0x0

    invoke-static {p3}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getDirection-T4wFHC8$foundation_layout()I

    move-result p1

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexDirection;->constructor-impl(I)I

    move-result v2

    invoke-static {p1, v2}, Landroidx/compose/foundation/layout/FlexDirection;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return p3

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->mainAxisGap()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->crossAxisGap()I

    move-result v2

    move-object v3, p2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v5, p3

    move v6, v5

    move v7, v6

    :goto_0
    if-ge p3, v3, :cond_4

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    const v9, 0x7fffffff

    invoke-interface {v8, v9}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result v9

    invoke-interface {v8, v9}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v8

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v10

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v11

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v10

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v11

    invoke-static {v10, v11}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    if-eqz v7, :cond_3

    add-int v10, v7, v9

    if-le v10, v4, :cond_3

    add-int/2addr v6, v2

    add-int/2addr v6, v5

    add-int/2addr v9, p1

    move v5, v6

    move v6, v8

    :goto_1
    move v7, v9

    goto :goto_2

    :cond_3
    add-int/2addr v9, p1

    add-int/2addr v9, v7

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v5, v6

    return v5

    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    return p3

    :cond_6
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->mainAxisGap()I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result v2

    invoke-static {v1}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/ResolvedFlexBoxConfig;->getWrap-7ziDAWk$foundation_layout()I

    move-result p0

    invoke-static {v0}, Landroidx/compose/foundation/layout/FlexWrap;->constructor-impl(I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/FlexWrap;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_6

    :cond_7
    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    move v0, p3

    move v2, v0

    :goto_4
    if-ge v0, p0, :cond_8

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {v3, v4}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v1

    if-gez p0, :cond_9

    goto :goto_5

    :cond_9
    move p3, p0

    :goto_5
    mul-int/2addr p3, p1

    add-int/2addr p3, v2

    return p3

    :cond_a
    :goto_6
    move-object p0, p2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    move p1, p3

    :goto_7
    if-ge p3, p0, :cond_b

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    invoke-interface {v0, v4}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p3, p3, 0x1

    goto :goto_7

    :cond_b
    return p1
.end method
