.class public final Landroidx/compose/runtime/GapCompositionDataImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/tooling/CompositionData;
.implements Landroidx/compose/runtime/tooling/CompositionInstance;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final composition:Landroidx/compose/runtime/Composition;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/Composition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/GapCompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    return-void
.end method

.method private final getContext(Landroidx/compose/runtime/Composition;)Landroidx/compose/runtime/CompositionContext;
    .locals 1

    instance-of p0, p1, Landroidx/compose/runtime/CompositionImpl;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/compose/runtime/CompositionImpl;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionImpl;->getParent()Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private final getParent(Landroidx/compose/runtime/Composition;)Landroidx/compose/runtime/Composition;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroidx/compose/runtime/GapCompositionDataImpl;->getContext(Landroidx/compose/runtime/Composition;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionContext;->getComposition$runtime()Landroidx/compose/runtime/Composition;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getSlotTable(Landroidx/compose/runtime/Composition;)Landroidx/compose/runtime/SlotStorage;
    .locals 1

    instance-of p0, p1, Landroidx/compose/runtime/CompositionImpl;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/compose/runtime/CompositionImpl;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/CompositionImpl;->getSlotStorage$runtime()Landroidx/compose/runtime/SlotStorage;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private final getSlotTable()Landroidx/compose/runtime/composer/gapbuffer/SlotTable;
    .locals 0

    .line 17
    iget-object p0, p0, Landroidx/compose/runtime/GapCompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/compose/runtime/CompositionImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/CompositionImpl;->getSlotStorage$runtime()Landroidx/compose/runtime/SlotStorage;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->asGapBufferSlotTable(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/runtime/GapCompositionDataImpl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/GapCompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    check-cast p1, Landroidx/compose/runtime/GapCompositionDataImpl;

    iget-object p1, p1, Landroidx/compose/runtime/GapCompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/GapCompositionDataImpl;->getSlotTable()Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->find(Ljava/lang/Object;)Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object p0

    return-object p0
.end method

.method public findContextGroup()Landroidx/compose/runtime/tooling/CompositionGroup;
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/GapCompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/GapCompositionDataImpl;->getParent(Landroidx/compose/runtime/Composition;)Landroidx/compose/runtime/Composition;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Landroidx/compose/runtime/GapCompositionDataImpl;->getSlotTable(Landroidx/compose/runtime/Composition;)Landroidx/compose/runtime/SlotStorage;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->asGapBufferSlotTable(Landroidx/compose/runtime/SlotStorage;)Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/GapCompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    invoke-direct {p0, v2}, Landroidx/compose/runtime/GapCompositionDataImpl;->getContext(Landroidx/compose/runtime/Composition;)Landroidx/compose/runtime/CompositionContext;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-static {v0, p0}, Landroidx/compose/runtime/tooling/ComposeStackTraceBuilderKt;->findSubcompositionContextGroup(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;Landroidx/compose/runtime/CompositionContext;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTableKt;->compositionGroupOf(Landroidx/compose/runtime/composer/gapbuffer/SlotTable;I)Landroidx/compose/runtime/tooling/CompositionGroup;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final getComposition()Landroidx/compose/runtime/Composition;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapCompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    return-object p0
.end method

.method public getCompositionGroups()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroidx/compose/runtime/tooling/CompositionGroup;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/compose/runtime/GapCompositionDataImpl;->getSlotTable()Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->getCompositionGroups()Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public getData()Landroidx/compose/runtime/tooling/CompositionData;
    .locals 0

    return-object p0
.end method

.method public getParent()Landroidx/compose/runtime/tooling/CompositionInstance;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/GapCompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    invoke-direct {p0, v0}, Landroidx/compose/runtime/GapCompositionDataImpl;->getParent(Landroidx/compose/runtime/Composition;)Landroidx/compose/runtime/Composition;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Landroidx/compose/runtime/GapCompositionDataImpl;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/GapCompositionDataImpl;-><init>(Landroidx/compose/runtime/Composition;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/GapCompositionDataImpl;->composition:Landroidx/compose/runtime/Composition;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-direct {p0}, Landroidx/compose/runtime/GapCompositionDataImpl;->getSlotTable()Landroidx/compose/runtime/composer/gapbuffer/SlotTable;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/runtime/composer/gapbuffer/SlotTable;->isEmpty()Z

    move-result p0

    return p0
.end method
