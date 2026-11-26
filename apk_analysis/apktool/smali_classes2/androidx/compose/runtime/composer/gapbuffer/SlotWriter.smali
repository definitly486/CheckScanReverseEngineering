.class public final Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;


# instance fields
.field private anchors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;",
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

.field private closed:Z

.field private currentGroup:I

.field private currentGroupEnd:I

.field private currentSlot:I

.field private currentSlotEnd:I

.field private deferredSlotWrites:Landroidx/collection/MutableIntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableIntObjectMap<",
            "Landroidx/collection/MutableObjectList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final endStack:Landroidx/compose/runtime/IntStack;

.field private groupGapLen:I

.field private groupGapStart:I

.field private groups:[I

.field private insertCount:I

.field private nodeCount:I

.field private final nodeCountStack:Landroidx/compose/runtime/IntStack;

.field private parent:I

.field private pendingRecalculateMarks:Landroidx/collection/MutableIntList;

.field private slots:[Ljava/lang/Object;

.field private slotsGapLen:I

.field private slotsGapOwner:I

.field private slotsGapStart:I

.field private sourceInformationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;",
            "Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;",
            ">;"
        }
    .end annotation
.end field

.field private final startStack:Landroidx/compose/runtime/IntStack;

.field private final table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->Companion:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getGroups()[I

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getAnchors$runtime()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getSourceInformationMap$runtime()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getCalledByMap$runtime()Landroidx/collection/MutableIntObjectMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getGroupsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getGroupsSize()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getSlotsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v0, v0

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getSlotsSize()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getGroupsSize()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapOwner:I

    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getGroupsSize()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    return-void
.end method

.method public static final synthetic access$containsAnyGroupMarks(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->containsAnyGroupMarks(I)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$dataIndex(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$dataIndex(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;[II)I
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$dataIndexToDataAddress(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$dataIndexToDataAnchor(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;IIII)I
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAnchors$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getCurrentSlot$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    return p0
.end method

.method public static final synthetic access$getGroupGapStart$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    return p0
.end method

.method public static final synthetic access$getGroups$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)[I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    return-object p0
.end method

.method public static final synthetic access$getNodeCount$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    return p0
.end method

.method public static final synthetic access$getSlots$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getSlotsGapLen$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    return p0
.end method

.method public static final synthetic access$getSlotsGapOwner$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapOwner:I

    return p0
.end method

.method public static final synthetic access$getSlotsGapStart$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    return p0
.end method

.method public static final synthetic access$getSourceInformationMap$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$groupIndexToAddress(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)I
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$insertGroups(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertGroups(I)V

    return-void
.end method

.method public static final synthetic access$insertSlots(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertSlots(II)V

    return-void
.end method

.method public static final synthetic access$moveGroupGapTo(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->moveGroupGapTo(I)V

    return-void
.end method

.method public static final synthetic access$moveSlotGapTo(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->moveSlotGapTo(II)V

    return-void
.end method

.method public static final synthetic access$removeGroups(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->removeGroups(II)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$removeSlots(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->removeSlots(III)V

    return-void
.end method

.method public static final synthetic access$setCurrentGroup$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    return-void
.end method

.method public static final synthetic access$setCurrentSlot$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    return-void
.end method

.method public static final synthetic access$setNodeCount$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    return-void
.end method

.method public static final synthetic access$setSlotsGapOwner$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapOwner:I

    return-void
.end method

.method public static final synthetic access$updateContainsMark(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->updateContainsMark(I)V

    return-void
.end method

.method public static synthetic anchor$default(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;IILjava/lang/Object;)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object p0

    return-object p0
.end method

.method private final auxIndex([II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result p0

    mul-int/lit8 p2, p2, 0x5

    add-int/lit8 p2, p2, 0x1

    aget p1, p1, p2

    shr-int/lit8 p1, p1, 0x1d

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method private final childContainsAnyMarks(I)Z
    .locals 4

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSize(I)I

    move-result v1

    add-int/2addr v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget p1, p1, v2

    const/high16 v2, 0xc000000

    and-int/2addr p1, v2

    if-eqz p1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSize(I)I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final childGroupAtIndex(II)I
    .locals 4

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSize(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge p1, v0, :cond_2

    if-ge v1, p2, :cond_2

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-static {v3, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$groupSize([II)I

    move-result v3

    add-int/2addr p1, v3

    if-ge p1, v0, :cond_0

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v2, v2, 0x5

    add-int/lit8 v2, v2, 0x1

    aget v2, v3, v2

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method private final clearSlotGap()V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    add-int/2addr v1, v0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2, p0, v0, v1}, Laq5;->t(Ljava/lang/Object;[Ljava/lang/Object;II)V

    return-void
.end method

.method private final containsAnyGroupMarks(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    const/4 p1, 0x1

    add-int/2addr p0, p1

    aget p0, v0, p0

    const/high16 v0, 0xc000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final containsGroupMark(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    const/4 p1, 0x1

    add-int/2addr p0, p1

    aget p0, v0, p0

    const/high16 v0, 0x4000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final dataAnchorToDataIndex(III)I
    .locals 0

    if-gez p1, :cond_0

    sub-int/2addr p3, p2

    add-int/2addr p3, p1

    add-int/lit8 p3, p3, 0x1

    return p3

    :cond_0
    return p1
.end method

.method private final dataIndex(I)I
    .locals 1

    .line 29
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result p0

    return p0
.end method

.method private final dataIndex([II)I
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCapacity()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    array-length p1, p1

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    sub-int/2addr p1, p0

    return p1

    :cond_0
    mul-int/lit8 p2, p2, 0x5

    add-int/lit8 p2, p2, 0x4

    aget p1, p1, p2

    iget p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v0, v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataAnchorToDataIndex(III)I

    move-result p0

    return p0
.end method

.method private final dataIndexToDataAddress(I)I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    mul-int/2addr v0, p0

    add-int/2addr v0, p1

    return v0
.end method

.method private final dataIndexToDataAnchor(IIII)I
    .locals 0

    if-le p1, p2, :cond_0

    sub-int/2addr p4, p3

    sub-int/2addr p4, p1

    add-int/lit8 p4, p4, 0x1

    neg-int p0, p4

    return p0

    :cond_0
    return p1
.end method

.method private final dataIndexes([I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->dataAnchors$default([IIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    invoke-static {v3, v1}, Lkx6;->n(II)Ly74;

    move-result-object v1

    invoke-static {v1, v0}, Lqn1;->l0(Ly74;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    add-int/2addr v2, v4

    array-length p1, p1

    div-int/lit8 p1, p1, 0x5

    invoke-static {v2, p1}, Lkx6;->n(II)Ly74;

    move-result-object p1

    invoke-static {p1, v0}, Lqn1;->l0(Ly74;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, v1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    iget-object v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v5, v5

    invoke-direct {p0, v2, v4, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataAnchorToDataIndex(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final fixParentAnchorsFor(III)V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parentIndexToAnchor(II)I

    move-result p1

    :goto_0
    if-ge p3, p2, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput p1, v0, v1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$groupSize([II)I

    move-result v0

    add-int/2addr v0, p3

    add-int/lit8 v1, p3, 0x1

    invoke-direct {p0, p3, v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->fixParentAnchorsFor(III)V

    move p3, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final getCapacity()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    array-length p0, p0

    div-int/lit8 p0, p0, 0x5

    return p0
.end method

.method private final getCurrentGroupSlotIndex()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSlotIndex(I)I

    move-result p0

    return p0
.end method

.method private final groupAsString(Ljava/lang/StringBuilder;I)V
    .locals 8

    invoke-direct {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    const-string v1, "Group("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    const/16 v2, 0xa

    if-ge p2, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v3, 0x64

    if-ge p2, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v3, 0x3e8

    if-ge p2, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    if-eq v0, p2, :cond_3

    const-string v3, "("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v3, 0x23

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-static {v3, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$groupSize([II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5e

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v5, v4, 0x2

    aget v3, v3, v5

    invoke-direct {p0, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parentAnchorToIndex(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": key="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", nodes="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    add-int/lit8 v6, v4, 0x1

    aget v3, v3, v6

    const v7, 0x3ffffff

    and-int/2addr v3, v7

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dataAnchor="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    add-int/lit8 v4, v4, 0x4

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", parentAnchor="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    aget v3, v3, v5

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    aget v3, v3, v6

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", node="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v5, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeIndex([II)I

    move-result v5

    invoke-direct {p0, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$summarize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v3, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotIndex([II)I

    move-result v0

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p2

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v3, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result p2

    if-le p2, v0, :cond_7

    const-string v3, ", ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v0

    :goto_0
    if-ge v3, p2, :cond_6

    if-eq v3, v0, :cond_5

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-direct {p0, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v4

    iget-object v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$summarize(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final groupIndexToAddress(I)I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    mul-int/2addr v0, p0

    add-int/2addr v0, p1

    return v0
.end method

.method private final groupSourceInformationFor(ILjava/lang/String;)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2, v3}, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;-><init>(ILjava/lang/String;I)V

    if-nez p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    :goto_0
    if-ge p1, p2, :cond_0

    invoke-virtual {v2, p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->reportGroup(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)V

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-static {v3, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$groupSize([II)I

    move-result v3

    add-int/2addr p1, v3

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v2, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    return-object v2

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private final insertGroups(I)V
    .locals 11

    if-lez p1, :cond_5

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->moveGroupGapTo(I)V

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    array-length v4, v3

    div-int/lit8 v4, v4, 0x5

    sub-int v5, v4, v2

    const/4 v6, 0x0

    if-ge v2, p1, :cond_0

    mul-int/lit8 v7, v4, 0x2

    add-int v8, v5, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v8, 0x20

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    mul-int/lit8 v8, v7, 0x5

    new-array v8, v8, [I

    sub-int/2addr v7, v5

    add-int/2addr v2, v1

    add-int v9, v1, v7

    mul-int/lit8 v10, v1, 0x5

    invoke-static {v6, v6, v10, v3, v8}, Laq5;->h(III[I[I)V

    mul-int/lit8 v9, v9, 0x5

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v4, v4, 0x5

    invoke-static {v9, v2, v4, v3, v8}, Laq5;->h(III[I[I)V

    iput-object v8, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    move v2, v7

    :cond_0
    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    if-lt v3, v1, :cond_1

    add-int/2addr v3, p1

    iput v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    :cond_1
    add-int v3, v1, p1

    iput v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    sub-int/2addr v2, p1

    iput v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    if-lez v5, :cond_2

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex(I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v6

    :goto_0
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapOwner:I

    if-ge v2, v1, :cond_3

    goto :goto_1

    :cond_3
    iget v6, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    :goto_1
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v4, v4

    invoke-direct {p0, v0, v6, v2, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_4

    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v5, v2, 0x5

    add-int/lit8 v5, v5, 0x4

    aput v0, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapOwner:I

    if-lt v0, v1, :cond_5

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapOwner:I

    :cond_5
    return-void
.end method

.method private final insertSlots(II)V
    .locals 9

    if-lez p1, :cond_3

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    invoke-direct {p0, v0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->moveSlotGapTo(II)V

    iget p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    if-ge v0, p1, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v2, v1

    sub-int v3, v2, v0

    mul-int/lit8 v4, v2, 0x2

    add-int v5, v3, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v5, 0x20

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_0

    const/4 v8, 0x0

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v4, v3

    add-int/2addr v0, p2

    add-int v3, p2, v4

    invoke-static {v1, v6, v5, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    move v0, v4

    :cond_1
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    if-lt v1, p2, :cond_2

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    :cond_2
    add-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    :cond_3
    return-void
.end method

.method private final keys()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->keys$default([IIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    iget v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    if-lt v3, v5, :cond_0

    iget v6, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    add-int/2addr v5, v6

    if-lt v3, v5, :cond_1

    :cond_0
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static synthetic markGroup$default(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->markGroup(I)V

    return-void
.end method

.method private final moveAnchors(III)V
    .locals 5

    add-int/2addr p3, p1

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-static {v1, p1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-ltz v1, :cond_0

    :goto_0
    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result v4

    if-lt v4, p1, :cond_0

    if-ge v4, p3, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_1
    if-ge p3, p1, :cond_2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result v3

    add-int/2addr v3, p2

    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    if-lt v3, v4, :cond_1

    sub-int v4, v0, v3

    neg-int v4, v4

    invoke-virtual {v1, v4}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->setLocation$runtime(I)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v3}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->setLocation$runtime(I)V

    :goto_2
    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v3

    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static synthetic moveFrom$default(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;Landroidx/compose/runtime/composer/gapbuffer/SlotTable;IZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->moveFrom(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final moveGroupGapTo(I)V
    .locals 7

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    if-eq v1, p1, :cond_7

    iget-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->updateAnchors(II)V

    :cond_0
    if-lez v0, :cond_2

    iget-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v3, p1, 0x5

    mul-int/lit8 v4, v0, 0x5

    mul-int/lit8 v5, v1, 0x5

    if-ge p1, v1, :cond_1

    add-int/2addr v4, v3

    invoke-static {v4, v3, v5, v2, v2}, Laq5;->h(III[I[I)V

    goto :goto_0

    :cond_1
    add-int v6, v5, v4

    add-int/2addr v3, v4

    invoke-static {v5, v6, v3, v2, v2}, Laq5;->h(III[I[I)V

    :cond_2
    :goto_0
    if-ge p1, v1, :cond_3

    add-int v1, p1, v0

    :cond_3
    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCapacity()I

    move-result v2

    if-ge v1, v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, "Check failed"

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_5
    :goto_1
    if-ge v1, v2, :cond_7

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v4, v1, 0x5

    add-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    invoke-direct {p0, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parentAnchorToIndex(I)I

    move-result v5

    invoke-direct {p0, v5, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parentIndexToAnchor(II)I

    move-result v5

    if-eq v5, v3, :cond_6

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    aput v5, v3, v4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_5

    add-int/2addr v1, v0

    goto :goto_1

    :cond_7
    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    return-void
.end method

.method private final moveSlotGapTo(II)V
    .locals 9

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapOwner:I

    if-eq v1, p1, :cond_1

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    if-ge p1, v1, :cond_0

    add-int v4, p1, v0

    sub-int/2addr v1, p1

    invoke-static {v3, p1, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    add-int v4, v1, v0

    add-int v5, p1, v0

    sub-int/2addr v5, v4

    invoke-static {v3, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    const/4 v1, 0x1

    add-int/2addr p2, v1

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-eq v2, p2, :cond_a

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v0

    const/4 v0, 0x0

    if-ge p2, v2, :cond_5

    invoke-direct {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    invoke-direct {p0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    iget v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    :cond_2
    :goto_1
    if-ge v4, v2, :cond_9

    iget-object v6, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v7, v4, 0x5

    add-int/lit8 v7, v7, 0x4

    aget v6, v6, v7

    if-ltz v6, :cond_3

    move v8, v1

    goto :goto_2

    :cond_3
    move v8, v0

    :goto_2
    if-nez v8, :cond_4

    const-string v8, "Unexpected anchor value, expected a positive anchor"

    invoke-static {v8}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_4
    iget-object v8, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    sub-int v6, v3, v6

    add-int/2addr v6, v1

    neg-int v6, v6

    aput v6, v8, v7

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_2

    iget v6, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    add-int/2addr v4, v6

    goto :goto_1

    :cond_5
    invoke-direct {p0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-direct {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    :cond_6
    :goto_3
    if-ge v2, v4, :cond_9

    iget-object v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v6, v2, 0x5

    add-int/lit8 v6, v6, 0x4

    aget v5, v5, v6

    if-gez v5, :cond_7

    move v7, v1

    goto :goto_4

    :cond_7
    move v7, v0

    :goto_4
    if-nez v7, :cond_8

    const-string v7, "Unexpected anchor value, expected a negative anchor"

    invoke-static {v7}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_8
    iget-object v7, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    add-int/2addr v5, v3

    add-int/2addr v5, v1

    aput v5, v7, v6

    add-int/lit8 v2, v2, 0x1

    iget v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    if-ne v2, v5, :cond_6

    iget v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    add-int/2addr v2, v5

    goto :goto_3

    :cond_9
    iput p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapOwner:I

    :cond_a
    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    return-void
.end method

.method private final nodeIndex([II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result p0

    return p0
.end method

.method private final parent([II)I
    .locals 0

    .line 20
    invoke-direct {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    add-int/lit8 p2, p2, 0x2

    .line 21
    aget p1, p1, p2

    .line 22
    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parentAnchorToIndex(I)I

    move-result p0

    return p0
.end method

.method private final parentAnchorToIndex(I)I
    .locals 1

    const/4 v0, -0x2

    if-le p1, v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    move-result p0

    add-int/2addr p0, p1

    sub-int/2addr p0, v0

    return p0
.end method

.method private final parentIndexToAnchor(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    move-result p0

    sub-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x2

    neg-int p0, p0

    return p0
.end method

.method private final rawUpdate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->skip()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final recalculateMarks()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->pendingRecalculateMarks:Landroidx/collection/MutableIntList;

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->isNotEmpty-impl(Landroidx/collection/MutableIntList;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->takeMax-impl(Landroidx/collection/MutableIntList;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->updateContainsMarkNow-qrM0pCk(ILandroidx/collection/MutableIntList;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final removeAnchors(IILjava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap<",
            "Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;",
            "Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;",
            ">;)Z"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    add-int/2addr p2, p1

    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCapacity()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-static {v0, p2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ltz v0, :cond_4

    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result v5

    if-lt v5, p1, :cond_4

    if-ge v5, p2, :cond_3

    const/high16 v1, -0x80000000

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->setLocation$runtime(I)V

    if-eqz p3, :cond_1

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    :cond_1
    if-nez v3, :cond_2

    add-int/lit8 v3, v0, 0x1

    :cond_2
    move v1, v0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    if-ge v1, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_6
    return v2
.end method

.method private final removeGroups(II)Z
    .locals 2

    const/4 v0, 0x0

    if-lez p2, :cond_3

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->moveGroupGapTo(I)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->removeAnchors(IILjava/util/HashMap;)Z

    move-result v0

    :cond_0
    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    add-int/2addr v1, p2

    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapOwner:I

    if-le v1, p1, :cond_1

    sub-int/2addr v1, p2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapOwner:I

    :cond_1
    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    if-lt p1, v1, :cond_2

    sub-int/2addr p1, p2

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    :cond_2
    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->containsGroupMark(I)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->updateContainsMark(I)V

    :cond_3
    return v0
.end method

.method private final removeSlots(III)V
    .locals 2

    if-lez p2, :cond_0

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    add-int v1, p1, p2

    invoke-direct {p0, v1, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->moveSlotGapTo(II)V

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    iget-object p3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0, p3, p1, v1}, Laq5;->t(Ljava/lang/Object;[Ljava/lang/Object;II)V

    iget p3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    if-lt p3, p1, :cond_0

    sub-int/2addr p3, p2

    iput p3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    :cond_0
    return-void
.end method

.method private final restoreCurrentGroupEnd()I
    .locals 2

    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCapacity()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    return v0
.end method

.method private final saveCurrentGroupEnd()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCapacity()I

    move-result v1

    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    sub-int/2addr v1, v2

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    sub-int/2addr v1, p0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    return-void
.end method

.method private final slotIndex([II)I
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCapacity()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    array-length p1, p1

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    sub-int/2addr p1, p0

    return p1

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$slotAnchor([II)I

    move-result p1

    iget p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v0, v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataAnchorToDataIndex(III)I

    move-result p0

    return p0
.end method

.method private final startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    iget v3, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iget-object v7, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    iget v8, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/IntStack;->push(I)V

    if-eqz v4, :cond_8

    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    iget-object v7, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {v0, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v8

    invoke-direct {v0, v7, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result v7

    invoke-direct {v0, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertGroups(I)V

    iput v7, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iput v7, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    invoke-direct {v0, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v9

    sget-object v8, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-eq v1, v10, :cond_1

    move v12, v6

    goto :goto_1

    :cond_1
    move v12, v5

    :goto_1
    if-nez p3, :cond_2

    invoke-virtual {v8}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-eq v2, v8, :cond_2

    move v13, v6

    goto :goto_2

    :cond_2
    move v13, v5

    :goto_2
    iget v8, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    iget v10, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    iget-object v11, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v11, v11

    invoke-direct {v0, v7, v10, v8, v11}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result v7

    if-ltz v7, :cond_3

    iget v8, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapOwner:I

    if-ge v8, v4, :cond_3

    iget-object v8, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v8, v8

    iget v10, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    sub-int/2addr v8, v10

    sub-int/2addr v8, v7

    add-int/2addr v8, v6

    neg-int v7, v8

    :cond_3
    move v15, v7

    iget-object v8, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    iget v14, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    move/from16 v10, p1

    move/from16 v11, p3

    invoke-static/range {v8 .. v15}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$initGroup([IIIZZZII)V

    add-int v6, p3, v12

    add-int/2addr v6, v13

    if-lez v6, :cond_7

    invoke-direct {v0, v6, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertSlots(II)V

    iget-object v6, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    iget v7, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    if-eqz p3, :cond_4

    add-int/lit8 v8, v7, 0x1

    aput-object v2, v6, v7

    move v7, v8

    :cond_4
    if-eqz v12, :cond_5

    add-int/lit8 v8, v7, 0x1

    aput-object v1, v6, v7

    move v7, v8

    :cond_5
    if-eqz v13, :cond_6

    add-int/lit8 v1, v7, 0x1

    aput-object v2, v6, v7

    move v7, v1

    :cond_6
    iput v7, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    :cond_7
    iput v5, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    add-int/lit8 v1, v4, 0x1

    iput v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    iput v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    if-ltz v3, :cond_b

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->sourceInformationOf$runtime(I)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2, v0, v4}, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->reportGroup(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)V

    goto :goto_4

    :cond_8
    iget-object v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/IntStack;->push(I)V

    invoke-direct {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->saveCurrentGroupEnd()V

    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    invoke-direct {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    sget-object v4, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v4}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    if-eqz p3, :cond_9

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->updateNode(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->updateAux(Ljava/lang/Object;)V

    :cond_a
    :goto_3
    iget-object v2, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {v0, v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotIndex([II)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iget-object v2, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    add-int/2addr v4, v6

    invoke-direct {v0, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    invoke-direct {v0, v2, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    iget-object v2, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v4, v3, 0x5

    add-int/2addr v4, v6

    aget v4, v2, v4

    const v5, 0x3ffffff

    and-int/2addr v4, v5

    iput v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    iput v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    add-int/lit8 v4, v1, 0x1

    iput v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    invoke-static {v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_b
    :goto_4
    iput v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    return-void
.end method

.method private final updateAnchors(II)V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCapacity()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    if-ge p1, p2, :cond_0

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result p1

    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->getLocation$runtime()I

    move-result v2

    if-gez v2, :cond_1

    add-int/2addr v2, v1

    if-ge v2, p2, :cond_1

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->setLocation$runtime(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, p2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result p1

    :goto_1
    iget-object p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    invoke-virtual {p2}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->getLocation$runtime()I

    move-result v0

    if-ltz v0, :cond_1

    sub-int v0, v1, v0

    neg-int v0, v0

    invoke-virtual {p2, v0}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->setLocation$runtime(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final updateContainsMark(I)V
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->pendingRecalculateMarks:Landroidx/collection/MutableIntList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->constructor-impl$default(Landroidx/collection/MutableIntList;ILjh2;)Landroidx/collection/MutableIntList;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->pendingRecalculateMarks:Landroidx/collection/MutableIntList;

    :cond_0
    invoke-static {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->add-impl(Landroidx/collection/MutableIntList;I)V

    :cond_1
    return-void
.end method

.method private final updateContainsMarkNow-qrM0pCk(ILandroidx/collection/MutableIntList;)V
    .locals 6

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->childContainsAnyMarks(I)Z

    move-result v1

    iget-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v3, v0, 0x5

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget v3, v2, v3

    const/high16 v5, 0x4000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eq v4, v1, :cond_1

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$updateContainsMark([IIZ)V

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent(I)I

    move-result p0

    if-ltz p0, :cond_1

    invoke-static {p2, p0}, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->add-impl(Landroidx/collection/MutableIntList;I)V

    :cond_1
    return-void
.end method

.method private final updateDataIndex([III)V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    iget-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v2, v2

    invoke-direct {p0, p3, v0, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result p0

    mul-int/lit8 p2, p2, 0x5

    add-int/lit8 p2, p2, 0x4

    aput p0, p1, p2

    return-void
.end method

.method private final updateNodeOfGroup(ILjava/lang/Object;)V
    .locals 4

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x5

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget v1, v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updating the node of a group at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " that was not created with as a node group"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeIndex([II)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    aput-object p2, p1, p0

    return-void
.end method


# virtual methods
.method public final advanceBy(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    const-string v2, "Cannot seek backwards"

    invoke-static {v2}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    if-gtz v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    const-string v2, "Cannot call seek() while inserting"

    invoke-static {v2}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_3
    if-nez p1, :cond_4

    return-void

    :cond_4
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    add-int/2addr v2, p1

    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    if-lt v2, p1, :cond_5

    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    if-gt v2, p1, :cond_5

    move v0, v1

    :cond_5
    if-nez v0, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot seek outside the current group ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_6
    iput v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    return-void
.end method

.method public final anchor(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$search(Ljava/util/ArrayList;II)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v2, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    if-gt p1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    move-result p0

    sub-int/2addr p0, p1

    neg-int p1, p0

    :goto_0
    invoke-direct {v2, p1}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;-><init>(I)V

    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    invoke-virtual {v0, p0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    return-object p0
.end method

.method public final anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I
    .locals 0

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->getLocation$runtime()I

    move-result p1

    if-gez p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    move-result p0

    add-int/2addr p0, p1

    return p0

    :cond_0
    return p1
.end method

.method public final appendSlot(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Can only append a slot if not current inserting"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result p1

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    add-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    invoke-direct {p0, v3, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result v3

    iput v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iput v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertSlots(II)V

    if-lt v0, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    :cond_2
    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    aput-object p2, p1, v3

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iput v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    return-void
.end method

.method public final bashCurrentGroup()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    const/4 v1, -0x3

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$updateGroupKey([III)V

    return-void
.end method

.method public final beginInsert()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->saveCurrentGroupEnd()V

    :cond_0
    return-void
.end method

.method public final clear(I)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p1

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object v0, p0, p1

    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, p1

    return-object v0
.end method

.method public final close(Z)V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->closed:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    iget p1, p1, Landroidx/compose/runtime/IntStack;->tos:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->moveGroupGapTo(I)V

    iget-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    array-length p1, p1

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->moveSlotGapTo(II)V

    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->clearSlotGap()V

    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->recalculateMarks()V

    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    iget-object v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    iget v6, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    iget-object v7, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    iget-object v8, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    iget-object v9, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    move-object v2, p0

    invoke-virtual/range {v1 .. v9}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->close$runtime(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;[II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;Landroidx/collection/MutableIntObjectMap;)V

    return-void
.end method

.method public final endGroup()I
    .locals 12

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    iget v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    invoke-direct {p0, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v6

    iget v7, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    sub-int v8, v3, v5

    iget-object v9, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v10, v6, 0x5

    add-int/2addr v10, v2

    aget v9, v9, v10

    const/high16 v11, 0x40000000    # 2.0f

    and-int/2addr v9, v11

    if-eqz v9, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move v9, v1

    :goto_1
    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->deferredSlotWrites:Landroidx/collection/MutableIntObjectMap;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/collection/MutableObjectList;

    if-eqz v3, :cond_3

    iget-object v4, v3, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v3, v3, Landroidx/collection/ObjectList;->_size:I

    move v10, v1

    :goto_2
    if-ge v10, v3, :cond_2

    aget-object v11, v4, v10

    invoke-direct {p0, v11}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->rawUpdate(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v5}, Landroidx/collection/MutableIntObjectMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/MutableObjectList;

    :cond_3
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-static {v0, v6, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$updateGroupSize([III)V

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-static {v0, v6, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$updateNodeCount([III)V

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    if-eqz v9, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v7

    :goto_3
    add-int/2addr v0, v3

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v0, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent([II)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    if-gez v0, :cond_5

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    move-result v0

    goto :goto_4

    :cond_5
    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    :goto_4
    if-gez v0, :cond_6

    goto :goto_5

    :cond_6
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result v1

    :goto_5
    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    return v7

    :cond_7
    if-ne v3, v4, :cond_8

    move v0, v2

    goto :goto_6

    :cond_8
    move v0, v1

    :goto_6
    if-nez v0, :cond_9

    const-string v0, "Expected to be at the end of a group"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-static {v0, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$groupSize([II)I

    move-result v0

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    aget v4, v3, v10

    const v10, 0x3ffffff

    and-int/2addr v4, v10

    invoke-static {v3, v6, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$updateGroupSize([III)V

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-static {v3, v6, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$updateNodeCount([III)V

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v3}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v3

    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->restoreCurrentGroupEnd()I

    iput v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    iget-object v6, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v6, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent([II)I

    move-result v5

    iget-object v6, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v6}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v6

    iput v6, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    if-ne v5, v3, :cond_b

    if-eqz v9, :cond_a

    goto :goto_7

    :cond_a
    sub-int v1, v7, v4

    :goto_7
    add-int/2addr v6, v1

    iput v6, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    return v7

    :cond_b
    sub-int/2addr v8, v0

    if-eqz v9, :cond_c

    move v0, v1

    goto :goto_8

    :cond_c
    sub-int v0, v7, v4

    :goto_8
    if-nez v8, :cond_d

    if-eqz v0, :cond_12

    :cond_d
    :goto_9
    if-eqz v5, :cond_12

    if-eq v5, v3, :cond_12

    if-nez v0, :cond_e

    if-eqz v8, :cond_12

    :cond_e
    invoke-direct {p0, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    if-eqz v8, :cond_f

    iget-object v6, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-static {v6, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$groupSize([II)I

    move-result v6

    add-int/2addr v6, v8

    iget-object v9, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-static {v9, v4, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$updateGroupSize([III)V

    :cond_f
    if-eqz v0, :cond_10

    iget-object v6, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v9, v4, 0x5

    add-int/2addr v9, v2

    aget v9, v6, v9

    and-int/2addr v9, v10

    add-int/2addr v9, v0

    invoke-static {v6, v4, v9}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$updateNodeCount([III)V

    :cond_10
    iget-object v6, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v4, v4, 0x5

    add-int/2addr v4, v2

    aget v4, v6, v4

    and-int/2addr v4, v11

    if-eqz v4, :cond_11

    move v0, v1

    :cond_11
    invoke-direct {p0, v6, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent([II)I

    move-result v5

    goto :goto_9

    :cond_12
    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    return v7
.end method

.method public final endInsert()V
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Unbalanced begin/end insert"

    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    iget v0, v0, Landroidx/compose/runtime/IntStack;->tos:I

    iget-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    iget v3, v3, Landroidx/compose/runtime/IntStack;->tos:I

    if-ne v0, v3, :cond_2

    move v1, v2

    :cond_2
    if-nez v1, :cond_3

    const-string v0, "startGroup/endGroup mismatch while inserting"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->restoreCurrentGroupEnd()I

    :cond_4
    return-void
.end method

.method public final ensureStarted(I)V
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Cannot call ensureStarted() while inserting"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    if-eq v0, p1, :cond_4

    if-lt p1, v0, :cond_2

    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    if-ge p1, v3, :cond_2

    move v1, v2

    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Started group at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " must be a subgroup of the group at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup()V

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iput v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    :cond_4
    return-void
.end method

.method public final ensureStarted(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)V
    .locals 0

    .line 72
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->toIndexFor(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->ensureStarted(I)V

    return-void
.end method

.method public final forAllData(ILbm3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbm3<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->access$groupIndexToAddress(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)I

    move-result p1

    invoke-static {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)[I

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;[II)I

    move-result p1

    invoke-static {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->access$getGroups$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)[I

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCurrentGroup()I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCurrentGroup()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSize(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {p0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->access$groupIndexToAddress(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)I

    move-result v1

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->access$dataIndex(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;[II)I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->access$dataIndexToDataAddress(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-interface {p2, v1, v2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final forAllDataInRememberOrder(ILbm3;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lbm3<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent(I)I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    move-result v4

    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSize(I)I

    move-result v5

    add-int/2addr v5, v1

    const/4 v6, 0x0

    move v7, v1

    move-object v8, v6

    move-object v9, v8

    :goto_0
    if-ge v7, v5, :cond_c

    invoke-direct {v0, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex(I)I

    move-result v10

    add-int/lit8 v11, v7, 0x1

    invoke-direct {v0, v11}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex(I)I

    move-result v12

    :goto_1
    const/4 v13, 0x0

    if-ge v10, v12, :cond_3

    invoke-direct {v0, v10}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v14

    iget-object v15, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object v14, v15, v14

    instance-of v15, v14, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz v15, :cond_2

    move-object v15, v14

    check-cast v15, Landroidx/compose/runtime/RememberObserverHolder;

    invoke-static {v15}, Landroidx/compose/runtime/GapComposerKt;->asGapRememberObserverHolder(Landroidx/compose/runtime/RememberObserverHolder;)Landroidx/compose/runtime/GapRememberObserverHolder;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/compose/runtime/GapRememberObserverHolder;->getAfterGroupIndex()I

    move-result v15

    if-ltz v15, :cond_2

    invoke-direct {v0, v7, v15}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->childGroupAtIndex(II)I

    move-result v14

    if-nez v8, :cond_0

    invoke-static {}, Landroidx/collection/IntSetKt;->mutableIntSetOf()Landroidx/collection/MutableIntSet;

    move-result-object v8

    :cond_0
    if-nez v9, :cond_1

    new-instance v9, Landroidx/collection/MutableIntList;

    const/4 v15, 0x1

    invoke-direct {v9, v13, v15, v6}, Landroidx/collection/MutableIntList;-><init>(IILjh2;)V

    :cond_1
    invoke-virtual {v8, v14}, Landroidx/collection/MutableIntSet;->add(I)Z

    invoke-virtual {v9, v14}, Landroidx/collection/MutableIntList;->add(I)Z

    invoke-virtual {v9, v10}, Landroidx/collection/MutableIntList;->add(I)Z

    goto :goto_2

    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v13, v14}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    if-ge v11, v4, :cond_4

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent(I)I

    move-result v10

    goto :goto_3

    :cond_4
    const/4 v10, -0x1

    :goto_3
    if-eq v10, v7, :cond_a

    :goto_4
    if-eqz v9, :cond_8

    if-eqz v8, :cond_8

    invoke-virtual {v8, v7}, Landroidx/collection/MutableIntSet;->remove(I)Z

    move-result v12

    if-eqz v12, :cond_8

    iget v12, v9, Landroidx/collection/IntList;->_size:I

    div-int/lit8 v14, v12, 0x2

    move v6, v13

    move v15, v6

    :goto_5
    if-ge v15, v14, :cond_7

    mul-int/lit8 v13, v15, 0x2

    move/from16 v16, v4

    invoke-virtual {v9, v13}, Landroidx/collection/IntList;->get(I)I

    move-result v4

    if-ne v4, v7, :cond_5

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v9, v13}, Landroidx/collection/IntList;->get(I)I

    move-result v4

    iget-object v13, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    invoke-direct {v0, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v17

    aget-object v13, v13, v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v13}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_5
    if-eq v13, v6, :cond_6

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v9, v6, v4}, Landroidx/collection/MutableIntList;->set(II)I

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v9, v13}, Landroidx/collection/IntList;->get(I)I

    move-result v4

    invoke-virtual {v9, v2, v4}, Landroidx/collection/MutableIntList;->set(II)I

    goto :goto_6

    :cond_6
    add-int/lit8 v6, v6, 0x2

    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p2

    move/from16 v4, v16

    const/4 v13, 0x0

    goto :goto_5

    :cond_7
    move/from16 v16, v4

    if-eq v6, v12, :cond_9

    invoke-virtual {v9, v6, v12}, Landroidx/collection/MutableIntList;->removeRange(II)V

    goto :goto_7

    :cond_8
    move/from16 v16, v4

    :cond_9
    :goto_7
    if-eq v7, v1, :cond_b

    if-eq v3, v10, :cond_b

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent(I)I

    move-result v2

    move v7, v3

    move/from16 v4, v16

    const/4 v6, 0x0

    const/4 v13, 0x0

    move v3, v2

    move-object/from16 v2, p2

    goto :goto_4

    :cond_a
    move/from16 v16, v4

    :cond_b
    move-object/from16 v2, p2

    move v3, v10

    move v7, v11

    move/from16 v4, v16

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public final forEachTailSlot(IILbm3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lbm3<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsStartIndex$runtime(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsEndIndex$runtime(I)I

    move-result p1

    sub-int p2, p1, p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_0
    if-ge p2, p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->access$getSlots$p(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->access$dataIndexToDataAddress(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {p3, v0, v1}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getClosed()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->closed:Z

    return p0
.end method

.method public final getCollectingCalledInformation()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getCollectingSourceInformation()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getCurrentGroup()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    return p0
.end method

.method public final getCurrentGroupEnd()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    return p0
.end method

.method public final getParent()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    return p0
.end method

.method public final getSize$runtime()I
    .locals 1

    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCapacity()I

    move-result v0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getSlotsSize()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v0, v0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getTable$runtime()Landroidx/compose/runtime/composer/gapbuffer/SlotTable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    return-object p0
.end method

.method public final groupAux(I)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aget v1, v0, v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->auxIndex([II)I

    move-result p0

    aget-object p0, v1, p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final groupKey(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    aget p0, v0, p0

    return p0
.end method

.method public final groupObjectKey(I)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aget v1, v0, v1

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    invoke-static {v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$objectKeyIndex([II)I

    move-result p1

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final groupSize(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$groupSize([II)I

    move-result p0

    return p0
.end method

.method public final groupSlotIndex(I)I
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsStartIndex$runtime(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->deferredSlotWrites:Landroidx/collection/MutableIntObjectMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/collection/MutableObjectList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/collection/ObjectList;->getSize()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final groupSlots()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    invoke-direct {p0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSize(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-direct {p0, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result v1

    new-instance v2, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$groupSlots$1;

    invoke-direct {v2, v0, v1, p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$groupSlots$1;-><init>(IILandroidx/compose/runtime/composer/gapbuffer/SlotWriter;)V

    return-object v2
.end method

.method public final hasObjectKey(I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 p1, p1, 0x5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aget p0, p0, p1

    const/high16 p1, 0x20000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final inGroup(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result p1

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-static {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$groupSize([II)I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {p2}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->getLocation$runtime()I

    move-result p2

    const/4 v0, 0x0

    if-gt p1, p2, :cond_0

    if-ge p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final indexInCurrentGroup(I)Z
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    invoke-virtual {p0, p1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->indexInGroup(II)Z

    move-result p0

    return p0
.end method

.method public final indexInGroup(II)Z
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/IntStack;->peekOr(I)I

    move-result v0

    if-le p2, v0, :cond_1

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSize(I)I

    move-result p0

    :goto_0
    add-int/2addr p0, p2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/IntStack;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSize(I)I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCapacity()I

    move-result v2

    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    sub-int/2addr v2, v3

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/IntStack;->peek(I)I

    move-result p0

    sub-int p0, v2, p0

    :goto_1
    if-le p1, p2, :cond_3

    if-ge p1, p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final indexInParent(I)Z
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    if-le p1, v0, :cond_0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    if-lt p1, p0, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final insertAux(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Cannot insert auxiliary data when not inserting"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v5, v3, 0x5

    add-int/2addr v5, v2

    aget v4, v4, v5

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v4, :cond_3

    const-string v4, "Group already has auxiliary data"

    invoke-static {v4}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v2, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertSlots(II)V

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v0, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->auxIndex([II)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v4

    iget v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    if-le v5, v0, :cond_7

    sub-int/2addr v5, v0

    const/4 v0, 0x3

    if-ge v5, v0, :cond_4

    move v1, v2

    :cond_4
    if-nez v1, :cond_5

    const-string v0, "Moving more than two slot not supported"

    invoke-static {v0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_5
    if-le v5, v2, :cond_6

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    add-int/lit8 v1, v4, 0x2

    add-int/lit8 v5, v4, 0x1

    aget-object v5, v0, v5

    aput-object v5, v0, v1

    :cond_6
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    add-int/lit8 v1, v4, 0x1

    aget-object v5, v0, v4

    aput-object v5, v0, v1

    :cond_7
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-static {v0, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$addAux([II)V

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    aput-object p1, v0, v4

    iget p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    return-void
.end method

.method public final isGroupEnd()Z
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isNode()Z
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    const/4 v0, 0x1

    add-int/2addr p0, v0

    aget p0, v1, p0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr p0, v1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isNode(I)Z
    .locals 1

    .line 26
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    const/4 p1, 0x1

    add-int/2addr p0, p1

    .line 27
    aget p0, v0, p0

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isValid(I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x5

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    array-length p0, p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final markGroup(I)V
    .locals 6

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v2, v0, 0x5

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget v4, v1, v2

    const/high16 v5, 0x8000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-static {v1, v0, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$updateMark([IIZ)V

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    aget v0, v0, v2

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->updateContainsMark(I)V

    return-void
.end method

.method public final moveFrom(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;IZ)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/composer/gapbuffer/SlotTable;",
            "IZ)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Check failed"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    if-nez p2, :cond_2

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getGroupsSize()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getGroups()[I

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$groupSize([II)I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getGroupsSize()I

    move-result v3

    if-ne v0, v3, :cond_2

    iget-object v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    iget-object v7, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v9, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    iget-object v10, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    iget-object v11, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getGroups()[I

    move-result-object p2

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getGroupsSize()I

    move-result p3

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getSlots()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getSlotsSize()I

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getSourceInformationMap$runtime()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getCalledByMap$runtime()Landroidx/collection/MutableIntObjectMap;

    move-result-object v3

    iput-object p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getAnchors$runtime()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    iput p3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    array-length p2, p2

    div-int/lit8 p2, p2, 0x5

    sub-int/2addr p2, p3

    iput p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    array-length p2, v0

    sub-int/2addr p2, v1

    iput p2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    iput p3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapOwner:I

    iput-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    iput-object v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->setTo$runtime([II[Ljava/lang/Object;ILjava/util/ArrayList;Ljava/util/HashMap;Landroidx/collection/MutableIntObjectMap;)V

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    return-object p0

    :cond_2
    move-object v4, p1

    invoke-virtual {v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openWriter()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    move-result-object v4

    :try_start_0
    sget-object v3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->Companion:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v6, p0

    move v5, p2

    move v9, p3

    invoke-static/range {v3 .. v9}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;->access$moveGroup(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;ILandroidx/compose/runtime/composer/gapbuffer/SlotWriter;ZZZ)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->close(Z)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->close(Z)V

    throw p0
.end method

.method public final moveGroup(I)V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Cannot move a group while inserting"

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :goto_0
    const-string v1, "Parameter offset is out of bounds"

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :goto_1
    if-nez p1, :cond_2

    goto/16 :goto_5

    :cond_2
    iget v2, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    iget v3, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    iget v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    move/from16 v5, p1

    move v6, v2

    :goto_2
    iget-object v7, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    if-lez v5, :cond_4

    invoke-direct {v0, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v8

    invoke-static {v7, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$groupSize([II)I

    move-result v7

    add-int/2addr v6, v7

    if-gt v6, v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_4
    invoke-direct {v0, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-static {v7, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$groupSize([II)I

    move-result v1

    iget-object v4, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    iget v5, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    invoke-direct {v0, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v5

    invoke-direct {v0, v4, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result v4

    iget-object v5, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {v0, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v7

    invoke-direct {v0, v5, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result v5

    iget-object v7, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    add-int/2addr v6, v1

    invoke-direct {v0, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v8

    invoke-direct {v0, v7, v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result v7

    sub-int v8, v7, v5

    iget v9, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-direct {v0, v8, v9}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertSlots(II)V

    invoke-direct {v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertGroups(I)V

    iget-object v9, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {v0, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x5

    invoke-direct {v0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x5

    mul-int/lit8 v13, v1, 0x5

    add-int/2addr v13, v11

    invoke-static {v12, v11, v13, v9, v9}, Laq5;->h(III[I[I)V

    if-lez v8, :cond_5

    iget-object v11, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    add-int v12, v5, v8

    invoke-direct {v0, v12}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v12

    add-int/2addr v7, v8

    invoke-direct {v0, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v7

    sub-int/2addr v7, v12

    invoke-static {v11, v12, v11, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    add-int/2addr v5, v8

    sub-int v4, v5, v4

    iget v7, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    iget v11, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    iget-object v12, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v12, v12

    iget v13, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapOwner:I

    add-int v14, v2, v1

    move v15, v2

    :goto_4
    if-ge v15, v14, :cond_7

    invoke-direct {v0, v15}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v10

    invoke-direct {v0, v9, v10}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result v16

    move/from16 v17, v4

    sub-int v4, v16, v17

    move/from16 v16, v7

    if-ge v13, v10, :cond_6

    const/4 v7, 0x0

    :cond_6
    invoke-direct {v0, v4, v7, v11, v12}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result v4

    invoke-direct {v0, v9, v10, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->updateDataIndex([III)V

    add-int/lit8 v15, v15, 0x1

    move/from16 v7, v16

    move/from16 v4, v17

    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    invoke-direct {v0, v6, v2, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->moveAnchors(III)V

    invoke-direct {v0, v6, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->removeGroups(II)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Unexpectedly removed anchors"

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_8
    iget v1, v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->fixParentAnchorsFor(III)V

    if-lez v8, :cond_9

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v0, v5, v8, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->removeSlots(III)V

    :cond_9
    :goto_5
    return-void
.end method

.method public final moveIntoGroupFrom(ILandroidx/compose/runtime/composer/gapbuffer/SlotTable;I)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/runtime/composer/gapbuffer/SlotTable;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSize(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Check failed"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->advanceBy(I)V

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup()V

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->beginInsert()V

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->openWriter()Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;

    move-result-object v6

    :try_start_0
    sget-object v5, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->Companion:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;

    const/16 v12, 0x20

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v8, p0

    move/from16 v7, p3

    invoke-static/range {v5 .. v13}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;->moveGroup$default(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;ILandroidx/compose/runtime/composer/gapbuffer/SlotWriter;ZZZILjava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->close(Z)V

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->endInsert()V

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->endGroup()I

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    iput v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iput v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    return-object p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->close(Z)V

    throw p0
.end method

.method public final moveTo(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;ILandroidx/compose/runtime/composer/gapbuffer/SlotWriter;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;",
            "I",
            "Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    iget v0, v3, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lez v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v9

    :goto_0
    const-string v11, "Check failed"

    if-nez v0, :cond_1

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    iget v0, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    if-nez v0, :cond_2

    move v0, v10

    goto :goto_1

    :cond_2
    move v0, v9

    :goto_1
    if-nez v0, :cond_3

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->getValid()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_4
    invoke-virtual/range {p0 .. p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result v0

    add-int v2, v0, p2

    iget v12, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    if-gt v12, v2, :cond_5

    iget v0, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    if-ge v2, v0, :cond_5

    move v0, v10

    goto :goto_2

    :cond_5
    move v0, v9

    :goto_2
    if-nez v0, :cond_6

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent(I)I

    move-result v13

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSize(I)I

    move-result v14

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->isNode(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move v15, v10

    goto :goto_3

    :cond_7
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount(I)I

    move-result v0

    move v15, v0

    :goto_3
    sget-object v0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->Companion:Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;->moveGroup$default(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter$Companion;Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;ILandroidx/compose/runtime/composer/gapbuffer/SlotWriter;ZZZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v13}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->updateContainsMark(I)V

    if-lez v15, :cond_8

    move v2, v10

    goto :goto_4

    :cond_8
    move v2, v9

    :goto_4
    if-lt v13, v12, :cond_b

    invoke-direct {v1, v13}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    iget-object v4, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-static {v4, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$groupSize([II)I

    move-result v5

    sub-int/2addr v5, v14

    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$updateGroupSize([III)V

    if-eqz v2, :cond_a

    iget-object v4, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v5, v3, 0x5

    add-int/2addr v5, v10

    aget v5, v4, v5

    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v6, v5

    if-eqz v6, :cond_9

    move v2, v9

    goto :goto_5

    :cond_9
    const v6, 0x3ffffff

    and-int/2addr v5, v6

    sub-int/2addr v5, v15

    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$updateNodeCount([III)V

    :cond_a
    :goto_5
    invoke-virtual {v1, v13}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent(I)I

    move-result v13

    goto :goto_4

    :cond_b
    if-eqz v2, :cond_e

    iget v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    if-lt v2, v15, :cond_c

    move v9, v10

    :cond_c
    if-nez v9, :cond_d

    invoke-static {v11}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_d
    iget v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    sub-int/2addr v2, v15

    iput v2, v1, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    :cond_e
    return-object v0
.end method

.method public final node(I)Ljava/lang/Object;
    .locals 3

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x1

    aget v1, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeIndex([II)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    aget-object p0, v1, p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final node(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->toIndexFor(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->node(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final nodeCount(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    add-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    const p1, 0x3ffffff

    and-int/2addr p0, p1

    return p0
.end method

.method public final parent(I)I
    .locals 1

    .line 19
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent([II)I

    move-result p0

    return p0
.end method

.method public final parent(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I
    .locals 1

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->getValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent([II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final recordGroupSourceInformation(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSourceInformationFor(ILjava/lang/String;)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    :cond_0
    return-void
.end method

.method public final recordGrouplessCallSourceInformationEnd()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSourceInformationFor(ILjava/lang/String;)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCurrentGroupSlotIndex()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->endGrouplessCall(I)V

    :cond_0
    return-void
.end method

.method public final recordGrouplessCallSourceInformationStart(ILjava/lang/String;)V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupKey(I)I

    move-result v1

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$add(Landroidx/collection/MutableIntObjectMap;II)V

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSourceInformationFor(ILjava/lang/String;)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCurrentGroupSlotIndex()I

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->startGrouplessCall(ILjava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public final removeGroup()Z
    .locals 7

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Cannot remove group while inserting"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iget-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->skipGroup()I

    move-result v3

    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->sourceInformationOf$runtime(I)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->tryAnchor$runtime(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->removeAnchor(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Z

    :cond_2
    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->pendingRecalculateMarks:Landroidx/collection/MutableIntList;

    if-eqz v4, :cond_3

    :goto_1
    invoke-static {v4}, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->isNotEmpty-impl(Landroidx/collection/MutableIntList;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->peek-impl(Landroidx/collection/MutableIntList;)I

    move-result v5

    if-lt v5, v0, :cond_3

    invoke-static {v4}, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->takeMax-impl(Landroidx/collection/MutableIntList;)I

    goto :goto_1

    :cond_3
    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    sub-int/2addr v4, v0

    invoke-direct {p0, v0, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->removeGroups(II)Z

    move-result v4

    iget v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    sub-int/2addr v5, v2

    add-int/lit8 v6, v0, -0x1

    invoke-direct {p0, v2, v5, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->removeSlots(III)V

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    return v4
.end method

.method public final reset()V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Cannot reset when inserting"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->recalculateMarks()V

    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCapacity()I

    move-result v0

    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->nodeCount:I

    return-void
.end method

.method public final seek(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)V
    .locals 1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->toIndexFor(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)I

    move-result p1

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->advanceBy(I)V

    return-void
.end method

.method public final set(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotIndexOfGroupSlotIndex(II)I

    move-result p1

    .line 31
    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p1

    .line 32
    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object p2, p0, p1

    .line 33
    aput-object p3, p0, p1

    return-object p2
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCurrentGroup()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlotEnd:I

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Writing to an invalid slot"

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    aput-object p1, v0, p0

    return-void
.end method

.method public final skip()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertSlots(II)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    invoke-direct {p0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final skipGroup()I
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    iget-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-static {v2, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$groupSize([II)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result v1

    iput v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v0, v0, 0x5

    const/4 v1, 0x1

    add-int/2addr v0, v1

    aget p0, p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0x3ffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public final skipToGroupEnd()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    return-void
.end method

.method public final slot(II)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotIndex([II)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-direct {p0, v1, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result p1

    add-int/2addr p2, v0

    if-gt v0, p2, :cond_0

    if-ge p2, p1, :cond_0

    invoke-direct {p0, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p1

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final slot(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;I)Ljava/lang/Object;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchorIndex(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slot(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final slotIndexOfGroupSlotIndex(II)I
    .locals 3

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotIndex([II)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result p0

    add-int v1, v0, p2

    if-lt v1, v0, :cond_0

    if-ge v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Write to an invalid slot index "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for group "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public final slotsEndAllIndex$runtime(I)I
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSize(I)I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result p0

    return p0
.end method

.method public final slotsEndIndex$runtime(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result p0

    return p0
.end method

.method public final slotsStartIndex$runtime(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotIndex([II)I

    move-result p0

    return p0
.end method

.method public final sourceInformationOf$runtime(I)Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->tryAnchor$runtime(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    return-object p0

    :cond_0
    return-object v1
.end method

.method public final startData(ILjava/lang/Object;)V
    .locals 2

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startData(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startGroup()V
    .locals 3

    .line 251
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Key must be supplied when inserting"

    .line 252
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 253
    :cond_1
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v2, v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startGroup(I)V
    .locals 3

    .line 249
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v1, v2, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startGroup(ILjava/lang/Object;)V
    .locals 2

    .line 250
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startNode(ILjava/lang/Object;)V
    .locals 2

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startNode(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final toDebugString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  parent:    "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  current:   "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  group gap: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    iget v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "  slots gap: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    iget v6, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    add-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  gap owner: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapOwner:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-direct {p0, v0, v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupAsString(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SlotWriter(current = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroupEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " gap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final traverseGroupAndChildren(ILnl3;Lnl3;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;",
            "Lnl3<",
            "-",
            "Ljava/lang/Integer;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    move-result v1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupSize(I)I

    move-result v2

    add-int/2addr v2, p1

    move v3, p1

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    if-ge v4, v1, :cond_0

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent(I)I

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v5, -0x1

    :goto_1
    if-eq v5, v3, :cond_1

    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p3, v6}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v3, p1, :cond_1

    if-eq v0, v5, :cond_1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent(I)I

    move-result v3

    move v7, v3

    move v3, v0

    move v0, v7

    goto :goto_2

    :cond_1
    move v3, v4

    move v0, v5

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final trimTailSlots(I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Check failed"

    if-nez v2, :cond_1

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotIndex([II)I

    move-result v4

    iget-object v5, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    add-int/lit8 v6, v2, 0x1

    invoke-direct {p0, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v6

    invoke-direct {p0, v5, v6}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result v5

    sub-int/2addr v5, p1

    if-lt v5, v4, :cond_2

    move v0, v1

    :cond_2
    if-nez v0, :cond_3

    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v5, p1, v2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->removeSlots(III)V

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    if-lt v0, v4, :cond_4

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    :cond_4
    return-void
.end method

.method public final tryAnchor$runtime(I)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    move-result p0

    invoke-static {v0, p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->access$find(Ljava/util/ArrayList;II)Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final update(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->insertCount:I

    if-lez v0, :cond_2

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentSlot:I

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapStart:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->deferredSlotWrites:Landroidx/collection/MutableIntObjectMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v0, v3, v2, v1}, Landroidx/collection/MutableIntObjectMap;-><init>(IILjh2;)V

    :cond_0
    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->deferredSlotWrites:Landroidx/collection/MutableIntObjectMap;

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    invoke-virtual {v0, p0}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance v4, Landroidx/collection/MutableObjectList;

    invoke-direct {v4, v3, v2, v1}, Landroidx/collection/MutableObjectList;-><init>(IILjh2;)V

    invoke-virtual {v0, p0, v4}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    :cond_1
    check-cast v4, Landroidx/collection/MutableObjectList;

    invoke-virtual {v4, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-direct {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->rawUpdate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final updateAux(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v2, v0, 0x5

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aget v1, v1, v2

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    const-string v1, "Updating the data of a group that was not created with a data slot"

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    invoke-direct {p0, v2, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->auxIndex([II)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    aput-object p1, v1, p0

    return-void
.end method

.method public final updateNode(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;->toIndexFor(Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->updateNodeOfGroup(ILjava/lang/Object;)V

    return-void
.end method

.method public final updateNode(Ljava/lang/Object;)V
    .locals 1

    .line 8
    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->currentGroup:I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->updateNodeOfGroup(ILjava/lang/Object;)V

    return-void
.end method

.method public final updateParentNode(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parent:I

    invoke-direct {p0, v0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->updateNodeOfGroup(ILjava/lang/Object;)V

    return-void
.end method

.method public final updateToTableMaps()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getSourceInformationMap$runtime()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->table:Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getCalledByMap$runtime()Landroidx/collection/MutableIntObjectMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    return-void
.end method

.method public final verifyDataAnchors$runtime()V
    .locals 13

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapOwner:I

    iget-object v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->slotsGapLen:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getSize$runtime()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_7

    invoke-direct {p0, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupIndexToAddress(I)I

    move-result v7

    iget-object v8, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v9, v7, 0x5

    add-int/lit8 v9, v9, 0x4

    aget v9, v8, v9

    invoke-direct {p0, v8, v7}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->dataIndex([II)I

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v5, :cond_0

    move v10, v8

    goto :goto_1

    :cond_0
    move v10, v3

    :goto_1
    if-nez v10, :cond_1

    const-string v10, ", previous = "

    const-string v11, ", current = "

    const-string v12, "Data index out of order at "

    invoke-static {v4, v5, v12, v10, v11}, Lbg;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    if-gt v7, v1, :cond_2

    move v5, v8

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Data index, "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", out of bound at "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_3
    if-gez v9, :cond_6

    if-nez v6, :cond_6

    if-ne v0, v4, :cond_4

    move v5, v8

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Expected the slot gap owner to be "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " found gap at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_5
    move v6, v8

    :cond_6
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final verifyParentAnchors$runtime()V
    .locals 10

    iget v0, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapStart:I

    iget v1, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groupGapLen:I

    invoke-direct {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->getCapacity()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "Expected a start relative anchor at "

    const/4 v6, -0x2

    const/4 v7, 0x1

    if-ge v4, v0, :cond_2

    iget-object v8, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v9, v4, 0x5

    add-int/lit8 v9, v9, 0x2

    aget v8, v8, v9

    if-le v8, v6, :cond_0

    goto :goto_1

    :cond_0
    move v7, v3

    :goto_1
    if-nez v7, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v1, v0

    :goto_2
    if-ge v1, v2, :cond_7

    iget-object v4, p0, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->groups:[I

    mul-int/lit8 v8, v1, 0x5

    add-int/lit8 v8, v8, 0x2

    aget v4, v4, v8

    invoke-direct {p0, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotWriter;->parentAnchorToIndex(I)I

    move-result v8

    if-ge v8, v0, :cond_4

    if-le v4, v6, :cond_3

    move v4, v7

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    if-gt v4, v6, :cond_5

    move v4, v7

    goto :goto_4

    :cond_5
    move v4, v3

    :goto_4
    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Expected an end relative anchor at "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method
