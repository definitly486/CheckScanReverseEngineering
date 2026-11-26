.class public final Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace$Companion;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace$Companion;

.field private static final EmptyGroupData:[I

.field private static final EmptySlotData:[Ljava/lang/Object;


# instance fields
.field private _largeSizes:Landroidx/collection/MutableIntIntMap;

.field private anchors:Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private calledByMap:Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/collection/MutableIntSet;",
            ">;"
        }
    .end annotation
.end field

.field private freeSlotCount:I

.field private groups:[I

.field private slots:[Ljava/lang/Object;

.field private sourceInformationMap:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;",
            "Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;",
            ">;"
        }
    .end annotation
.end field

.field private unallocatedEnd:I

.field private unallocatedStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->Companion:Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->$stable:I

    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$newGroupsArray(I)[I

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->EmptyGroupData:[I

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$newSlotsArray(I)[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->EmptySlotData:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->EmptyGroupData:[I

    sget-object v1, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->EmptySlotData:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;-><init>([I[Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    const/4 v0, 0x0

    aget v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    aget v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    aget v0, p0, v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    aget v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    aget p0, p0, v0

    :cond_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 40
    invoke-static {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$newGroupsArray(I)[I

    move-result-object p1

    invoke-static {p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$newSlotsArray(I)[Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;-><init>([I[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    .line 43
    iput-object p2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    .line 44
    array-length p1, p2

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedEnd:I

    .line 45
    invoke-static {}, Landroidx/collection/IntObjectMapKt;->mutableIntObjectMapOf()Landroidx/collection/MutableIntObjectMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchors:Landroidx/collection/MutableIntObjectMap;

    return-void
.end method

.method public static final synthetic access$getLargeSizes(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)Landroidx/collection/MutableIntIntMap;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getLargeSizes()Landroidx/collection/MutableIntIntMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$growGroups(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->growGroups()V

    return-void
.end method

.method private final allocateSlots(I)I
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedStart:I

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedEnd:I

    add-int v2, v0, p1

    const/16 v3, 0xf

    if-gt v2, v1, :cond_1

    iput v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedStart:I

    if-le p1, v3, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getLargeSizes()Landroidx/collection/MutableIntIntMap;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroidx/collection/MutableIntIntMap;->set(II)V

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p0, v0, v2}, Laq5;->t(Ljava/lang/Object;[Ljava/lang/Object;II)V

    invoke-static {v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->slotRangeFromAddressAndSize(II)I

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->compactAndMaybeGrow(I)V

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedStart:I

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedEnd:I

    add-int v2, v0, p1

    if-gt v2, v1, :cond_3

    iput v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedStart:I

    if-le p1, v3, :cond_2

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getLargeSizes()Landroidx/collection/MutableIntIntMap;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroidx/collection/MutableIntIntMap;->set(II)V

    :cond_2
    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p0, v0, v2}, Laq5;->t(Ljava/lang/Object;[Ljava/lang/Object;II)V

    invoke-static {v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->slotRangeFromAddressAndSize(II)I

    move-result p0

    return p0

    :cond_3
    const-string p0, "compactAndMaybeGrow did not grow enough"

    invoke-static {p0}, Lav;->b(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0
.end method

.method private final compactAndMaybeGrow(I)V
    .locals 13

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedEnd:I

    iget v3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedStart:I

    sub-int/2addr v2, v3

    array-length v3, v0

    iget v4, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->freeSlotCount:I

    add-int/2addr v2, v4

    sub-int/2addr v3, v2

    add-int/2addr p1, v3

    array-length v2, v0

    shr-int/lit8 v2, v2, 0x5

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    const/4 v2, 0x1

    shl-int p1, v2, p1

    if-ge p1, v1, :cond_0

    move p1, v1

    :cond_0
    if-eq p1, v1, :cond_2

    const/16 v1, 0x100

    if-ge p1, v1, :cond_1

    move p1, v1

    :cond_1
    invoke-static {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$newSlotsArray(I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    invoke-static {}, Landroidx/collection/IntIntMapKt;->mutableIntIntMapOf()Landroidx/collection/MutableIntIntMap;

    move-result-object v1

    iget-object v4, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    new-instance v5, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;

    invoke-direct {v5, v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    sub-int/2addr v4, v2

    const/4 v0, 0x6

    invoke-static {v0, v4, v0}, Lnh5;->a(III)I

    move-result v4

    const/4 v6, 0x0

    move v7, v6

    if-gt v0, v4, :cond_6

    :goto_1
    iget-object v8, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    add-int/lit8 v9, v0, 0x5

    aget v8, v8, v9

    const/4 v10, -0x1

    if-eq v8, v10, :cond_5

    and-int/lit8 v10, v8, 0xf

    add-int/2addr v10, v2

    shr-int/lit8 v8, v8, 0x4

    const/16 v11, 0xf

    if-le v10, v11, :cond_3

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$getLargeSizes(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)Landroidx/collection/MutableIntIntMap;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroidx/collection/IntIntMap;->get(I)I

    move-result v10

    :cond_3
    add-int v12, v8, v10

    invoke-virtual {v5, v7, v8, v12}, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->move(III)V

    if-le v10, v11, :cond_4

    invoke-virtual {v1, v7, v10}, Landroidx/collection/MutableIntIntMap;->set(II)V

    :cond_4
    iget-object v8, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    invoke-static {v7, v10}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->slotRangeFromAddressAndSize(II)I

    move-result v11

    aput v11, v8, v9

    add-int/2addr v7, v10

    :cond_5
    if-eq v0, v4, :cond_6

    add-int/lit8 v0, v0, 0x6

    goto :goto_1

    :cond_6
    if-ne v7, v3, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected slot compaction result, computed we had "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slots, but copied "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slots"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v5}, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->done()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/collection/IntIntMap;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    iput-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->_largeSizes:Landroidx/collection/MutableIntIntMap;

    iput v7, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedStart:I

    array-length p1, p1

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedEnd:I

    iput v6, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->freeSlotCount:I

    return-void
.end method

.method private static final copyTreeFrom$copyGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;II)I
    .locals 8

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    add-int/lit8 v2, p3, 0x4

    aget v2, v0, v2

    aget v3, v0, p3

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v4

    invoke-static {v4, v3, p2, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$groupAllocate([IIII)I

    move-result v4

    if-gez v4, :cond_0

    invoke-static {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$growGroups(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)V

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v4

    invoke-static {v4, v3, p2, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$groupAllocate([IIII)I

    move-result v4

    :cond_0
    invoke-virtual {p1, p0, p3, v4}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->moveAnchorFrom(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;II)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->moveSourceInformation(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V

    add-int/lit8 p2, p3, 0x5

    aget p2, v0, p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    and-int/lit8 v3, p2, 0xf

    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 p2, p2, 0x4

    const/16 v5, 0xf

    if-le v3, v5, :cond_1

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$getLargeSizes(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)Landroidx/collection/MutableIntIntMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroidx/collection/IntIntMap;->get(I)I

    move-result v3

    :cond_1
    invoke-direct {p1, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->allocateSlots(I)I

    move-result v5

    iget-object v6, p1, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    shr-int/lit8 v7, v5, 0x4

    add-int/2addr v3, p2

    invoke-static {v1, v7, v6, p2, v3}, Laq5;->m([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    iget-object p2, p1, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    add-int/lit8 v1, v4, 0x5

    aput v5, p2, v1

    :cond_2
    add-int/lit8 p3, p3, 0x3

    aget p2, v0, p3

    move p3, v2

    :goto_0
    if-eq p2, v2, :cond_4

    invoke-static {p0, p1, v4, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->copyTreeFrom$copyGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;II)I

    move-result v1

    iget-object v3, p1, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    if-ne p3, v2, :cond_3

    add-int/lit8 p3, v4, 0x3

    aput v1, v3, p3

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    aput v1, v3, p3

    :goto_1
    add-int/lit8 p2, p2, 0x1

    aget p2, v0, p2

    move p3, v1

    goto :goto_0

    :cond_4
    return v4
.end method

.method private final freeGroup(I)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    add-int/lit8 v1, p1, 0x6

    array-length v2, v0

    if-le v1, v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, p1, 0x4

    aget v2, v0, v1

    const v3, 0x7fffff

    and-int/2addr v2, v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const-string v2, "Recursive loop in group structure detected at "

    invoke-static {p1, v2}, Lh2;->b(ILjava/lang/String;)V

    :cond_2
    iget-object v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchors:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v2, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    const/4 v5, -0x1

    if-eqz v2, :cond_3

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->setAddress(I)V

    iget-object v6, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchors:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v6, p1}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    iget-object v6, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->sourceInformationMap:Landroidx/collection/MutableScatterMap;

    if-eqz v6, :cond_3

    invoke-virtual {v6, v2}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    :cond_3
    add-int/lit8 v2, p1, 0x5

    aget v6, v0, v2

    invoke-direct {p0, v6}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->freeSlots(I)V

    aput v5, v0, v2

    add-int/lit8 v2, p1, 0x3

    aget v2, v0, v2

    :goto_1
    if-eq v2, v5, :cond_5

    add-int/lit8 v6, v2, 0x6

    array-length v7, v0

    if-le v6, v7, :cond_4

    :goto_2
    return-void

    :cond_4
    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    invoke-direct {p0, v2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->freeGroup(I)V

    move v2, v6

    goto :goto_1

    :cond_5
    aget p0, v0, v4

    add-int/lit8 v2, p1, 0x1

    aput p0, v0, v2

    add-int/lit8 p0, p1, 0x2

    aput v5, v0, p0

    aput p1, v0, v4

    aput v3, v0, v1

    return-void
.end method

.method private final freeSlots(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    and-int/lit8 v0, p1, 0xf

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 p1, p1, 0x4

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$getLargeSizes(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)Landroidx/collection/MutableIntIntMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/collection/IntIntMap;->get(I)I

    move-result v0

    :cond_0
    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->freeSlotsAt(II)V

    :cond_1
    return-void
.end method

.method private final freeSlotsAt(II)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    add-int v1, p1, p2

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$getUnallocated$p()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$getUnallocated$p()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0, p1, v1}, Laq5;->t(Ljava/lang/Object;[Ljava/lang/Object;II)V

    :goto_0
    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->freeSlotCount:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->freeSlotCount:I

    const/16 v0, 0xf

    if-le p2, v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getLargeSizes()Landroidx/collection/MutableIntIntMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntIntMap;->remove(I)V

    :cond_1
    return-void
.end method

.method private final getLargeSizes()Landroidx/collection/MutableIntIntMap;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->_largeSizes:Landroidx/collection/MutableIntIntMap;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/collection/IntIntMapKt;->mutableIntIntMapOf()Landroidx/collection/MutableIntIntMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->_largeSizes:Landroidx/collection/MutableIntIntMap;

    :cond_0
    return-object v0
.end method

.method public static synthetic getSourceInformationMap$annotations()V
    .locals 0

    return-void
.end method

.method private final growGroups()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    array-length v1, v0

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    const/16 v3, 0x300

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    invoke-static {v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$initGroups([II)V

    return-void
.end method

.method private final growSlotRangeAtGroup(III)I
    .locals 9

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedStart:I

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedEnd:I

    iget-object v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    add-int/lit8 p1, p1, 0x5

    aget v2, v2, p1

    shr-int/lit8 v2, v2, 0x4

    add-int v3, v2, p2

    const/16 v4, 0xf

    if-ne v3, v0, :cond_2

    add-int v5, v2, p3

    if-gt v5, v1, :cond_2

    sub-int p2, p3, p2

    add-int/2addr p2, v0

    iput p2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedStart:I

    if-le p3, v4, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getLargeSizes()Landroidx/collection/MutableIntIntMap;

    move-result-object p2

    invoke-virtual {p2, v2, p3}, Landroidx/collection/MutableIntIntMap;->set(II)V

    :cond_0
    invoke-static {v2, p3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->slotRangeFromAddressAndSize(II)I

    move-result p2

    iget-object p3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x1

    if-ne v5, v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$getUnallocated$p()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p3, v3

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$getUnallocated$p()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p3, v3, v5}, Laq5;->t(Ljava/lang/Object;[Ljava/lang/Object;II)V

    :goto_0
    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    aput p2, p0, p1

    return p2

    :cond_2
    sub-int v0, p3, p2

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    add-int v5, v3, v0

    array-length v6, v1

    if-lt v5, v6, :cond_3

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v7, v1, v6

    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$getUnallocated$p()Ljava/lang/Object;

    move-result-object v8

    if-eq v7, v8, :cond_5

    :goto_2
    add-int/lit8 v0, p3, 0x8

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->allocateSlots(I)I

    move-result v1

    invoke-direct {p0, v1, v0, p3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->shrinkSlotRange(III)I

    move-result p3

    shr-int/lit8 v0, p3, 0x4

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    aget v1, v1, p1

    shr-int/lit8 v1, v1, 0x4

    if-eq v0, v1, :cond_4

    iget-object v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    add-int v3, v1, p2

    invoke-static {v2, v0, v2, v1, v3}, Laq5;->m([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    invoke-direct {p0, v1, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->freeSlotsAt(II)V

    :cond_4
    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    aput p3, p0, p1

    return p3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    if-le p3, v4, :cond_7

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getLargeSizes()Landroidx/collection/MutableIntIntMap;

    move-result-object p2

    invoke-virtual {p2, v2, p3}, Landroidx/collection/MutableIntIntMap;->set(II)V

    :cond_7
    invoke-static {v2, p3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->slotRangeFromAddressAndSize(II)I

    move-result p2

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    add-int/2addr v2, p3

    add-int/lit8 p3, v3, 0x1

    if-ne v2, p3, :cond_8

    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$getUnallocated$p()Ljava/lang/Object;

    move-result-object p3

    aput-object p3, v1, v3

    goto :goto_3

    :cond_8
    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$getUnallocated$p()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, v1, v3, v2}, Laq5;->t(Ljava/lang/Object;[Ljava/lang/Object;II)V

    :goto_3
    iget-object p3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    aput p2, p3, p1

    iget p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->freeSlotCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->freeSlotCount:I

    return p2
.end method

.method private final removeSourceInformation(I)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->sourceInformationMap:Landroidx/collection/MutableScatterMap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchors:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v1, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchors:Landroidx/collection/MutableIntObjectMap;

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    invoke-virtual {v2, p0}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    if-nez p0, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->removeGroup(Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)Z

    return-void
.end method

.method private final shrinkSlotRange(III)I
    .locals 1

    shr-int/lit8 v0, p1, 0x4

    if-nez p3, :cond_1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->freeSlotsAt(II)V

    :cond_0
    return p3

    :cond_1
    sub-int/2addr p2, p3

    add-int p1, v0, p3

    if-lez p2, :cond_2

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->freeSlotsAt(II)V

    :cond_2
    const/16 p1, 0xf

    if-le p3, p1, :cond_3

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getLargeSizes()Landroidx/collection/MutableIntIntMap;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Landroidx/collection/MutableIntIntMap;->set(II)V

    :cond_3
    invoke-static {v0, p3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->slotRangeFromAddressAndSize(II)I

    move-result p0

    return p0
.end method

.method private final shrinkSlotRangeAtGroup(III)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    add-int/lit8 p1, p1, 0x5

    aget v0, v0, p1

    invoke-direct {p0, v0, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->shrinkSlotRange(III)I

    move-result p2

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    aput p2, p0, p1

    return p2
.end method

.method public static synthetic traverseGroup$runtime$default(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;IZLnl3;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    if-gez p1, :cond_1

    return-void

    :cond_1
    new-instance p4, Landroidx/compose/runtime/IntStack;

    invoke-direct {p4}, Landroidx/compose/runtime/IntStack;-><init>()V

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    move p5, p1

    :goto_0
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p5, p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    add-int/lit8 v0, p5, 0x1

    aget v0, p0, v0

    if-ltz v0, :cond_3

    invoke-virtual {p4, v0}, Landroidx/compose/runtime/IntStack;->push(I)V

    :cond_3
    add-int/lit8 p5, p5, 0x3

    aget p5, p0, p5

    if-ltz p5, :cond_4

    goto :goto_0

    :cond_4
    iget p5, p4, Landroidx/compose/runtime/IntStack;->tos:I

    if-nez p5, :cond_5

    return-void

    :cond_5
    invoke-virtual {p4}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result p5

    goto :goto_0
.end method

.method public static synthetic traverseGroupAndParents$runtime$default(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;IZLnl3;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    const/4 p5, 0x1

    if-eqz p4, :cond_0

    move p2, p5

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    if-nez p2, :cond_1

    add-int/lit8 p2, p1, 0x2

    aget p2, p0, p2

    goto :goto_0

    :cond_1
    move p2, p1

    :goto_0
    if-lez p2, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x2

    aget p2, p0, p2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p5, 0x0

    :goto_1
    if-nez p5, :cond_4

    const-string p0, "Traversing parent of group not in the slot table: "

    invoke-static {p1, p0}, Lh2;->b(ILjava/lang/String;)V

    :cond_4
    return-void
.end method

.method public static synthetic traverseGroupPartially$runtime$default(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;IZLnl3;ILjava/lang/Object;)V
    .locals 2

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    if-gez p1, :cond_1

    return-void

    :cond_1
    new-instance p4, Landroidx/compose/runtime/IntStack;

    invoke-direct {p4}, Landroidx/compose/runtime/IntStack;-><init>()V

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    move p5, p1

    :goto_0
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p5, p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    add-int/lit8 v1, p5, 0x1

    aget v1, p0, v1

    if-ltz v1, :cond_3

    invoke-virtual {p4, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    :cond_3
    add-int/lit8 p5, p5, 0x3

    aget p5, p0, p5

    if-eqz v0, :cond_4

    if-ltz p5, :cond_4

    goto :goto_0

    :cond_4
    iget p5, p4, Landroidx/compose/runtime/IntStack;->tos:I

    if-nez p5, :cond_5

    return-void

    :cond_5
    invoke-virtual {p4}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result p5

    goto :goto_0
.end method

.method private final validateSlotReferences([I)V
    .locals 8

    invoke-static {}, Landroidx/collection/IntIntMapKt;->mutableIntIntMapOf()Landroidx/collection/MutableIntIntMap;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x3

    aget v2, p1, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x6

    invoke-static {v3, v2, v3}, Lnh5;->a(III)I

    move-result v2

    if-gt v3, v2, :cond_5

    :goto_0
    add-int/lit8 v4, v3, 0x5

    aget v4, p1, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    and-int/lit8 v5, v4, 0xf

    add-int/lit8 v5, v5, 0x1

    shr-int/lit8 v4, v4, 0x4

    const/16 v6, 0xf

    if-le v5, v6, :cond_0

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$getLargeSizes(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)Landroidx/collection/MutableIntIntMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/collection/IntIntMap;->get(I)I

    move-result v5

    :cond_0
    const-string v6, "Group "

    if-ltz v4, :cond_3

    add-int/2addr v5, v4

    if-gt v5, v1, :cond_2

    :goto_1
    if-ge v4, v5, :cond_4

    invoke-virtual {v0, v4}, Landroidx/collection/IntIntMap;->containsKey(I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0, v4, v3}, Landroidx/collection/MutableIntIntMap;->set(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Landroidx/collection/IntIntMap;->get(I)I

    move-result v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, " contains a slot address ("

    invoke-static {v3, v6, v2}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1, v3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->validateSlotReferences$slotRangeTextOf(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;[II)Ljava/lang/String;

    move-result-object v3

    const-string v4, ") that overlaps with group "

    const-string v5, "\'s address ("

    invoke-static {v2, v3, v4, v0, v5}, Lo2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->validateSlotReferences$slotRangeTextOf(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;[II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p0, " slot range extends beyond the slot size"

    invoke-static {p0, v6, v3}, Lzc5;->d(Ljava/lang/Object;Ljava/lang/String;I)V

    return-void

    :cond_3
    const-string p0, " has an invalid slot address"

    invoke-static {p0, v6, v3}, Lzc5;->d(Ljava/lang/Object;Ljava/lang/String;I)V

    return-void

    :cond_4
    if-eq v3, v2, :cond_5

    add-int/lit8 v3, v3, 0x6

    goto :goto_0

    :cond_5
    iget-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    array-length p1, p1

    invoke-virtual {v0}, Landroidx/collection/IntIntMap;->getSize()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedEnd:I

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedStart:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->freeSlotCount:I

    if-ne v0, p1, :cond_6

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->freeSlotCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected freeSlotCount, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", expected "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final validateSlotReferences$slotRangeTextOf(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;[II)Ljava/lang/String;
    .locals 1

    add-int/lit8 p2, p2, 0x5

    aget p1, p1, p2

    and-int/lit8 p2, p1, 0xf

    add-int/lit8 p2, p2, 0x1

    shr-int/lit8 p1, p1, 0x4

    const/16 v0, 0xf

    if-le p2, v0, :cond_0

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$getLargeSizes(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)Landroidx/collection/MutableIntIntMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/IntIntMap;->get(I)I

    move-result p2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final allocateGroup(III)I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$groupAllocate([IIII)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$growGroups(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$groupAllocate([IIII)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public final anchorOfAddress(I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    if-eqz p1, :cond_3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Invalid anchor address "

    invoke-static {p1, v0}, Lh2;->b(ILjava/lang/String;)V

    :cond_1
    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchors:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    :cond_2
    check-cast v0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    return-object v0

    :cond_3
    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->getLazyAnchor()Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchorKt;->getNullAnchor()Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object p0

    return-object p0
.end method

.method public final contains(I)Z
    .locals 1

    if-lez p1, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    const/4 v0, 0x3

    aget p0, p0, v0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final copyTreeFrom(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;I)I
    .locals 1

    const/4 v0, -0x1

    invoke-static {p1, p0, v0, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->copyTreeFrom$copyGroup(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;II)I

    move-result p0

    return p0
.end method

.method public final distanceFrom$runtime(II)I
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    const/4 v0, 0x0

    :goto_0
    if-eq p1, p2, :cond_0

    if-ltz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x2

    aget p1, p0, p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final freeGroupTree(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->removeSourceInformation(I)V

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->freeGroup(I)V

    return-void
.end method

.method public final getCalledByMap$runtime()Landroidx/collection/MutableIntObjectMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/collection/MutableIntSet;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    return-object p0
.end method

.method public final getGroups()[I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    return-object p0
.end method

.method public final getSlots()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    return-object p0
.end method

.method public final getSourceInformationMap()Landroidx/collection/MutableScatterMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableScatterMap<",
            "Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;",
            "Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->sourceInformationMap:Landroidx/collection/MutableScatterMap;

    return-object p0
.end method

.method public final moveAnchorFrom(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;II)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchors:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v0, p3}, Landroidx/collection/IntObjectMap;->containsKey(I)Z

    iget-object p1, p1, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchors:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p1, p2}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->setAddress(I)V

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchors:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0, p3, p1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final moveSourceInformation(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->sourceInformationMap:Landroidx/collection/MutableScatterMap;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->sourceInformationMap:Landroidx/collection/MutableScatterMap;

    if-nez v1, :cond_3

    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->sourceInformationMap:Landroidx/collection/MutableScatterMap;

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p2}, Landroidx/collection/ScatterMap;->contains(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v1, p2, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ownsAnchor(Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)Z
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchors:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;->getAddress()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final readSlot(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    add-int/lit8 p1, p1, 0x5

    aget p0, p0, p1

    shr-int/lit8 p0, p0, 0x4

    add-int/2addr p0, p2

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final recordCalledBy(II)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/collection/IntObjectMapKt;->mutableIntObjectMapOf()Landroidx/collection/MutableIntObjectMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Landroidx/collection/IntSetKt;->mutableIntSetOf()Landroidx/collection/MutableIntSet;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    :cond_1
    check-cast p0, Landroidx/collection/MutableIntSet;

    invoke-virtual {p0, p2}, Landroidx/collection/MutableIntSet;->add(I)Z

    return-void
.end method

.method public final recordLargeBlock(II)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getLargeSizes()Landroidx/collection/MutableIntIntMap;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableIntIntMap;->set(II)V

    return-void
.end method

.method public final recordMovedSourceInformation(II)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->sourceInformationMap:Landroidx/collection/MutableScatterMap;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    add-int/lit8 v2, p1, 0x2

    aget v1, v1, v2

    iget-object v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchors:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {v2, v1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchorOfAddress(I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchorOfAddress(I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->addGroupAfter(Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V

    return-void
.end method

.method public final recordSourceInformation(ILjava/lang/String;I)Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->sourceInformationMap:Landroidx/collection/MutableScatterMap;

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->sourceInformationMap:Landroidx/collection/MutableScatterMap;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchorOfAddress(I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2, v3}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;-><init>(ILjava/lang/String;I)V

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    add-int/lit8 p1, p1, 0x3

    aget p1, p2, p1

    :goto_0
    if-eq p1, p3, :cond_1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchorOfAddress(I)Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;->reportGroup(Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;)V

    iget-object p2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, p2, p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    check-cast v2, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    return-object v2
.end method

.method public final reserveSlots()J
    .locals 6

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedStart:I

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedEnd:I

    iput v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedStart:I

    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    int-to-long v0, v1

    and-long/2addr v0, v4

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final resizeSlotRangeAtGroup(II)I
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    add-int/lit8 v1, p1, 0x5

    aget v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v0, 0xf

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xf

    if-le v1, v2, :cond_3

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$getLargeSizes(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)Landroidx/collection/MutableIntIntMap;

    move-result-object v1

    shr-int/lit8 v0, v0, 0x4

    invoke-virtual {v1, v0}, Landroidx/collection/IntIntMap;->get(I)I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {p0, p1, v0, p2}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->resizeSlotRangeAtGroup(III)I

    move-result p0

    return p0
.end method

.method public final resizeSlotRangeAtGroup(III)I
    .locals 0

    if-ne p3, p2, :cond_0

    .line 42
    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    add-int/lit8 p1, p1, 0x5

    .line 43
    aget p0, p0, p1

    return p0

    :cond_0
    if-le p3, p2, :cond_1

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->growSlotRangeAtGroup(III)I

    move-result p0

    return p0

    .line 45
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->shrinkSlotRangeAtGroup(III)I

    move-result p0

    return p0
.end method

.method public final restoreSlots(II)V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedEnd:I

    if-ne p2, v0, :cond_0

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedStart:I

    :cond_0
    return-void
.end method

.method public final setCalledByMap$runtime(Landroidx/collection/MutableIntObjectMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/collection/MutableIntSet;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    return-void
.end method

.method public final setGroups([I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    return-void
.end method

.method public final setSlots([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    return-void
.end method

.method public final setSourceInformationMap(Landroidx/collection/MutableScatterMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;",
            "Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->sourceInformationMap:Landroidx/collection/MutableScatterMap;

    return-void
.end method

.method public final slotAddressAndSize(ILbm3;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(I",
            "Lbm3<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TR;>;)TR;"
        }
    .end annotation

    and-int/lit8 v0, p1, 0xf

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 p1, p1, 0x4

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$getLargeSizes(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)Landroidx/collection/MutableIntIntMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/collection/IntIntMap;->get(I)I

    move-result v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final slotSize(I)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    and-int/lit8 v0, p1, 0xf

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$getLargeSizes(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)Landroidx/collection/MutableIntIntMap;

    move-result-object p0

    shr-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Landroidx/collection/IntIntMap;->get(I)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public final sourceInformationOf(I)Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->sourceInformationMap:Landroidx/collection/MutableScatterMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->anchors:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/composer/linkbuffer/LinkAnchor;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/composer/linkbuffer/LinkGroupSourceInformation;

    return-object p0

    :cond_0
    return-object v1
.end method

.method public final toDebugString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SlotTableAddressSpace:\n  Group size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n  Slots size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\n Groups:\n  Unallocated groups: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    aget v2, v1, v2

    array-length v3, v1

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v4, v1, v4

    const/4 v5, 0x0

    :goto_0
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v4, v1, v4

    goto :goto_0

    :cond_0
    const-string v4, "  Free groups:        "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n  Total free groups:  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n  Used group%:        "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    div-int/lit8 v3, v3, 0x6

    sub-int/2addr v3, v5

    array-length v1, v1

    div-int/lit8 v1, v1, 0x6

    int-to-double v3, v3

    int-to-double v5, v1

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n\n Slots:\n  Unallocated slots: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedEnd:I

    iget v3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->unallocatedStart:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n  Slot used%:    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    array-length v3, v3

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->freeSlotCount:I

    sub-int p0, v3, p0

    sub-int/2addr p0, v1

    int-to-double v4, p0

    int-to-double v6, v3

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final traverseAllChildren$runtime(ILnl3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object v0

    add-int/lit8 p1, p1, 0x3

    aget p1, v0, p1

    if-ltz p1, :cond_3

    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x3

    aget p1, p0, p1

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    iget p1, v0, Landroidx/compose/runtime/IntStack;->tos:I

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result p1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final traverseChildren$runtime(ILnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    add-int/lit8 p1, p1, 0x3

    aget p1, p0, p1

    :goto_0
    if-lez p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget p1, p0, p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final traverseGroup$runtime(IZLnl3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    if-gez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    move v1, p1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget v2, p0, v2

    if-ltz v2, :cond_2

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/IntStack;->push(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x3

    aget v1, p0, v1

    if-ltz v1, :cond_3

    goto :goto_0

    :cond_3
    iget v1, v0, Landroidx/compose/runtime/IntStack;->tos:I

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v1

    goto :goto_0
.end method

.method public final traverseGroupAndParents$runtime(IZLnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    if-nez p2, :cond_0

    add-int/lit8 p2, p1, 0x2

    aget p2, p0, p2

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    if-lez p2, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x2

    aget p2, p0, p2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_3

    const-string p0, "Traversing parent of group not in the slot table: "

    invoke-static {p1, p0}, Lh2;->b(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final traverseGroupPartially$runtime(IZLnl3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-gez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    move v1, p1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget v3, p0, v3

    if-ltz v3, :cond_2

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/IntStack;->push(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x3

    aget v1, p0, v1

    if-eqz v2, :cond_3

    if-ltz v1, :cond_3

    goto :goto_0

    :cond_3
    iget v1, v0, Landroidx/compose/runtime/IntStack;->tos:I

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v1

    goto :goto_0
.end method

.method public final traverseParents$runtime(ILnl3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    add-int/lit8 v0, p1, 0x2

    aget v0, p0, v0

    :goto_0
    if-lez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x2

    aget v0, p0, v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    const-string p0, "Traversing parent of group not in the slot table: "

    invoke-static {p1, p0}, Lh2;->b(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final traverseSiblings$runtime(ILnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    :goto_0
    if-ltz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget p1, p0, p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final traverseSiblingsAfter$runtime(ILnl3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->getGroups()[I

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    aget p1, p0, p1

    :goto_0
    if-ltz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget p1, p0, p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final validate()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    invoke-static {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$validateFreeList([I)I

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->validateSlotReferences([I)V

    return-void
.end method

.method public final writeSlot(IILjava/lang/Object;)I
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->groups:[I

    add-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 p1, p2, 0x1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->allocateSlots(I)I

    move-result p1

    aput p1, v0, v1

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v2, 0xf

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v1, v2, 0x4

    const/16 v3, 0xf

    if-le v0, v3, :cond_1

    invoke-static {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$getLargeSizes(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)Landroidx/collection/MutableIntIntMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/collection/IntIntMap;->get(I)I

    move-result v0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->growSlotRangeAtGroup(III)I

    move-result v2

    :cond_2
    move p1, v2

    :goto_0
    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->slots:[Ljava/lang/Object;

    shr-int/lit8 v0, p1, 0x4

    add-int/2addr v0, p2

    aput-object p3, p0, v0

    return p1
.end method
