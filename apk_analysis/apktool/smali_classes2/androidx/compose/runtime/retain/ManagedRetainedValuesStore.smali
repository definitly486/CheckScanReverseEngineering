.class public final Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/retain/RetainedValuesStore;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private isContentComposed:Z

.field private isDisposed:Z

.field private isEnabled:Z

.field private final keptExitedValues:Landroidx/collection/MutableScatterMap;
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
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isEnabled:Z

    const/4 v1, 0x0

    invoke-static {v1, v0, v1}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->constructor-impl$default(Landroidx/collection/MutableScatterMap;ILjh2;)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->keptExitedValues:Landroidx/collection/MutableScatterMap;

    return-void
.end method

.method private final purgeUnusedExitedValues()V
    .locals 15

    iget-object v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->keptExitedValues:Landroidx/collection/MutableScatterMap;

    iget-object v1, v0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/ScatterMap;->metadata:[J

    array-length v2, v0

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_5

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    aget-wide v5, v0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    sub-int v7, v4, v2

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_3

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_2

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v1, v10

    instance-of v11, v10, Landroidx/collection/MutableObjectList;

    if-eqz v11, :cond_1

    check-cast v10, Landroidx/collection/MutableObjectList;

    iget-object v11, v10, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v10, v10, Landroidx/collection/ObjectList;->_size:I

    move v12, v3

    :goto_2
    if-ge v12, v10, :cond_2

    aget-object v13, v11, v12

    instance-of v14, v13, Landroidx/compose/runtime/retain/RetainObserver;

    if-eqz v14, :cond_0

    check-cast v13, Landroidx/compose/runtime/retain/RetainObserver;

    invoke-interface {v13}, Landroidx/compose/runtime/retain/RetainObserver;->onRetired()V

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    instance-of v11, v10, Landroidx/compose/runtime/retain/RetainObserver;

    if-eqz v11, :cond_2

    check-cast v10, Landroidx/compose/runtime/retain/RetainObserver;

    invoke-interface {v10}, Landroidx/compose/runtime/retain/RetainObserver;->onRetired()V

    :cond_2
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    if-ne v7, v8, :cond_5

    :cond_4
    if-eq v4, v2, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-object p0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->keptExitedValues:Landroidx/collection/MutableScatterMap;

    invoke-static {p0}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->clear-impl(Landroidx/collection/MutableScatterMap;)V

    return-void
.end method


# virtual methods
.method public consumeExitedValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->keptExitedValues:Landroidx/collection/MutableScatterMap;

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->removeLast-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final disableRetainingExitedValues()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isEnabled:Z

    invoke-direct {p0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->purgeUnusedExitedValues()V

    return-void
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isDisposed:Z

    invoke-virtual {p0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->disableRetainingExitedValues()V

    return-void
.end method

.method public final enableRetainingExitedValues()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isDisposed:Z

    if-eqz v0, :cond_0

    const-string v0, "Cannot call enableRetainingExitedValues on a disposed store"

    invoke-static {v0}, Landroidx/compose/runtime/retain/impl/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isEnabled:Z

    return-void
.end method

.method public final isRetainingExitedValues()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isContentComposed:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onContentEnteredComposition()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isDisposed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isContentComposed:Z

    if-eqz v0, :cond_1

    const-string v0, "ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?"

    invoke-static {v0}, Landroidx/compose/runtime/retain/impl/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->purgeUnusedExitedValues()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isContentComposed:Z

    return-void
.end method

.method public onContentExitComposition()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isDisposed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isContentComposed:Z

    if-nez v0, :cond_1

    const-string v0, "ManagedValuesStore tried to leave composition twice. Is the store installed in multiple places?"

    invoke-static {v0}, Landroidx/compose/runtime/retain/impl/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->keptExitedValues:Landroidx/collection/MutableScatterMap;

    invoke-static {v0}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->isEmpty-impl(Landroidx/collection/MutableScatterMap;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Attempted to start retaining exited values with pending exited values"

    invoke-static {v0}, Landroidx/compose/runtime/retain/impl/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isContentComposed:Z

    return-void
.end method

.method public saveExitingValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->isRetainingExitedValues()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/retain/ManagedRetainedValuesStore;->keptExitedValues:Landroidx/collection/MutableScatterMap;

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    instance-of p0, p2, Landroidx/compose/runtime/retain/RetainObserver;

    if-eqz p0, :cond_1

    check-cast p2, Landroidx/compose/runtime/retain/RetainObserver;

    invoke-interface {p2}, Landroidx/compose/runtime/retain/RetainObserver;->onRetired()V

    :cond_1
    return-void
.end method
