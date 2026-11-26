.class final Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/snapshots/SnapshotStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObservedScopeMap"
.end annotation


# instance fields
.field private currentScope:Ljava/lang/Object;

.field private currentScopeReads:Landroidx/collection/MutableObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableObjectIntMap<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private currentToken:I

.field private final dependencyToDerivedStates:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private deriveStateScopeCount:I

.field private final derivedStateObserver:Landroidx/compose/runtime/DerivedStateObserver;

.field private final invalidated:Landroidx/collection/MutableScatterSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onChanged:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field private readingDerivedStates:Z

.field private final recordedDerivedStateValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final scopeToValues:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Landroidx/collection/MutableObjectIntMap<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final statesToReread:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final valueToScopes:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lnl3;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p1, v0, p1}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default(Landroidx/collection/MutableScatterMap;ILjh2;)Landroidx/collection/MutableScatterMap;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/collection/MutableScatterMap;

    new-instance v1, Landroidx/collection/MutableScatterMap;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, p1}, Landroidx/collection/MutableScatterMap;-><init>(IILjh2;)V

    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    new-instance v1, Landroidx/collection/MutableScatterSet;

    invoke-direct {v1, v2, v0, p1}, Landroidx/collection/MutableScatterSet;-><init>(IILjh2;)V

    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v3, 0x10

    new-array v3, v3, [Landroidx/compose/runtime/DerivedState;

    invoke-direct {v1, v3, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    new-instance v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;

    invoke-direct {v1, p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap$derivedStateObserver$1;-><init>(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)V

    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->derivedStateObserver:Landroidx/compose/runtime/DerivedStateObserver;

    invoke-static {p1, v0, p1}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl$default(Landroidx/collection/MutableScatterMap;ILjh2;)Landroidx/collection/MutableScatterMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/collection/MutableScatterMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$clearObsoleteStateReads(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->clearObsoleteStateReads(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getCurrentScope$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getCurrentScopeReads$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)Landroidx/collection/MutableObjectIntMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    return-object p0
.end method

.method public static final synthetic access$getCurrentToken$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    return p0
.end method

.method public static final synthetic access$getDeriveStateScopeCount$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->deriveStateScopeCount:I

    return p0
.end method

.method public static final synthetic access$getScopeToValues$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)Landroidx/collection/MutableScatterMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    return-object p0
.end method

.method public static final synthetic access$setCurrentScope$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$setCurrentScopeReads$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;Landroidx/collection/MutableObjectIntMap;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    return-void
.end method

.method public static final synthetic access$setCurrentToken$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    return-void
.end method

.method public static final synthetic access$setDeriveStateScopeCount$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->deriveStateScopeCount:I

    return-void
.end method

.method private final clearObsoleteStateReads(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    if-eqz v2, :cond_6

    iget-object v3, v2, Landroidx/collection/ObjectIntMap;->metadata:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_6

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    aget-wide v7, v3, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    move v11, v5

    :goto_1
    if-ge v11, v9, :cond_4

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_2

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    iget-object v13, v2, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    aget-object v13, v13, v12

    iget-object v14, v2, Landroidx/collection/ObjectIntMap;->values:[I

    aget v14, v14, v12

    if-eq v14, v1, :cond_0

    const/4 v14, 0x1

    goto :goto_2

    :cond_0
    move v14, v5

    :goto_2
    move-object/from16 v15, p1

    if-eqz v14, :cond_1

    invoke-direct {v0, v15, v13}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    if-eqz v14, :cond_3

    invoke-virtual {v2, v12}, Landroidx/collection/MutableObjectIntMap;->removeValueAt(I)V

    goto :goto_3

    :cond_2
    move-object/from16 v15, p1

    :cond_3
    :goto_3
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v15, p1

    if-ne v9, v10, :cond_6

    goto :goto_4

    :cond_5
    move-object/from16 v15, p1

    :goto_4
    if-eq v6, v4, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private final recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Landroidx/collection/MutableObjectIntMap<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->deriveStateScopeCount:I

    if-lez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v3, -0x1

    move-object/from16 v4, p4

    invoke-virtual {v4, v1, v2, v3}, Landroidx/collection/MutableObjectIntMap;->put(Ljava/lang/Object;II)I

    move-result v4

    instance-of v5, v1, Landroidx/compose/runtime/DerivedState;

    const/4 v6, 0x2

    if-eqz v5, :cond_7

    if-eq v4, v2, :cond_7

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/DerivedState;

    invoke-interface {v2}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v2

    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    invoke-interface {v2}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Landroidx/compose/runtime/DerivedState$Record;->getDependencies()Landroidx/collection/ObjectIntMap;

    move-result-object v2

    iget-object v5, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/collection/MutableScatterMap;

    invoke-static {v5, v1}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    iget-object v7, v2, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    iget-object v2, v2, Landroidx/collection/ObjectIntMap;->metadata:[J

    array-length v8, v2

    sub-int/2addr v8, v6

    if-ltz v8, :cond_5

    const/4 v10, 0x0

    :goto_0
    aget-wide v11, v2, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_4

    sub-int v13, v10, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_3

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_2

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    aget-object v16, v7, v16

    move/from16 p4, v6

    move-object/from16 v6, v16

    check-cast v6, Landroidx/compose/runtime/snapshots/StateObject;

    instance-of v9, v6, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v9, :cond_1

    move-object v9, v6

    check-cast v9, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result v3

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime(I)V

    :cond_1
    invoke-static {v5, v6, v1}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move/from16 p4, v6

    :goto_2
    shr-long/2addr v11, v14

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, p4

    const/4 v3, -0x1

    goto :goto_1

    :cond_3
    move/from16 p4, v6

    if-ne v13, v14, :cond_6

    goto :goto_3

    :cond_4
    move/from16 p4, v6

    :goto_3
    if-eq v10, v8, :cond_6

    add-int/lit8 v10, v10, 0x1

    move/from16 v6, p4

    const/4 v3, -0x1

    goto :goto_0

    :cond_5
    move/from16 p4, v6

    :cond_6
    const/4 v2, -0x1

    goto :goto_4

    :cond_7
    move/from16 p4, v6

    move v2, v3

    :goto_4
    if-ne v4, v2, :cond_9

    instance-of v2, v1, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v2, :cond_8

    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->recordReadIn-h_f27i8$runtime(I)V

    :cond_8
    iget-object v0, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/collection/MutableScatterMap;

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/collection/ScopeMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_9
    :goto_5
    return-void
.end method

.method private final removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/collection/MutableScatterMap;

    invoke-static {v0, p2, p1}, Landroidx/compose/runtime/collection/ScopeMap;->remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z

    instance-of p1, p2, Landroidx/compose/runtime/DerivedState;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/collection/MutableScatterMap;

    invoke-static {p1, p2}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/collection/MutableScatterMap;

    invoke-static {p1, p2}, Landroidx/compose/runtime/collection/ScopeMap;->removeScope-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/collection/MutableScatterMap;

    invoke-static {v0}, Landroidx/compose/runtime/collection/ScopeMap;->clear-impl(Landroidx/collection/MutableScatterMap;)V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v0}, Landroidx/collection/MutableScatterMap;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/collection/MutableScatterMap;

    invoke-static {v0}, Landroidx/compose/runtime/collection/ScopeMap;->clear-impl(Landroidx/collection/MutableScatterMap;)V

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final clearScopeObservations(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v2, v1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/collection/MutableObjectIntMap;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, v2, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    iget-object v4, v2, Landroidx/collection/ObjectIntMap;->values:[I

    iget-object v2, v2, Landroidx/collection/ObjectIntMap;->metadata:[J

    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    aget-wide v8, v2, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v6

    :goto_1
    if-ge v12, v10, :cond_2

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_1

    shl-int/lit8 v13, v7, 0x3

    add-int/2addr v13, v12

    aget-object v14, v3, v13

    aget v13, v4, v13

    invoke-direct {v0, v1, v14}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    shr-long/2addr v8, v11

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    if-ne v10, v11, :cond_4

    :cond_3
    if-eq v7, v5, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public final getDerivedStateObserver()Landroidx/compose/runtime/DerivedStateObserver;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->derivedStateObserver:Landroidx/compose/runtime/DerivedStateObserver;

    return-object p0
.end method

.method public final getOnChanged()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lnl3;

    return-object p0
.end method

.method public final getReadingDerivedStates()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->readingDerivedStates:Z

    return p0
.end method

.method public final hasScopeObservations()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    invoke-virtual {p0}, Landroidx/collection/ScatterMap;->isNotEmpty()Z

    move-result p0

    return p0
.end method

.method public final notifyInvalidatedScopes()V
    .locals 15

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->onChanged:Lnl3;

    iget-object v1, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v2, v0, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    aget-wide v6, v2, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    move v10, v4

    :goto_1
    if-ge v10, v8, :cond_1

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-gez v11, :cond_0

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    aget-object v11, v1, v11

    invoke-interface {p0, v11}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    shr-long/2addr v6, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    if-ne v8, v9, :cond_3

    :cond_2
    if-eq v5, v3, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->clear()V

    return-void
.end method

.method public final observe(Ljava/lang/Object;Lnl3;Lll3;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lnl3<",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;",
            "Lll3<",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$getCurrentScope$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$getCurrentScopeReads$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)Landroidx/collection/MutableObjectIntMap;

    move-result-object v1

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$getCurrentToken$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)I

    move-result v2

    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$setCurrentScope$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$getScopeToValues$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)Landroidx/collection/MutableScatterMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/collection/MutableObjectIntMap;

    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$setCurrentScopeReads$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;Landroidx/collection/MutableObjectIntMap;)V

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$getCurrentToken$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)I

    move-result p1

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$setCurrentToken$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->getDerivedStateObserver()Landroidx/compose/runtime/DerivedStateObserver;

    move-result-object p1

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->derivedStateObservers()Landroidx/compose/runtime/collection/MutableVector;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    sget-object p1, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    if-nez p2, :cond_1

    invoke-interface {p3}, Lll3;->invoke()Ljava/lang/Object;

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getThreadSnapshot$p()Landroidx/compose/runtime/internal/SnapshotThreadLocal;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/internal/SnapshotThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/snapshots/Snapshot;

    instance-of v4, p1, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    const/4 v5, 0x0

    const/4 v9, 0x0

    if-eqz v4, :cond_2

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getThreadId$runtime()J

    move-result-wide v6

    invoke-static {}, Landroidx/compose/runtime/internal/Thread_jvmKt;->currentThreadId()J

    move-result-wide v10

    cmp-long v4, v6, v10

    if-nez v4, :cond_2

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    invoke-virtual {v4}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getReadObserver$runtime()Lnl3;

    move-result-object v4

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    invoke-virtual {v6}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->getWriteObserver$runtime()Lnl3;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    const/4 v8, 0x0

    const/4 v10, 0x4

    invoke-static {p2, v4, v8, v10, v5}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedReadObserver$default(Lnl3;Lnl3;ZILjava/lang/Object;)Lnl3;

    move-result-object p2

    invoke-virtual {v7, p2}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setReadObserver$runtime(Lnl3;)V

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    invoke-static {v9, v6}, Landroidx/compose/runtime/snapshots/SnapshotKt;->mergedWriteObserver(Lnl3;Lnl3;)Lnl3;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setWriteObserver$runtime(Lnl3;)V

    invoke-interface {p3}, Lll3;->invoke()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setReadObserver$runtime(Lnl3;)V

    check-cast p1, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    invoke-virtual {p1, v6}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setWriteObserver$runtime(Lnl3;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    move-object p2, p1

    check-cast p2, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    invoke-virtual {p2, v4}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setReadObserver$runtime(Lnl3;)V

    check-cast p1, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    invoke-virtual {p1, v6}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;->setWriteObserver$runtime(Lnl3;)V

    throw p0

    :cond_2
    if-eqz p1, :cond_4

    instance-of v4, p1, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/snapshots/Snapshot;->takeNestedSnapshot(Lnl3;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    new-instance v6, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;

    instance-of v4, p1, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    if-eqz v4, :cond_5

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    :cond_5
    move-object v7, v5

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v8, p2

    invoke-direct/range {v6 .. v11}, Landroidx/compose/runtime/snapshots/TransparentObserverMutableSnapshot;-><init>(Landroidx/compose/runtime/snapshots/MutableSnapshot;Lnl3;Lnl3;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p1, v6

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {p3}, Lll3;->invoke()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    invoke-static {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$getCurrentScope$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$clearObsoleteStateReads(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;Ljava/lang/Object;)V

    invoke-static {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$setCurrentScope$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$setCurrentScopeReads$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;Landroidx/collection/MutableObjectIntMap;)V

    invoke-static {p0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->access$setCurrentToken$p(Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;I)V

    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object p0, v0

    :try_start_7
    invoke-virtual {p1, p2}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_3
    :try_start_8
    invoke-virtual {p1}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_4
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    throw p0
.end method

.method public final recordInvalidation(Ljava/util/Set;)Z
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->dependencyToDerivedStates:Landroidx/collection/MutableScatterMap;

    iget-object v3, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordedDerivedStateValues:Ljava/util/HashMap;

    iget-object v4, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/collection/MutableScatterMap;

    iget-object v5, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->invalidated:Landroidx/collection/MutableScatterSet;

    instance-of v6, v0, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    const/4 v12, 0x2

    const/16 v15, 0x8

    const-wide/16 v16, 0x80

    if-eqz v6, :cond_22

    check-cast v0, Landroidx/compose/runtime/collection/ScatterSetWrapper;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/ScatterSetWrapper;->getSet$runtime()Landroidx/collection/ScatterSet;

    move-result-object v0

    iget-object v6, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/ScatterSet;->metadata:[J

    const-wide/16 v18, 0xff

    array-length v9, v0

    sub-int/2addr v9, v12

    if-ltz v9, :cond_20

    move/from16 v22, v12

    const/4 v10, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x7

    :goto_0
    aget-wide v11, v0, v10

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    not-long v13, v11

    shl-long v13, v13, v21

    and-long/2addr v13, v11

    and-long v13, v13, v23

    cmp-long v13, v13, v23

    if-eqz v13, :cond_1f

    sub-int v13, v10, v9

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    rsub-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_1e

    and-long v25, v11, v18

    cmp-long v25, v25, v16

    if-gez v25, :cond_1d

    shl-int/lit8 v25, v10, 0x3

    add-int v25, v25, v14

    aget-object v8, v6, v25

    move/from16 v25, v15

    instance-of v15, v8, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v15, :cond_0

    move-object v15, v8

    check-cast v15, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    invoke-static/range {v22 .. v22}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result v7

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime(I)Z

    move-result v7

    if-nez v7, :cond_0

    move-object/from16 p1, v0

    move-object/from16 v27, v6

    move/from16 v32, v9

    move/from16 v37, v10

    move-wide/from16 v28, v11

    move/from16 v30, v14

    goto/16 :goto_15

    :cond_0
    iget-boolean v7, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->readingDerivedStates:Z

    if-nez v7, :cond_17

    invoke-static {v2, v8}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    const/4 v7, 0x1

    iput-boolean v7, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->readingDerivedStates:Z

    :try_start_0
    invoke-virtual {v2, v8}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_15

    instance-of v15, v7, Landroidx/collection/MutableScatterSet;

    if-eqz v15, :cond_d

    check-cast v7, Landroidx/collection/MutableScatterSet;

    iget-object v15, v7, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v7, v7, Landroidx/collection/ScatterSet;->metadata:[J

    move-object/from16 p1, v0

    array-length v0, v7

    add-int/lit8 v0, v0, -0x2

    move-object/from16 v27, v6

    if-ltz v0, :cond_16

    move-wide/from16 v28, v11

    const/4 v6, 0x0

    :goto_2
    aget-wide v11, v7, v6

    move/from16 v30, v14

    move-object/from16 v31, v15

    not-long v14, v11

    shl-long v14, v14, v21

    and-long/2addr v14, v11

    and-long v14, v14, v23

    cmp-long v14, v14, v23

    if-eqz v14, :cond_b

    sub-int v14, v6, v0

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    rsub-int/lit8 v15, v14, 0x8

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v15, :cond_a

    and-long v32, v11, v18

    cmp-long v32, v32, v16

    if-gez v32, :cond_9

    shl-int/lit8 v32, v6, 0x3

    add-int v32, v32, v14

    aget-object v32, v31, v32

    move-object/from16 v33, v7

    move-object/from16 v7, v32

    check-cast v7, Landroidx/compose/runtime/DerivedState;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v34, v11

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7}, Landroidx/compose/runtime/DerivedState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v12

    if-nez v12, :cond_1

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v12

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v6, 0x0

    goto/16 :goto_11

    :cond_1
    :goto_4
    invoke-interface {v7}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v32

    move/from16 v36, v14

    invoke-interface/range {v32 .. v32}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v12, v14, v11}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v4, v7}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    instance-of v11, v7, Landroidx/collection/MutableScatterSet;

    if-eqz v11, :cond_5

    check-cast v7, Landroidx/collection/MutableScatterSet;

    iget-object v11, v7, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v7, v7, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v12, v7

    add-int/lit8 v12, v12, -0x2

    if-ltz v12, :cond_6

    move/from16 v32, v9

    move/from16 v37, v10

    const/4 v14, 0x0

    :goto_5
    aget-wide v9, v7, v14

    move-object/from16 v39, v7

    move-object/from16 v38, v8

    not-long v7, v9

    shl-long v7, v7, v21

    and-long/2addr v7, v9

    and-long v7, v7, v23

    cmp-long v7, v7, v23

    if-eqz v7, :cond_4

    sub-int v7, v14, v12

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    rsub-int/lit8 v7, v7, 0x8

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_3

    and-long v40, v9, v18

    cmp-long v40, v40, v16

    if-gez v40, :cond_2

    shl-int/lit8 v20, v14, 0x3

    add-int v20, v20, v8

    move/from16 v40, v8

    aget-object v8, v11, v20

    invoke-virtual {v5, v8}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    goto :goto_7

    :cond_2
    move/from16 v40, v8

    :goto_7
    shr-long v9, v9, v25

    add-int/lit8 v8, v40, 0x1

    goto :goto_6

    :cond_3
    move/from16 v8, v25

    if-ne v7, v8, :cond_7

    :cond_4
    if-eq v14, v12, :cond_7

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, v38

    move-object/from16 v7, v39

    const/16 v25, 0x8

    goto :goto_5

    :cond_5
    move-object/from16 v38, v8

    move/from16 v32, v9

    move/from16 v37, v10

    invoke-virtual {v5, v7}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_8

    :cond_6
    move-object/from16 v38, v8

    move/from16 v32, v9

    move/from16 v37, v10

    :cond_7
    move/from16 v7, v20

    :goto_8
    sget-object v8, Lj59;->a:Lj59;

    move/from16 v20, v7

    goto :goto_9

    :cond_8
    move-object/from16 v38, v8

    move/from16 v32, v9

    move/from16 v37, v10

    iget-object v8, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :goto_9
    const/16 v8, 0x8

    goto :goto_a

    :cond_9
    move-object/from16 v33, v7

    move-object/from16 v38, v8

    move/from16 v32, v9

    move/from16 v37, v10

    move-wide/from16 v34, v11

    move/from16 v36, v14

    goto :goto_9

    :goto_a
    shr-long v11, v34, v8

    add-int/lit8 v14, v36, 0x1

    move/from16 v25, v8

    move/from16 v9, v32

    move-object/from16 v7, v33

    move/from16 v10, v37

    move-object/from16 v8, v38

    goto/16 :goto_3

    :cond_a
    move-object/from16 v33, v7

    move-object/from16 v38, v8

    move/from16 v32, v9

    move/from16 v37, v10

    move/from16 v8, v25

    if-ne v15, v8, :cond_c

    goto :goto_b

    :cond_b
    move-object/from16 v33, v7

    move-object/from16 v38, v8

    move/from16 v32, v9

    move/from16 v37, v10

    :goto_b
    if-eq v6, v0, :cond_c

    add-int/lit8 v6, v6, 0x1

    move/from16 v14, v30

    move-object/from16 v15, v31

    move/from16 v9, v32

    move-object/from16 v7, v33

    move/from16 v10, v37

    move-object/from16 v8, v38

    const/16 v25, 0x8

    goto/16 :goto_2

    :cond_c
    :goto_c
    const/4 v6, 0x0

    goto/16 :goto_f

    :cond_d
    move-object/from16 p1, v0

    move-object/from16 v27, v6

    move-object/from16 v38, v8

    move/from16 v32, v9

    move/from16 v37, v10

    move-wide/from16 v28, v11

    move/from16 v30, v14

    check-cast v7, Landroidx/compose/runtime/DerivedState;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7}, Landroidx/compose/runtime/DerivedState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v6

    if-nez v6, :cond_e

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v6

    :cond_e
    invoke-interface {v7}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v8

    invoke-interface {v8}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8, v0}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v4, v7}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v6, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v6, :cond_12

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v6, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v7, v0

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_13

    const/4 v8, 0x0

    :goto_d
    aget-wide v9, v0, v8

    not-long v11, v9

    shl-long v11, v11, v21

    and-long/2addr v11, v9

    and-long v11, v11, v23

    cmp-long v11, v11, v23

    if-eqz v11, :cond_11

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v15, v11, 0x8

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v15, :cond_10

    and-long v33, v9, v18

    cmp-long v12, v33, v16

    if-gez v12, :cond_f

    shl-int/lit8 v12, v8, 0x3

    add-int/2addr v12, v11

    aget-object v12, v6, v12

    invoke-virtual {v5, v12}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    :cond_f
    const/16 v12, 0x8

    shr-long/2addr v9, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_10
    const/16 v12, 0x8

    if-ne v15, v12, :cond_13

    :cond_11
    if-eq v8, v7, :cond_13

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_12
    invoke-virtual {v5, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    :cond_13
    sget-object v0, Lj59;->a:Lj59;

    goto/16 :goto_c

    :cond_14
    iget-object v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_c

    :cond_15
    move-object/from16 p1, v0

    move-object/from16 v27, v6

    :cond_16
    move-object/from16 v38, v8

    move/from16 v32, v9

    move/from16 v37, v10

    move-wide/from16 v28, v11

    move/from16 v30, v14

    goto/16 :goto_c

    :goto_f
    iput-boolean v6, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->readingDerivedStates:Z

    :goto_10
    move-object/from16 v0, v38

    goto :goto_12

    :goto_11
    iput-boolean v6, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->readingDerivedStates:Z

    throw v0

    :cond_17
    move-object/from16 p1, v0

    move-object/from16 v27, v6

    move-object/from16 v38, v8

    move/from16 v32, v9

    move/from16 v37, v10

    move-wide/from16 v28, v11

    move/from16 v30, v14

    goto :goto_10

    :goto_12
    invoke-virtual {v4, v0}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c

    instance-of v6, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v6, :cond_1b

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v6, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v7, v0

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_1c

    const/4 v8, 0x0

    :goto_13
    aget-wide v9, v0, v8

    not-long v11, v9

    shl-long v11, v11, v21

    and-long/2addr v11, v9

    and-long v11, v11, v23

    cmp-long v11, v11, v23

    if-eqz v11, :cond_1a

    sub-int v11, v8, v7

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v15, v11, 0x8

    move-wide v10, v9

    const/4 v9, 0x0

    :goto_14
    if-ge v9, v15, :cond_19

    and-long v33, v10, v18

    cmp-long v12, v33, v16

    if-gez v12, :cond_18

    shl-int/lit8 v12, v8, 0x3

    add-int/2addr v12, v9

    aget-object v12, v6, v12

    invoke-virtual {v5, v12}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    :cond_18
    const/16 v12, 0x8

    shr-long/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    :cond_19
    const/16 v12, 0x8

    if-ne v15, v12, :cond_1c

    :cond_1a
    if-eq v8, v7, :cond_1c

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_1b
    invoke-virtual {v5, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    :cond_1c
    :goto_15
    const/16 v8, 0x8

    goto :goto_16

    :cond_1d
    move-object/from16 p1, v0

    move-object/from16 v27, v6

    move/from16 v32, v9

    move/from16 v37, v10

    move-wide/from16 v28, v11

    move/from16 v30, v14

    move v8, v15

    :goto_16
    shr-long v11, v28, v8

    add-int/lit8 v14, v30, 0x1

    move-object/from16 v0, p1

    move v15, v8

    move-object/from16 v6, v27

    move/from16 v9, v32

    move/from16 v10, v37

    goto/16 :goto_1

    :cond_1e
    move-object/from16 p1, v0

    move-object/from16 v27, v6

    move/from16 v32, v9

    move/from16 v37, v10

    move v8, v15

    if-ne v13, v8, :cond_21

    move/from16 v9, v32

    move/from16 v8, v37

    goto :goto_17

    :cond_1f
    move-object/from16 p1, v0

    move-object/from16 v27, v6

    move v8, v10

    :goto_17
    if-eq v8, v9, :cond_21

    add-int/lit8 v10, v8, 0x1

    move-object/from16 v0, p1

    move-object/from16 v6, v27

    const/16 v15, 0x8

    goto/16 :goto_0

    :cond_20
    const/16 v20, 0x0

    :cond_21
    :goto_18
    const/4 v2, 0x0

    goto/16 :goto_34

    :cond_22
    move/from16 v22, v12

    const-wide/16 v18, 0xff

    const/16 v21, 0x7

    const-wide v23, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v8, v6, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    if-eqz v8, :cond_24

    move-object v8, v6

    check-cast v8, Landroidx/compose/runtime/snapshots/StateObjectImpl;

    invoke-static/range {v22 .. v22}, Landroidx/compose/runtime/snapshots/ReaderKind;->constructor-impl(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/snapshots/StateObjectImpl;->isReadIn-h_f27i8$runtime(I)Z

    move-result v8

    if-nez v8, :cond_24

    move-object/from16 p1, v0

    move-object/from16 v20, v2

    const/4 v2, 0x0

    :cond_23
    const/16 v13, 0x8

    goto/16 :goto_33

    :cond_24
    iget-boolean v8, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->readingDerivedStates:Z

    if-nez v8, :cond_3e

    invoke-static {v2, v6}, Landroidx/compose/runtime/collection/ScopeMap;->contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    const/4 v8, 0x1

    iput-boolean v8, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->readingDerivedStates:Z

    :try_start_1
    invoke-virtual {v2, v6}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3d

    instance-of v10, v9, Landroidx/collection/MutableScatterSet;

    if-eqz v10, :cond_33

    check-cast v9, Landroidx/collection/MutableScatterSet;

    iget-object v10, v9, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v9, v9, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v11, v9

    add-int/lit8 v11, v11, -0x2

    if-ltz v11, :cond_3d

    move v12, v7

    const/4 v7, 0x0

    :goto_1a
    aget-wide v13, v9, v7

    move-object v15, v9

    not-long v8, v13

    shl-long v8, v8, v21

    and-long/2addr v8, v13

    and-long v8, v8, v23

    cmp-long v8, v8, v23

    if-eqz v8, :cond_32

    sub-int v8, v7, v11

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v8, :cond_30

    and-long v27, v13, v18

    cmp-long v20, v27, v16

    if-gez v20, :cond_2f

    shl-int/lit8 v20, v7, 0x3

    add-int v20, v20, v9

    aget-object v20, v10, v20

    move-object/from16 p1, v0

    move-object/from16 v0, v20

    check-cast v0, Landroidx/compose/runtime/DerivedState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Landroidx/compose/runtime/DerivedState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v27

    if-nez v27, :cond_25

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v27

    :cond_25
    move/from16 v28, v9

    move-object/from16 v9, v27

    goto :goto_1c

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_2e

    :goto_1c
    invoke-interface {v0}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v27

    move-object/from16 v29, v10

    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v4, v0}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    instance-of v2, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_2a

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v2, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v9, v0

    add-int/lit8 v9, v9, -0x2

    move-wide/from16 v30, v13

    if-ltz v9, :cond_2c

    const/4 v10, 0x0

    move v14, v12

    :goto_1d
    aget-wide v12, v0, v10

    move/from16 v32, v14

    move-object/from16 v27, v15

    not-long v14, v12

    shl-long v14, v14, v21

    and-long/2addr v14, v12

    and-long v14, v14, v23

    cmp-long v14, v14, v23

    if-eqz v14, :cond_28

    sub-int v14, v10, v9

    not-int v14, v14

    ushr-int/lit8 v14, v14, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v15, v14, 0x8

    move-wide v13, v12

    const/4 v12, 0x0

    :goto_1e
    if-ge v12, v15, :cond_27

    and-long v33, v13, v18

    cmp-long v33, v33, v16

    if-gez v33, :cond_26

    shl-int/lit8 v32, v10, 0x3

    add-int v32, v32, v12

    move-object/from16 v33, v0

    aget-object v0, v2, v32

    invoke-virtual {v5, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v32, 0x1

    :goto_1f
    const/16 v0, 0x8

    goto :goto_20

    :cond_26
    move-object/from16 v33, v0

    goto :goto_1f

    :goto_20
    shr-long/2addr v13, v0

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v33

    goto :goto_1e

    :cond_27
    move-object/from16 v33, v0

    const/16 v0, 0x8

    if-ne v15, v0, :cond_2d

    :goto_21
    move/from16 v14, v32

    goto :goto_22

    :cond_28
    move-object/from16 v33, v0

    goto :goto_21

    :goto_22
    if-eq v10, v9, :cond_29

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v15, v27

    move-object/from16 v0, v33

    goto :goto_1d

    :cond_29
    move v12, v14

    goto :goto_23

    :cond_2a
    move-wide/from16 v30, v13

    move-object/from16 v27, v15

    invoke-virtual {v5, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/16 v32, 0x1

    goto :goto_24

    :cond_2b
    move-wide/from16 v30, v13

    :cond_2c
    move-object/from16 v27, v15

    :goto_23
    move/from16 v32, v12

    :cond_2d
    :goto_24
    sget-object v0, Lj59;->a:Lj59;

    move/from16 v12, v32

    goto :goto_25

    :cond_2e
    move-wide/from16 v30, v13

    move-object/from16 v27, v15

    iget-object v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    :goto_25
    const/16 v0, 0x8

    goto :goto_26

    :cond_2f
    move-object/from16 p1, v0

    move-object/from16 v20, v2

    move/from16 v28, v9

    move-object/from16 v29, v10

    move-wide/from16 v30, v13

    move-object/from16 v27, v15

    goto :goto_25

    :goto_26
    shr-long v13, v30, v0

    add-int/lit8 v9, v28, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, v20

    move-object/from16 v15, v27

    move-object/from16 v10, v29

    goto/16 :goto_1b

    :cond_30
    move-object/from16 p1, v0

    move-object/from16 v20, v2

    move-object/from16 v29, v10

    move-object/from16 v27, v15

    const/16 v0, 0x8

    if-ne v8, v0, :cond_31

    goto :goto_27

    :cond_31
    move v7, v12

    goto :goto_28

    :cond_32
    move-object/from16 p1, v0

    move-object/from16 v20, v2

    move-object/from16 v29, v10

    move-object/from16 v27, v15

    :goto_27
    if-eq v7, v11, :cond_31

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, v20

    move-object/from16 v9, v27

    move-object/from16 v10, v29

    const/4 v8, 0x1

    goto/16 :goto_1a

    :goto_28
    const/4 v2, 0x0

    goto/16 :goto_2d

    :cond_33
    move-object/from16 p1, v0

    move-object/from16 v20, v2

    check-cast v9, Landroidx/compose/runtime/DerivedState;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9}, Landroidx/compose/runtime/DerivedState;->getPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v2

    if-nez v2, :cond_34

    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->structuralEqualityPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    move-result-object v2

    :cond_34
    invoke-interface {v9}, Landroidx/compose/runtime/DerivedState;->getCurrentRecord()Landroidx/compose/runtime/DerivedState$Record;

    move-result-object v8

    invoke-interface {v8}, Landroidx/compose/runtime/DerivedState$Record;->getCurrentValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8, v0}, Landroidx/compose/runtime/SnapshotMutationPolicy;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {v4, v9}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    instance-of v2, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v2, :cond_3a

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v2, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v8, v0

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_3b

    move v9, v7

    const/4 v7, 0x0

    :goto_29
    aget-wide v10, v0, v7

    not-long v12, v10

    shl-long v12, v12, v21

    and-long/2addr v12, v10

    and-long v12, v12, v23

    cmp-long v12, v12, v23

    if-eqz v12, :cond_38

    sub-int v12, v7, v8

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v15, v12, 0x8

    move-wide v11, v10

    move v10, v9

    const/4 v9, 0x0

    :goto_2a
    if-ge v9, v15, :cond_36

    and-long v13, v11, v18

    cmp-long v13, v13, v16

    if-gez v13, :cond_35

    shl-int/lit8 v10, v7, 0x3

    add-int/2addr v10, v9

    aget-object v10, v2, v10

    invoke-virtual {v5, v10}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    :cond_35
    const/16 v13, 0x8

    shr-long/2addr v11, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    :cond_36
    const/16 v13, 0x8

    if-ne v15, v13, :cond_37

    move v9, v10

    goto :goto_2b

    :cond_37
    move v7, v10

    goto :goto_2c

    :cond_38
    :goto_2b
    if-eq v7, v8, :cond_39

    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_39
    move v7, v9

    goto :goto_2c

    :cond_3a
    invoke-virtual {v5, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    :cond_3b
    :goto_2c
    sget-object v0, Lj59;->a:Lj59;

    goto/16 :goto_28

    :cond_3c
    iget-object v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_28

    :cond_3d
    move-object/from16 p1, v0

    move-object/from16 v20, v2

    goto/16 :goto_28

    :goto_2d
    iput-boolean v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->readingDerivedStates:Z

    goto :goto_2f

    :goto_2e
    iput-boolean v2, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->readingDerivedStates:Z

    throw v0

    :cond_3e
    move-object/from16 p1, v0

    move-object/from16 v20, v2

    const/4 v2, 0x0

    :goto_2f
    invoke-virtual {v4, v6}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_23

    instance-of v6, v0, Landroidx/collection/MutableScatterSet;

    if-eqz v6, :cond_44

    check-cast v0, Landroidx/collection/MutableScatterSet;

    iget-object v6, v0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v8, v0

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_23

    move v9, v7

    move v7, v2

    :goto_30
    aget-wide v10, v0, v7

    not-long v12, v10

    shl-long v12, v12, v21

    and-long/2addr v12, v10

    and-long v12, v12, v23

    cmp-long v12, v12, v23

    if-eqz v12, :cond_42

    sub-int v12, v7, v8

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v25, 0x8

    rsub-int/lit8 v15, v12, 0x8

    move-wide v11, v10

    move v10, v9

    move v9, v2

    :goto_31
    if-ge v9, v15, :cond_40

    and-long v13, v11, v18

    cmp-long v13, v13, v16

    if-gez v13, :cond_3f

    shl-int/lit8 v10, v7, 0x3

    add-int/2addr v10, v9

    aget-object v10, v6, v10

    invoke-virtual {v5, v10}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    :cond_3f
    const/16 v13, 0x8

    shr-long/2addr v11, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    :cond_40
    const/16 v13, 0x8

    if-ne v15, v13, :cond_41

    move v9, v10

    goto :goto_32

    :cond_41
    move v7, v10

    goto :goto_33

    :cond_42
    const/16 v13, 0x8

    :goto_32
    if-eq v7, v8, :cond_43

    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_43
    move v7, v9

    goto :goto_33

    :cond_44
    const/16 v13, 0x8

    invoke-virtual {v5, v0}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    :goto_33
    move-object/from16 v0, p1

    move-object/from16 v2, v20

    goto/16 :goto_19

    :cond_45
    move/from16 v20, v7

    goto/16 :goto_18

    :goto_34
    iget-boolean v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->readingDerivedStates:Z

    if-nez v0, :cond_47

    iget-object v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    iget-object v3, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v0

    move v8, v2

    :goto_35
    if-ge v8, v0, :cond_46

    aget-object v2, v3, v8

    check-cast v2, Landroidx/compose/runtime/DerivedState;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->rereadDerivedState(Landroidx/compose/runtime/DerivedState;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    :cond_46
    iget-object v0, v1, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->statesToReread:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    :cond_47
    return v20
.end method

.method public final recordRead(Ljava/lang/Object;)V
    .locals 6

    .line 183
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScope:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentToken:I

    .line 185
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    if-nez v2, :cond_0

    .line 186
    new-instance v2, Landroidx/collection/MutableObjectIntMap;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroidx/collection/MutableObjectIntMap;-><init>(IILjh2;)V

    .line 187
    iput-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->currentScopeReads:Landroidx/collection/MutableObjectIntMap;

    .line 188
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v3, v0, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    sget-object v3, Lj59;->a:Lj59;

    .line 190
    :cond_0
    invoke-direct {p0, p1, v1, v0, v2}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V

    return-void
.end method

.method public final removeScopeIf(Lnl3;)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    iget-object v2, v1, Landroidx/collection/ScatterMap;->metadata:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_9

    const/4 v5, 0x0

    :goto_0
    aget-wide v6, v2, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v11

    cmp-long v8, v8, v11

    if-eqz v8, :cond_8

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v8, :cond_7

    const-wide/16 v14, 0xff

    and-long v16, v6, v14

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_6

    shl-int/lit8 v16, v5, 0x3

    add-int v4, v16, v13

    move/from16 v16, v10

    iget-object v10, v1, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    aget-object v10, v10, v4

    move-wide/from16 v20, v11

    iget-object v11, v1, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    aget-object v11, v11, v4

    check-cast v11, Landroidx/collection/MutableObjectIntMap;

    move-object/from16 v12, p1

    invoke-interface {v12, v10}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_3

    move-wide/from16 v23, v14

    iget-object v14, v11, Landroidx/collection/ObjectIntMap;->keys:[Ljava/lang/Object;

    iget-object v15, v11, Landroidx/collection/ObjectIntMap;->values:[I

    iget-object v11, v11, Landroidx/collection/ObjectIntMap;->metadata:[J

    move/from16 v25, v9

    array-length v9, v11

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_3

    move-object/from16 v26, v2

    move-wide/from16 v27, v6

    const/4 v2, 0x0

    :goto_2
    aget-wide v6, v11, v2

    move-object/from16 v29, v11

    not-long v11, v6

    shl-long v11, v11, v16

    and-long/2addr v11, v6

    and-long v11, v11, v20

    cmp-long v11, v11, v20

    if-eqz v11, :cond_2

    sub-int v11, v2, v9

    not-int v11, v11

    ushr-int/lit8 v11, v11, 0x1f

    rsub-int/lit8 v11, v11, 0x8

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_1

    and-long v30, v6, v23

    cmp-long v30, v30, v18

    if-gez v30, :cond_0

    shl-int/lit8 v30, v2, 0x3

    add-int v30, v30, v12

    move-wide/from16 v31, v6

    aget-object v6, v14, v30

    aget v7, v15, v30

    invoke-direct {v0, v10, v6}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_0
    move-wide/from16 v31, v6

    :goto_4
    shr-long v6, v31, v25

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_1
    move/from16 v6, v25

    if-ne v11, v6, :cond_4

    :cond_2
    if-eq v2, v9, :cond_4

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, p1

    move-object/from16 v11, v29

    const/16 v25, 0x8

    goto :goto_2

    :cond_3
    move-object/from16 v26, v2

    move-wide/from16 v27, v6

    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v4}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    :cond_5
    const/16 v6, 0x8

    goto :goto_5

    :cond_6
    move-object/from16 v26, v2

    move-wide/from16 v27, v6

    move/from16 v16, v10

    move-wide/from16 v20, v11

    move v6, v9

    :goto_5
    shr-long v9, v27, v6

    add-int/lit8 v13, v13, 0x1

    move-wide v11, v9

    move v9, v6

    move-wide v6, v11

    move/from16 v10, v16

    move-wide/from16 v11, v20

    move-object/from16 v2, v26

    goto/16 :goto_1

    :cond_7
    move-object/from16 v26, v2

    move v6, v9

    if-ne v8, v6, :cond_9

    goto :goto_6

    :cond_8
    move-object/from16 v26, v2

    :goto_6
    if-eq v5, v3, :cond_9

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v26

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final rereadDerivedState(Landroidx/compose/runtime/DerivedState;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/Snapshot;->getSnapshotId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    iget-object v4, v0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->valueToScopes:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v4, v1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    instance-of v5, v4, Landroidx/collection/MutableScatterSet;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_4

    check-cast v4, Landroidx/collection/MutableScatterSet;

    iget-object v5, v4, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    iget-object v4, v4, Landroidx/collection/ScatterSet;->metadata:[J

    array-length v9, v4

    add-int/lit8 v9, v9, -0x2

    if-ltz v9, :cond_6

    move v10, v8

    :goto_0
    aget-wide v11, v4, v10

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_3

    sub-int v13, v10, v9

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    move v15, v8

    :goto_1
    if-ge v15, v13, :cond_2

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_1

    shl-int/lit8 v16, v10, 0x3

    add-int v16, v16, v15

    move/from16 v17, v14

    aget-object v14, v5, v16

    invoke-virtual {v2, v14}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/collection/MutableObjectIntMap;

    move-object/from16 v18, v4

    if-nez v16, :cond_0

    new-instance v4, Landroidx/collection/MutableObjectIntMap;

    invoke-direct {v4, v8, v7, v6}, Landroidx/collection/MutableObjectIntMap;-><init>(IILjh2;)V

    invoke-virtual {v2, v14, v4}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v16, Lj59;->a:Lj59;

    goto :goto_2

    :cond_0
    move-object/from16 v4, v16

    :goto_2
    invoke-direct {v0, v1, v3, v14, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V

    goto :goto_3

    :cond_1
    move-object/from16 v18, v4

    move/from16 v17, v14

    :goto_3
    shr-long v11, v11, v17

    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v17

    move-object/from16 v4, v18

    goto :goto_1

    :cond_2
    move-object/from16 v18, v4

    move v4, v14

    if-ne v13, v4, :cond_6

    goto :goto_4

    :cond_3
    move-object/from16 v18, v4

    :goto_4
    if-eq v10, v9, :cond_6

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v18

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v4}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/collection/MutableObjectIntMap;

    if-nez v5, :cond_5

    new-instance v5, Landroidx/collection/MutableObjectIntMap;

    invoke-direct {v5, v8, v7, v6}, Landroidx/collection/MutableObjectIntMap;-><init>(IILjh2;)V

    invoke-virtual {v2, v4, v5}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, Lj59;->a:Lj59;

    :cond_5
    invoke-direct {v0, v1, v3, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->recordRead(Ljava/lang/Object;ILjava/lang/Object;Landroidx/collection/MutableObjectIntMap;)V

    :cond_6
    return-void
.end method

.method public final setReadingDerivedStates(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->readingDerivedStates:Z

    return-void
.end method
