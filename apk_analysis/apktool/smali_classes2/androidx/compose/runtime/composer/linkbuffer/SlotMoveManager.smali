.class public final Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private destination:[Ljava/lang/Object;

.field private highest:I

.field private pendingMoveEnd:I

.field private pendingMoveOffset:I

.field private pendingMoveStart:I

.field private final source:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->source:[Ljava/lang/Object;

    iput-object p2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->destination:[Ljava/lang/Object;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveOffset:I

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveStart:I

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveEnd:I

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->highest:I

    return-void
.end method

.method private final flush()V
    .locals 5

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveOffset:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->source:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->destination:[Ljava/lang/Object;

    iget v3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveStart:I

    iget v4, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveEnd:I

    invoke-static {v1, v0, v2, v3, v4}, Laq5;->m([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->destination:[Ljava/lang/Object;

    if-ne v1, v0, :cond_0

    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$getUnallocated$p()Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveStart:I

    iget v3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveEnd:I

    invoke-static {v1, v2, v3, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveOffset:I

    iget v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveEnd:I

    iget v2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveStart:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    const/4 v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveOffset:I

    iput v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveEnd:I

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->highest:I

    if-le v1, v0, :cond_1

    iput v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->highest:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final done()[Ljava/lang/Object;
    .locals 4

    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->flush()V

    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->highest:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->destination:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    array-length v2, v1

    add-int/lit8 v3, v0, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$getUnallocated$p()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$getUnallocated$p()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1, v0, v2}, Laq5;->t(Ljava/lang/Object;[Ljava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->destination:[Ljava/lang/Object;

    return-object p0
.end method

.method public final getDestination()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->destination:[Ljava/lang/Object;

    return-object p0
.end method

.method public final getSource()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->source:[Ljava/lang/Object;

    return-object p0
.end method

.method public final move(III)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->source:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->destination:[Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    sub-int v0, p3, p2

    add-int/2addr v0, p1

    add-int/2addr v0, p1

    array-length v2, v1

    if-lt v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, p1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, v1, v2

    invoke-static {}, Landroidx/compose/runtime/composer/linkbuffer/SlotTableAddresSpaceKt;->access$getUnallocated$p()Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :goto_1
    iget-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->source:[Ljava/lang/Object;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->destination:[Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget v0, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveEnd:I

    if-ne v0, p2, :cond_4

    iput p3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveEnd:I

    return-void

    :cond_4
    invoke-direct {p0}, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->flush()V

    iput p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveOffset:I

    iput p2, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveStart:I

    iput p3, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->pendingMoveEnd:I

    return-void
.end method

.method public final setDestination([Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/composer/linkbuffer/SlotMoveManager;->destination:[Ljava/lang/Object;

    return-void
.end method
