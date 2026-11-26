.class public abstract Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$AppendValue;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ApplyChangeList;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ClearAllRecompositionRequired;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$CopyNodesToNewAnchorLocation;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$CopySlotTableToHandleLocation;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$DeactivateGroup;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$DetermineMovableContentNodeIndex;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$DisposeMovableContentState;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$Downs;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$EndCompositionScope;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$EndMovableContentPlacement;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$EndResumingScope;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$InsertNodeFixup;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$InsertNodeFixupByAnchor;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$InsertSlots;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$InsertSlotsWithFixups;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$MoveGroup;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$MoveNode;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ObjectParameter;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$PostInsertNodeFixup;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$PostInsertNodeFixupByAnchor;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ReleaseMovableGroup;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$Remember;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$RememberPausingScope;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$RemoveGroup;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$RemoveNode;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$RemoveTailGroupsAndValues;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$ResetSlots;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$SeekToAnchor;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$SeekToGroupHandle;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$SideEffect;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$SkipGroup;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$StartGroup;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$StartResumingScope;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$TestOperation;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UpdateAuxData;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UpdateNode;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UpdateRememberObserverHolderOrdering;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UpdateValue;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UpdateValueRelative;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$Ups;,
        Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation$UseCurrentNode;
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final ints:I

.field private final isExternallyVisible:Z

.field private final objects:I


# direct methods
.method private constructor <init>(IIZ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->ints:I

    .line 23
    iput p2, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->objects:I

    .line 24
    iput-boolean p3, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->isExternallyVisible:Z

    return-void
.end method

.method public synthetic constructor <init>(IIZILjh2;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x1

    :cond_2
    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;-><init>(IIZLjh2;)V

    return-void
.end method

.method public synthetic constructor <init>(IIZLjh2;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public abstract execute(Landroidx/compose/runtime/composer/linkbuffer/changelist/OperationArgContainer;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/composer/linkbuffer/changelist/OperationArgContainer;",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;",
            "Landroidx/compose/runtime/composer/RememberManager;",
            "Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;",
            ")V"
        }
    .end annotation
.end method

.method public final executeWithComposeStackTrace(Landroidx/compose/runtime/composer/linkbuffer/changelist/OperationArgContainer;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/composer/linkbuffer/changelist/OperationArgContainer;",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;",
            "Landroidx/compose/runtime/composer/RememberManager;",
            "Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getGroupHandle(Landroidx/compose/runtime/composer/linkbuffer/changelist/OperationArgContainer;Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;)J

    move-result-wide v1

    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->execute(Landroidx/compose/runtime/composer/linkbuffer/changelist/OperationArgContainer;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;Landroidx/compose/runtime/composer/RememberManager;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0, p5, p3, v1, v2}, Landroidx/compose/runtime/composer/linkbuffer/changelist/OperationKt;->access$attachComposeStackTrace(Ljava/lang/Throwable;Landroidx/compose/runtime/composer/gapbuffer/changelist/OperationErrorContext;Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;J)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public getGroupHandle(Landroidx/compose/runtime/composer/linkbuffer/changelist/OperationArgContainer;Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final getInts()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->ints:I

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    invoke-virtual {p0}, Lzk1;->f()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public final getObjects()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->objects:I

    return p0
.end method

.method public intParamName(I)Ljava/lang/String;
    .locals 1

    const-string p0, "IntParameter("

    const/16 v0, 0x29

    invoke-static {p0, p1, v0}, Lqz0;->d(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isExternallyVisible()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->isExternallyVisible:Z

    return p0
.end method

.method public objectParamName-gvac4VY(I)Ljava/lang/String;
    .locals 1

    const-string p0, "ObjectParameter("

    const/16 v0, 0x29

    invoke-static {p0, p1, v0}, Lqz0;->d(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/changelist/Operation;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
