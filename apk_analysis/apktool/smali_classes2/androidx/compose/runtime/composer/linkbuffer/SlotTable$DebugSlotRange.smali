.class public final Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugSlotRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/composer/linkbuffer/SlotTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DebugSlotRange"
.end annotation


# instance fields
.field private final range:I

.field final synthetic this$0:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/composer/linkbuffer/SlotTable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugSlotRange;->this$0:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugSlotRange;->range:I

    return-void
.end method


# virtual methods
.method public final getAddress()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugSlotRange;->range:I

    shr-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public final getEnd()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugSlotRange;->getAddress()I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugSlotRange;->getSize()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final getRange()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugSlotRange;->range:I

    return p0
.end method

.method public final getSize()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugSlotRange;->this$0:Landroidx/compose/runtime/composer/linkbuffer/SlotTable;

    invoke-virtual {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTable;->getAddressSpace()Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;

    move-result-object v0

    iget p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotTable$DebugSlotRange;->range:I

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    and-int/lit8 v1, p0, 0xf

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    invoke-static {v0}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;->access$getLargeSizes(Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddressSpace;)Landroidx/collection/MutableIntIntMap;

    move-result-object v0

    shr-int/lit8 p0, p0, 0x4

    invoke-virtual {v0, p0}, Landroidx/collection/IntIntMap;->get(I)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method
