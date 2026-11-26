.class public final Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

.field private inReservedRange:Z

.field private isClosed:Z

.field private nodeCount:I

.field private parent:I

.field private final parentStack:Landroidx/compose/runtime/IntStack;

.field private previousSibling:I

.field private final previousSiblingStack:Landroidx/compose/runtime/IntStack;

.field private recordCallByInformation:Z

.field private recordSourceInformation:Z

.field private slotCurrent:I

.field private slotEnd:I

.field private slotReserveEnd:I

.field private slotReserveStart:I

.field private slotReserveUsedUpTo:I

.field private slotStart:I

.field private slots:[Ljava/lang/Object;

.field private final table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    iput-boolean p2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->recordSourceInformation:Z

    iput-boolean p3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->recordCallByInformation:Z

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    const/4 p3, -0x1

    iput p3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parentStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getRoot()I

    move-result p1

    if-ne p1, p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p2

    :goto_0
    move v1, p3

    move p3, p1

    move p1, v1

    if-ltz p3, :cond_1

    add-int/lit8 p1, p3, 0x1

    aget p1, p2, p1

    goto :goto_0

    :cond_1
    move p3, p1

    :goto_1
    iput p3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->previousSibling:I

    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->previousSiblingStack:Landroidx/compose/runtime/IntStack;

    iget-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getSlots()[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slots:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;ZZ)V
    .locals 7

    .line 65
    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;-><init>(ILandroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;ZZILjh2;)V

    .line 66
    invoke-direct {p0, v0, v3, v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;-><init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;ZZ)V

    return-void
.end method

.method public static final synthetic access$startNewGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->startNewGroup(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final buildEnd()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->saveSlotRange(I)I

    :cond_0
    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->returnReservedSlotRegion()V

    return-void
.end method

.method private final reserveSlotSlotRegion()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->reserveSlots()J

    move-result-wide v0

    long-to-int v2, v0

    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    long-to-int v0, v0

    iput v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotReserveStart:I

    iput v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotReserveUsedUpTo:I

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotReserveEnd:I

    return-void
.end method

.method private final restoreFromSlotRange(I)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v0

    add-int/lit8 p1, p1, 0x5

    aget p1, v0, p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    and-int/lit8 v2, p1, 0xf

    add-int/2addr v2, v1

    shr-int/lit8 p1, p1, 0x4

    const/16 v1, 0xf

    if-le v2, v1, :cond_0

    invoke-static {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$getLargeSizes(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)Landroidx/collection/MutableIntIntMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/IntIntMap;->get(I)I

    move-result v2

    :cond_0
    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotStart:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotEnd:I

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotCurrent:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->inReservedRange:Z

    return-void

    :cond_1
    iget p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotReserveUsedUpTo:I

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotStart:I

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotCurrent:I

    iget p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotReserveEnd:I

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotEnd:I

    iput-boolean v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->inReservedRange:Z

    return-void
.end method

.method private final returnReservedSlotRegion()V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotReserveStart:I

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotReserveEnd:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    iget v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotReserveUsedUpTo:I

    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->restoreSlots(II)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotReserveStart:I

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotReserveUsedUpTo:I

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotReserveEnd:I

    :cond_0
    return-void
.end method

.method private final saveSlotRange(I)I
    .locals 6

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v1

    iget v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotCurrent:I

    iget v3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotStart:I

    if-le v2, v3, :cond_4

    iget-boolean v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->inReservedRange:Z

    if-eqz v0, :cond_2

    sub-int v0, v2, v3

    invoke-static {v3, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->slotRangeFromAddressAndSize(II)I

    move-result v4

    const/16 v5, 0xf

    if-le v0, v5, :cond_1

    iget-object v5, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {v5, v3, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->recordLargeBlock(II)V

    :cond_1
    iput v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotReserveUsedUpTo:I

    add-int/lit8 p1, p1, 0x5

    aput v4, v1, p1

    return v0

    :cond_2
    sub-int/2addr v2, v3

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotEnd:I

    sub-int/2addr v0, v3

    if-eq v0, v2, :cond_3

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {p0, p1, v0, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->resizeSlotRangeAtGroup(III)I

    :cond_3
    return v2

    :cond_4
    const/4 p0, -0x1

    add-int/lit8 p1, p1, 0x5

    aput p0, v1, p1

    return v0
.end method

.method private final slowAppend(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->saveSlotRange(I)I

    move-result v1

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->returnReservedSlotRegion()V

    iget-object v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {v2, v0, v1, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->writeSlot(IILjava/lang/Object;)I

    iget-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getSlots()[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slots:[Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->reserveSlotSlotRegion()V

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->restoreFromSlotRange(I)V

    return-void
.end method

.method public static synthetic startGroup$default(Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    :cond_0
    move-object v3, p2

    sget-object p2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p2

    if-ne v3, p2, :cond_1

    const/4 p2, 0x0

    :goto_0
    move v2, p2

    goto :goto_1

    :cond_1
    const/high16 p2, 0x1000000

    goto :goto_0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->access$startNewGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final startNewGroup(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v2

    invoke-static {v2, p1, v0, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$groupAllocate([IIII)I

    move-result v2

    if-gez v2, :cond_0

    invoke-static {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$growGroups(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)V

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v1

    invoke-static {v1, p1, v0, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$groupAllocate([IIII)I

    move-result v2

    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p1

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->previousSibling:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    if-ne v0, v3, :cond_1

    iget-object v4, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->setRoot(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v0, 0x3

    aput v2, p1, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v1, 0x1

    aput v2, p1, v4

    :goto_0
    iget-object v4, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parentStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/IntStack;->push(I)V

    iget-object v4, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->previousSiblingStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    iput v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    iput v3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->previousSibling:I

    if-eq v0, v3, :cond_3

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->nodeCount:I

    add-int/lit8 v3, v0, 0x4

    aget v4, p1, v3

    const/high16 v5, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr v4, v5

    or-int/2addr v1, v4

    aput v1, p1, v3

    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->nodeCount:I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->saveSlotRange(I)I

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotReserveUsedUpTo:I

    iput v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotStart:I

    iput v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotCurrent:I

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotReserveEnd:I

    iput v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotEnd:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->inReservedRange:Z

    const/high16 v1, 0x800000

    and-int v3, p2, v1

    if-ne v3, v1, :cond_4

    invoke-virtual {p0, p5}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->append(Ljava/lang/Object;)V

    :cond_4
    const/high16 p5, 0x1000000

    and-int v1, p2, p5

    if-ne v1, p5, :cond_5

    invoke-virtual {p0, p3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->append(Ljava/lang/Object;)V

    :cond_5
    const/high16 p3, 0x2000000

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_6

    invoke-virtual {p0, p4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->append(Ljava/lang/Object;)V

    :cond_6
    iget p2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotCurrent:I

    iget p3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotStart:I

    if-le p2, p3, :cond_7

    sub-int/2addr p2, p3

    invoke-static {p3, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->slotRangeFromAddressAndSize(II)I

    move-result p2

    add-int/lit8 p3, v2, 0x5

    aput p2, p1, p3

    :cond_7
    iget-boolean p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->recordSourceInformation:Z

    if-eqz p1, :cond_8

    if-ltz v0, :cond_8

    iget-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->recordSourceInformation(ILjava/lang/String;I)Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchorOfAddress(I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->reportGroup(Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public final addFlags(I)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    add-int/lit8 v2, v1, 0x4

    aget v2, v0, v2

    or-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x4

    aput p1, v0, v1

    invoke-static {p1}, Landroidx/compose/runtime/composer/linkbuffer/GroupFlagsKt;->propagatingFlagsOf(I)I

    move-result p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v1

    add-int/lit8 v2, p0, 0x2

    aget v2, v1, v2

    :goto_0
    if-lez v2, :cond_1

    add-int/lit8 v3, v2, 0x4

    aget v4, v0, v3

    and-int v5, p1, v4

    if-ne v5, p1, :cond_0

    return-void

    :cond_0
    or-int/2addr v4, p1

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x2

    aget v2, v1, v2

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_3

    const-string p1, "Traversing parent of group not in the slot table: "

    invoke-static {p0, p1}, Lh2;->b(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final append(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotCurrent:I

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotEnd:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slots:[Ljava/lang/Object;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotCurrent:I

    aput-object p1, v1, v0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slowAppend(Ljava/lang/Object;)V

    return-void
.end method

.method public final build()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->buildEnd()V

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->close()V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    return-object p0
.end method

.method public final buildStart()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->reserveSlotSlotRegion()V

    return-void
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->isClosed:Z

    return-void
.end method

.method public final collectCallByInformation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->recordCallByInformation:Z

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->setRecordCallByInformation(Z)V

    return-void
.end method

.method public final collectSourceInformation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->recordSourceInformation:Z

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->setRecordSourceInformation(Z)V

    return-void
.end method

.method public final endGroup()I
    .locals 6

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v1

    iget v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->nodeCount:I

    add-int/lit8 v3, v0, 0x4

    aget v4, v1, v3

    const/high16 v5, -0x800000    # Float.NEGATIVE_INFINITY

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    aput v2, v1, v3

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->saveSlotRange(I)I

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parentStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    iget-object v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->previousSiblingStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v2}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getRoot()I

    move-result v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x3

    aget v0, v1, v0

    goto :goto_0

    :cond_1
    add-int/2addr v2, v4

    aget v0, v1, v2

    :goto_0
    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->previousSibling:I

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->restoreFromSlotRange(I)V

    aget v0, v1, v3

    const/high16 v2, 0x800000

    and-int v3, v0, v2

    const v5, 0x7fffff

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_2
    and-int v4, v0, v5

    :goto_1
    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    add-int/lit8 v0, v0, 0x4

    aget v0, v1, v0

    and-int/2addr v0, v5

    add-int/2addr v0, v4

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->nodeCount:I

    return v4
.end method

.method public final flagsOf(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    add-int/lit8 p1, p1, 0x4

    aget p0, p0, p1

    return p0
.end method

.method public final getParentAnchor()Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getParentGroup()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchorOfAddress(I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object p0

    return-object p0
.end method

.method public final getParentGroup()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    return p0
.end method

.method public final getParentHandle()J
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->previousSiblingStack:Landroidx/compose/runtime/IntStack;

    iget v1, v0, Landroidx/compose/runtime/IntStack;->tos:I

    if-nez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->peek()I

    move-result v0

    :goto_0
    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final getRecordCallByInformation()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->recordCallByInformation:Z

    return p0
.end method

.method public final getRecordSourceInformation()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->recordSourceInformation:Z

    return p0
.end method

.method public final getSlotIndex()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotCurrent:I

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotStart:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getTable()Landroidx/compose/runtime/composer/linkbuffer/SlotTable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    return-object p0
.end method

.method public final groupAux(I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v0

    add-int/lit8 v1, p1, 0x4

    aget v1, v0, v1

    const/high16 v2, 0x2000000

    and-int v3, v1, v2

    if-ne v3, v2, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slots:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x5

    aget p1, v0, p1

    shr-int/lit8 p1, p1, 0x4

    const/high16 v0, 0x1800000

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    add-int/2addr v0, p1

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final groupKey(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    aget p0, p0, p1

    return p0
.end method

.method public final groupObjectKey(I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v0

    add-int/lit8 v1, p1, 0x4

    aget v1, v0, v1

    const/high16 v2, 0x1000000

    and-int v3, v1, v2

    if-ne v3, v2, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slots:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x5

    aget p1, v0, p1

    shr-int/lit8 p1, p1, 0x4

    const/high16 v0, 0x800000

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    add-int/2addr v0, p1

    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final insertAux(Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->getParentGroup()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v1

    add-int/lit8 v0, v0, 0x4

    aget v2, v1, v0

    const/high16 v3, 0x2000000

    or-int/2addr v2, v3

    aput v2, v1, v0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->append(Ljava/lang/Object;)V

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotStart:I

    const/high16 v1, 0x1800000

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotCurrent:I

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getSlots()[Ljava/lang/Object;

    move-result-object v2

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotCurrent:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {v2, v0, v2, v1, p0}, Laq5;->m([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    aput-object p1, v2, v1

    :cond_0
    return-void
.end method

.method public final isClosed()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->isClosed:Z

    return p0
.end method

.method public final isEmpty()Z
    .locals 1

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isNode()Z
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    add-int/lit8 v0, v0, 0x4

    aget p0, p0, v0

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final lastRoot()J
    .locals 8

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getRoot()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getRoot()I

    move-result p0

    invoke-virtual {v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v2

    add-int/lit8 p0, p0, 0x1

    aget p0, v2, p0

    move v7, v0

    move v0, p0

    move p0, v7

    :goto_0
    if-ltz v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget v1, v2, v1

    move v7, v1

    move v1, p0

    move p0, v0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, p0

    :cond_1
    int-to-long v1, v1

    const/16 p0, 0x20

    shl-long/2addr v1, p0

    int-to-long v3, v0

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final moveFrom(Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;J)V
    .locals 6

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;->getAddressSpace$runtime()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;->handle()J

    move-result-wide v0

    invoke-virtual {p1, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;->seek(J)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;->removeGroup(Z)V

    invoke-virtual {p1, v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableEditor;->seek(J)V

    invoke-static {p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/GroupHandleKt;->getGroup(J)I

    move-result p1

    iget-object p2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p2

    iget p3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->previousSibling:I

    const/4 v1, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    if-ne p3, v3, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->table:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->setRoot(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p3, 0x3

    aput p1, p2, v0

    goto :goto_0

    :cond_1
    add-int/2addr v0, v1

    aput p1, p2, v0

    :goto_0
    add-int/lit8 v0, p1, 0x2

    aput p3, p2, v0

    add-int/lit8 v0, p1, 0x1

    aput v3, p2, v0

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->previousSibling:I

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->nodeCount:I

    add-int/lit8 p1, p1, 0x4

    aget p1, p2, p1

    const/high16 v3, 0x800000

    and-int v4, p1, v3

    if-ne v4, v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    const v3, 0x7fffff

    and-int/2addr v3, p1

    :goto_1
    add-int/2addr v0, v3

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->nodeCount:I

    invoke-static {p1}, Landroidx/compose/runtime/composer/linkbuffer/GroupFlagsKt;->propagatingFlagsOf(I)I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    move v0, p3

    :goto_2
    if-lez v0, :cond_3

    add-int/lit8 v3, v0, 0x4

    aget v4, p2, v3

    and-int v5, v4, p1

    if-eq v5, p1, :cond_5

    or-int/2addr v4, p1

    aput v4, p2, v3

    add-int/lit8 v0, v0, 0x2

    aget v0, p0, v0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    move v2, v1

    :cond_4
    if-nez v2, :cond_5

    const-string p0, "Traversing parent of group not in the slot table: "

    invoke-static {p3, p0}, Lh2;->b(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final parent(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method public final recordGroupSourceInformation(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->recordSourceInformation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->recordSourceInformation(ILjava/lang/String;I)Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    :cond_0
    return-void
.end method

.method public final recordGrouplessCallSourceInformationEnd()V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->recordSourceInformation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->recordSourceInformation(ILjava/lang/String;I)Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotCurrent:I

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotStart:I

    sub-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->endGrouplessCall(I)V

    :cond_0
    return-void
.end method

.method public final recordGrouplessCallSourceInformationStart(ILjava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->recordCallByInformation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->groupKey(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->recordCalledBy(II)V

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->recordSourceInformation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->addressSpace:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->parent:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->recordSourceInformation(ILjava/lang/String;I)Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotCurrent:I

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->slotStart:I

    sub-int/2addr v1, p0

    invoke-virtual {v0, p1, p2, v1}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->startGrouplessCall(ILjava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public final setRecordCallByInformation(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->recordCallByInformation:Z

    return-void
.end method

.method public final setRecordSourceInformation(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->recordSourceInformation:Z

    return-void
.end method

.method public final startDataGroup(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_0

    const/high16 v0, 0x2000000

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3000000

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->access$startNewGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final startGroup(ILjava/lang/Object;)V
    .locals 7

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x1000000

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->access$startNewGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final startNodeGroup(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_0

    const/high16 v0, 0x800000

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x1800000

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;->access$startNewGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableBuilder;IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
