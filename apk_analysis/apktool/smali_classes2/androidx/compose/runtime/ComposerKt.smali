.class public final Landroidx/compose/runtime/ComposerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EnableDebugRuntimeChecks:Z = false

.field private static composeStackTraceMode:I = 0x0

.field private static final compositionLocalMap:Ljava/lang/Object;

.field public static final compositionLocalMapKey:I = 0xca

.field private static compositionTracer:Landroidx/compose/runtime/CompositionTracer; = null

.field public static final defaultsKey:I = -0x7f

.field private static final invalidGroupLocation:I = -0x2

.field private static final invocation:Ljava/lang/Object;

.field public static final invocationKey:I = 0xc8

.field private static final provider:Ljava/lang/Object;

.field public static final providerKey:I = 0xc9

.field private static final providerMaps:Ljava/lang/Object;

.field public static final providerMapsKey:I = 0xcc

.field private static final providerValues:Ljava/lang/Object;

.field public static final providerValuesKey:I = 0xcb

.field private static final reference:Ljava/lang/Object;

.field public static final referenceKey:I = 0xce

.field public static final reuseKey:I = 0xcf


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/runtime/tooling/ComposeStackTraceMode;->Companion:Landroidx/compose/runtime/tooling/ComposeStackTraceMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/tooling/ComposeStackTraceMode$Companion;->getNone-MD5MrJc()I

    move-result v0

    sput v0, Landroidx/compose/runtime/ComposerKt;->composeStackTraceMode:I

    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "provider"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->provider:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "compositionLocalMap"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "providerValues"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->providerValues:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "providers"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->providerMaps:Ljava/lang/Object;

    new-instance v0, Landroidx/compose/runtime/OpaqueKey;

    const-string v1, "reference"

    invoke-direct {v0, v1}, Landroidx/compose/runtime/OpaqueKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/compose/runtime/ComposerKt;->reference:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Landroidx/compose/runtime/composer/RememberManager;ILjava/lang/Object;)Lj59;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/ComposerKt;->removeCurrentGroup$lambda$0(Landroidx/compose/runtime/composer/RememberManager;ILjava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setCompositionTracer$p(Landroidx/compose/runtime/CompositionTracer;)V
    .locals 0

    sput-object p0, Landroidx/compose/runtime/ComposerKt;->compositionTracer:Landroidx/compose/runtime/CompositionTracer;

    return-void
.end method

.method public static final cache(Landroidx/compose/runtime/Composer;ZLll3;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/Composer;",
            "Z",
            "Lll3<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p1, :cond_1

    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    invoke-interface {p2}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static final composeImmediateRuntimeError(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeError;

    const-string v1, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    const-string v2, "). Please report to Google or use https://goo.gle/compose-feedback"

    invoke-static {v1, p0, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComposeRuntimeError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    new-instance v0, Landroidx/compose/runtime/ComposeRuntimeError;

    const-string v1, "Compose Runtime internal error. Unexpected or incorrect use of the Compose internal runtime API ("

    const-string v2, "). Please report to Google or use https://goo.gle/compose-feedback"

    invoke-static {v1, p0, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/compose/runtime/ComposeRuntimeError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final debugRuntimeCheck(Z)V
    .locals 0

    return-void
.end method

.method public static final debugRuntimeCheck(ZLll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lll3<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public static final extractMovableContentAtCurrent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/Applier;)Landroidx/compose/runtime/MovableContentState;
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/ControlledComposition;",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;",
            "Landroidx/compose/runtime/Applier<",
            "*>;)",
            "Landroidx/compose/runtime/MovableContentState;"
        }
    .end annotation

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-direct {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;-><init>()V

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCollectingSourceInformation()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->collectSourceInformation()V

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCollectingCalledInformation()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->collectCalledByInformation()V

    :cond_1
    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCurrentGroup()I

    move-result v5

    if-eqz v3, :cond_7

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount(I)I

    move-result v8

    if-lez v8, :cond_7

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getParent()I

    move-result v8

    :goto_0
    if-lez v8, :cond_2

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->isNode(I)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent(I)I

    move-result v8

    goto :goto_0

    :cond_2
    if-ltz v8, :cond_7

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->isNode(I)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->node(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSize(I)I

    move-result v11

    add-int/2addr v11, v8

    const/4 v8, 0x0

    :goto_1
    if-ge v10, v11, :cond_5

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSize(I)I

    move-result v12

    add-int/2addr v12, v10

    if-le v12, v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->isNode(I)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount(I)I

    move-result v10

    :goto_2
    add-int/2addr v8, v10

    move v10, v12

    goto :goto_1

    :cond_5
    :goto_3
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->isNode(I)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount(I)I

    move-result v5

    :goto_4
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Applier;->down(Ljava/lang/Object;)V

    invoke-interface {v3, v8, v5}, Landroidx/compose/runtime/Applier;->remove(II)V

    invoke-interface {v3}, Landroidx/compose/runtime/Applier;->up()V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime()Landroidx/compose/runtime/Anchor;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v5, p0

    check-cast v5, Landroidx/compose/runtime/CompositionImpl;

    invoke-static {v5}, Landroidx/compose/runtime/CompositionImpl;->access$getInvalidations$p(Landroidx/compose/runtime/CompositionImpl;)Landroidx/collection/MutableScatterMap;

    move-result-object v8

    invoke-static {v8}, Landroidx/compose/runtime/collection/ScopeMap;->getSize-impl(Landroidx/collection/MutableScatterMap;)I

    move-result v8

    if-lez v8, :cond_16

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Landroidx/compose/runtime/CompositionImpl;->access$getInvalidations$p(Landroidx/compose/runtime/CompositionImpl;)Landroidx/collection/MutableScatterMap;

    move-result-object v5

    iget-object v9, v5, Landroidx/collection/ScatterMap;->metadata:[J

    array-length v10, v9

    add-int/lit8 v10, v10, -0x2

    if-ltz v10, :cond_15

    const/4 v11, 0x0

    :goto_5
    aget-wide v12, v9, v11

    not-long v14, v12

    const/16 v16, 0x7

    shl-long v14, v14, v16

    and-long/2addr v14, v12

    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v14, v14, v17

    cmp-long v14, v14, v17

    if-eqz v14, :cond_14

    sub-int v14, v11, v10

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v15, 0x8

    rsub-int/lit8 v14, v14, 0x8

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v14, :cond_13

    const-wide/16 v19, 0xff

    and-long v21, v12, v19

    const-wide/16 v23, 0x80

    cmp-long v21, v21, v23

    if-gez v21, :cond_12

    shl-int/lit8 v21, v11, 0x3

    add-int v7, v21, v6

    move/from16 p3, v15

    iget-object v15, v5, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    aget-object v15, v15, v7

    move-object/from16 v21, v3

    iget-object v3, v5, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v7

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v25, v6

    instance-of v6, v3, Landroidx/collection/MutableScatterSet;

    if-eqz v6, :cond_f

    check-cast v3, Landroidx/collection/MutableScatterSet;

    iget-object v6, v3, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    move-object/from16 v26, v6

    iget-object v6, v3, Landroidx/collection/ScatterSet;->metadata:[J

    move-object/from16 v27, v9

    array-length v9, v6

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_d

    move-object/from16 v28, v6

    move-wide/from16 v29, v12

    const/4 v6, 0x0

    :goto_7
    aget-wide v12, v28, v6

    not-long v0, v12

    shl-long v0, v0, v16

    and-long/2addr v0, v12

    and-long v0, v0, v17

    cmp-long v0, v0, v17

    if-eqz v0, :cond_c

    sub-int v0, v6, v9

    not-int v0, v0

    ushr-int/lit8 v0, v0, 0x1f

    rsub-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_b

    and-long v31, v12, v19

    cmp-long v31, v31, v23

    if-gez v31, :cond_9

    shl-int/lit8 v31, v6, 0x3

    move/from16 v32, v1

    add-int v1, v31, v32

    move-wide/from16 v33, v12

    aget-object v12, v26, v1

    move-object v13, v15

    check-cast v13, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v13}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v31

    if-eqz v31, :cond_8

    move-object/from16 v35, v15

    invoke-static/range {v21 .. v21}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->asGapAnchor(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v15

    move-object/from16 v36, v4

    invoke-static/range {v31 .. v31}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->asGapAnchor(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v4

    invoke-virtual {v2, v15, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->inGroup(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v4, Lb36;

    invoke-direct {v4, v13, v12}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    goto :goto_a

    :cond_8
    move-object/from16 v36, v4

    goto :goto_9

    :cond_9
    move/from16 v32, v1

    move-object/from16 v36, v4

    move-wide/from16 v33, v12

    :goto_9
    move-object/from16 v35, v15

    :cond_a
    :goto_a
    shr-long v12, v33, p3

    add-int/lit8 v1, v32, 0x1

    move-object/from16 v15, v35

    move-object/from16 v4, v36

    goto :goto_8

    :cond_b
    move/from16 v1, p3

    move-object/from16 v36, v4

    move-object/from16 v35, v15

    if-ne v0, v1, :cond_e

    goto :goto_b

    :cond_c
    move-object/from16 v36, v4

    move-object/from16 v35, v15

    :goto_b
    if-eq v6, v9, :cond_e

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v15, v35

    move-object/from16 v4, v36

    const/16 p3, 0x8

    goto :goto_7

    :cond_d
    move-object/from16 v36, v4

    move-wide/from16 v29, v12

    :cond_e
    invoke-virtual {v3}, Landroidx/collection/ScatterSet;->isEmpty()Z

    move-result v0

    goto :goto_c

    :cond_f
    move-object/from16 v36, v4

    move-object/from16 v27, v9

    move-wide/from16 v29, v12

    move-object/from16 v35, v15

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v15, v35

    check-cast v15, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v15}, Landroidx/compose/runtime/RecomposeScopeImpl;->getAnchor()Landroidx/compose/runtime/Anchor;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static/range {v21 .. v21}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->asGapAnchor(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v1

    invoke-static {v0}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->asGapAnchor(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->inGroup(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lb36;

    invoke-direct {v0, v15, v3}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_11

    invoke-virtual {v5, v7}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_11
    const/16 v1, 0x8

    goto :goto_d

    :cond_12
    move-object/from16 v21, v3

    move-object/from16 v36, v4

    move/from16 v25, v6

    move-object/from16 v27, v9

    move-wide/from16 v29, v12

    move v1, v15

    :goto_d
    shr-long v12, v29, v1

    add-int/lit8 v6, v25, 0x1

    move v15, v1

    move-object/from16 v3, v21

    move-object/from16 v9, v27

    move-object/from16 v4, v36

    goto/16 :goto_6

    :cond_13
    move-object/from16 v21, v3

    move-object/from16 v36, v4

    move-object/from16 v27, v9

    move v1, v15

    if-ne v14, v1, :cond_17

    goto :goto_e

    :cond_14
    move-object/from16 v21, v3

    move-object/from16 v36, v4

    move-object/from16 v27, v9

    :goto_e
    if-eq v11, v10, :cond_17

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v21

    move-object/from16 v9, v27

    move-object/from16 v4, v36

    goto/16 :goto_5

    :cond_15
    move-object/from16 v36, v4

    goto :goto_f

    :cond_16
    move-object/from16 v36, v4

    sget-object v8, Lkx2;->b:Lkx2;

    :cond_17
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/MovableContentStateReference;->getInvalidations$runtime()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/MovableContentStateReference;->setInvalidations$runtime(Ljava/util/List;)V

    goto :goto_10

    :cond_18
    move-object/from16 v1, p1

    move-object/from16 v36, v4

    :goto_10
    invoke-virtual/range {v36 .. v36}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openWriter()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->beginInsert()V

    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->getContent$runtime()Landroidx/compose/runtime/MovableContent;

    move-result-object v0

    const v4, 0x78cc281

    invoke-virtual {v3, v4, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup(ILjava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->markGroup$default(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;IILjava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->getParameter$runtime()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->update(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime()Landroidx/compose/runtime/Anchor;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->asGapAnchor(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v0

    invoke-virtual {v2, v0, v5, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->moveTo(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;ILandroidx/compose/runtime/composer/gapbuffer/SlotWriter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->skipGroup()I

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->endGroup()I

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->endInsert()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->close(Z)V

    new-instance v2, Landroidx/compose/runtime/MovableContentState;

    move-object/from16 v3, v36

    invoke-direct {v2, v3}, Landroidx/compose/runtime/MovableContentState;-><init>(Landroidx/compose/runtime/SlotStorage;)V

    sget-object v4, Landroidx/compose/runtime/RecomposeScopeImpl;->Companion:Landroidx/compose/runtime/RecomposeScopeImpl$Companion;

    invoke-virtual {v4, v3, v0}, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;->hasAnchoredRecomposeScopes$runtime(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_19

    new-instance v5, Landroidx/compose/runtime/ComposerKt$extractMovableContentAtCurrent$movableContentRecomposeScopeOwner$1;

    move-object/from16 v6, p0

    invoke-direct {v5, v6, v1}, Landroidx/compose/runtime/ComposerKt$extractMovableContentAtCurrent$movableContentRecomposeScopeOwner$1;-><init>(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/MovableContentStateReference;)V

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openWriter()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    move-result-object v1

    :try_start_1
    invoke-virtual {v4, v1, v0, v5}, Landroidx/compose/runtime/RecomposeScopeImpl$Companion;->adoptAnchoredScopes$runtime(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Ljava/util/List;Landroidx/compose/runtime/RecomposeScopeOwner;)V

    sget-object v0, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->close(Z)V

    return-object v2

    :catchall_0
    move-exception v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->close(Z)V

    throw v0

    :cond_19
    return-object v2

    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->close(Z)V

    throw v0
.end method

.method public static final getComposeStackTraceMode()I
    .locals 1

    sget v0, Landroidx/compose/runtime/ComposerKt;->composeStackTraceMode:I

    return v0
.end method

.method public static final getCompositionLocalMap()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->compositionLocalMap:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic getCompositionLocalMap$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCompositionLocalMapKey$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getCompositionTracer$annotations()V
    .locals 0

    return-void
.end method

.method public static final getInvocation()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic getInvocation$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getInvocationKey$annotations()V
    .locals 0

    return-void
.end method

.method private static final getNextGroup(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)I
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCurrentGroup()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCurrentGroup()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSize(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static final getProvider()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->provider:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic getProvider$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getProviderKey$annotations()V
    .locals 0

    return-void
.end method

.method public static final getProviderMaps()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->providerMaps:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic getProviderMaps$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getProviderMapsKey$annotations()V
    .locals 0

    return-void
.end method

.method public static final getProviderValues()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->providerValues:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic getProviderValues$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getProviderValuesKey$annotations()V
    .locals 0

    return-void
.end method

.method public static final getReference()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic getReference$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getReferenceKey$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getReuseKey$annotations()V
    .locals 0

    return-void
.end method

.method public static final isAfterFirstChild(Landroidx/compose/runtime/composer/gapbuffer/SlotReader;)Z
    .locals 2

    .line 15
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->getCurrentGroup()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->getParent()I

    move-result p0

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-le v0, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isAfterFirstChild(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCurrentGroup()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getParent()I

    move-result p0

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-le v0, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isTraceInProgress()Z
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->compositionTracer:Landroidx/compose/runtime/CompositionTracer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/CompositionTracer;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final removeCurrentGroup(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/RememberManager;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCurrentGroup()I

    move-result v0

    new-instance v1, Lzo1;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lzo1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->forAllDataInRememberOrder(ILbm3;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->removeGroup()Z

    return-void
.end method

.method private static final removeCurrentGroup$lambda$0(Landroidx/compose/runtime/composer/RememberManager;ILjava/lang/Object;)Lj59;
    .locals 0

    instance-of p1, p2, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/ComposeNodeLifecycleCallback;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/composer/RememberManager;->releasing(Landroidx/compose/runtime/ComposeNodeLifecycleCallback;)V

    :cond_0
    instance-of p1, p2, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/composer/RememberManager;->forgetting(Landroidx/compose/runtime/RememberObserverHolder;)V

    :cond_1
    instance-of p0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz p0, :cond_2

    check-cast p2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {p2}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final runtimeCheck(Z)V
    .locals 0

    if-nez p0, :cond_0

    .line 12
    const-string p0, "Check failed"

    .line 13
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final runtimeCheck(ZLll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lll3<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final setComposeStackTraceMode-76WK1J0(I)V
    .locals 0

    sput p0, Landroidx/compose/runtime/ComposerKt;->composeStackTraceMode:I

    return-void
.end method

.method public static final sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->sourceInformation(Ljava/lang/String;)V

    return-void
.end method

.method public static final sourceInformationMarkerEnd(Landroidx/compose/runtime/Composer;)V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->sourceInformationMarkerEnd()V

    return-void
.end method

.method public static final sourceInformationMarkerStart(Landroidx/compose/runtime/Composer;ILjava/lang/String;)V
    .locals 0
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/Composer;->sourceInformationMarkerStart(ILjava/lang/String;)V

    return-void
.end method

.method public static final traceEventEnd()V
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->compositionTracer:Landroidx/compose/runtime/CompositionTracer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/CompositionTracer;->traceEventEnd()V

    :cond_0
    return-void
.end method

.method public static final traceEventStart(IIILjava/lang/String;)V
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->compositionTracer:Landroidx/compose/runtime/CompositionTracer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/compose/runtime/CompositionTracer;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final synthetic traceEventStart(ILjava/lang/String;)V
    .locals 1
    .annotation runtime Landroidx/compose/runtime/ComposeCompilerApi;
    .end annotation

    .annotation runtime Lul2;
    .end annotation

    const/4 v0, -0x1

    .line 8
    invoke-static {p0, v0, v0, p1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    return-void
.end method

.method public static final withAfterAnchorInfo(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/Anchor;Lbm3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;",
            "Landroidx/compose/runtime/Anchor;",
            "Lbm3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TR;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchorKt;->asGapAnchor(Landroidx/compose/runtime/Anchor;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSlotsSize()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsEndAllIndex$runtime(I)I

    move-result p0

    sub-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    move v0, p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
