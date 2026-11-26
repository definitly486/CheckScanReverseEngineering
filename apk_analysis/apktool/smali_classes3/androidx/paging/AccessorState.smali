.class final Landroidx/paging/AccessorState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/AccessorState$BlockState;,
        Landroidx/paging/AccessorState$PendingRequest;,
        Landroidx/paging/AccessorState$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blockStates:[Landroidx/paging/AccessorState$BlockState;

.field private final errors:[Landroidx/paging/LoadState$Error;

.field private final pendingRequests:Lfr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfr<",
            "Landroidx/paging/AccessorState$PendingRequest<",
            "TKey;TValue;>;>;"
        }
    .end annotation
.end field

.field private refreshAllowed:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroidx/paging/LoadType;->values()[Landroidx/paging/LoadType;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [Landroidx/paging/AccessorState$BlockState;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    sget-object v4, Landroidx/paging/AccessorState$BlockState;->UNBLOCKED:Landroidx/paging/AccessorState$BlockState;

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroidx/paging/AccessorState;->blockStates:[Landroidx/paging/AccessorState$BlockState;

    invoke-static {}, Landroidx/paging/LoadType;->values()[Landroidx/paging/LoadType;

    move-result-object v0

    array-length v0, v0

    new-array v1, v0, [Landroidx/paging/LoadState$Error;

    :goto_1
    if-ge v2, v0, :cond_1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput-object v1, p0, Landroidx/paging/AccessorState;->errors:[Landroidx/paging/LoadState$Error;

    new-instance v0, Lfr;

    invoke-direct {v0}, Lfr;-><init>()V

    iput-object v0, p0, Landroidx/paging/AccessorState;->pendingRequests:Lfr;

    return-void
.end method

.method public static synthetic a(Landroidx/paging/LoadType;Landroidx/paging/AccessorState$PendingRequest;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/paging/AccessorState;->clearPendingRequest$lambda$0(Landroidx/paging/LoadType;Landroidx/paging/AccessorState$PendingRequest;)Z

    move-result p0

    return p0
.end method

.method private static final clearPendingRequest$lambda$0(Landroidx/paging/LoadType;Landroidx/paging/AccessorState$PendingRequest;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/paging/AccessorState$PendingRequest;->getLoadType()Landroidx/paging/LoadType;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final computeLoadTypeState(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;
    .locals 3

    iget-object v0, p0, Landroidx/paging/AccessorState;->blockStates:[Landroidx/paging/AccessorState$BlockState;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/paging/AccessorState;->pendingRequests:Lfr;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/AccessorState$PendingRequest;

    invoke-virtual {v2}, Landroidx/paging/AccessorState$PendingRequest;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v2

    if-ne v2, p1, :cond_1

    sget-object v1, Landroidx/paging/AccessorState$BlockState;->REQUIRES_REFRESH:Landroidx/paging/AccessorState$BlockState;

    if-eq v0, v1, :cond_2

    sget-object p0, Landroidx/paging/LoadState$Loading;->INSTANCE:Landroidx/paging/LoadState$Loading;

    return-object p0

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/paging/AccessorState;->errors:[Landroidx/paging/LoadState$Error;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object p0, p0, v1

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Landroidx/paging/AccessorState$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6

    const/4 p1, 0x2

    if-eq p0, p1, :cond_5

    const/4 p1, 0x3

    if-ne p0, p1, :cond_4

    sget-object p0, Landroidx/paging/LoadState$NotLoading;->Companion:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {p0}, Landroidx/paging/LoadState$NotLoading$Companion;->getIncomplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    :cond_5
    sget-object p0, Landroidx/paging/LoadState$NotLoading;->Companion:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {p0}, Landroidx/paging/LoadState$NotLoading$Companion;->getIncomplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p0, Landroidx/paging/AccessorState$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-ne p0, v0, :cond_7

    sget-object p0, Landroidx/paging/LoadState$NotLoading;->Companion:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {p0}, Landroidx/paging/LoadState$NotLoading$Companion;->getIncomplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object p0, Landroidx/paging/LoadState$NotLoading;->Companion:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {p0}, Landroidx/paging/LoadState$NotLoading$Companion;->getComplete$paging_common()Landroidx/paging/LoadState$NotLoading;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/paging/AccessorState;->pendingRequests:Lfr;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/paging/AccessorState$PendingRequest;

    invoke-virtual {v3}, Landroidx/paging/AccessorState$PendingRequest;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v3

    if-ne v3, p1, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Landroidx/paging/AccessorState$PendingRequest;

    const/4 v0, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1, p2}, Landroidx/paging/AccessorState$PendingRequest;->setPagingState(Landroidx/paging/PagingState;)V

    return v0

    :cond_2
    iget-object v1, p0, Landroidx/paging/AccessorState;->blockStates:[Landroidx/paging/AccessorState$BlockState;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v1, v1, v3

    sget-object v3, Landroidx/paging/AccessorState$BlockState;->REQUIRES_REFRESH:Landroidx/paging/AccessorState$BlockState;

    if-ne v1, v3, :cond_3

    sget-object v3, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-eq p1, v3, :cond_3

    iget-object p0, p0, Landroidx/paging/AccessorState;->pendingRequests:Lfr;

    new-instance v1, Landroidx/paging/AccessorState$PendingRequest;

    invoke-direct {v1, p1, p2}, Landroidx/paging/AccessorState$PendingRequest;-><init>(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V

    invoke-virtual {p0, v1}, Lfr;->addLast(Ljava/lang/Object;)V

    return v0

    :cond_3
    sget-object v3, Landroidx/paging/AccessorState$BlockState;->UNBLOCKED:Landroidx/paging/AccessorState$BlockState;

    if-eq v1, v3, :cond_4

    sget-object v1, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-eq p1, v1, :cond_4

    return v0

    :cond_4
    sget-object v1, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-ne p1, v1, :cond_5

    invoke-virtual {p0, v1, v2}, Landroidx/paging/AccessorState;->setError(Landroidx/paging/LoadType;Landroidx/paging/LoadState$Error;)V

    :cond_5
    iget-object v1, p0, Landroidx/paging/AccessorState;->errors:[Landroidx/paging/LoadState$Error;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    if-nez v1, :cond_6

    iget-object p0, p0, Landroidx/paging/AccessorState;->pendingRequests:Lfr;

    new-instance v0, Landroidx/paging/AccessorState$PendingRequest;

    invoke-direct {v0, p1, p2}, Landroidx/paging/AccessorState$PendingRequest;-><init>(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V

    invoke-virtual {p0, v0}, Lfr;->addLast(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_6
    return v0
.end method

.method public final clearErrors()V
    .locals 4

    iget-object v0, p0, Landroidx/paging/AccessorState;->errors:[Landroidx/paging/LoadState$Error;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/paging/AccessorState;->errors:[Landroidx/paging/LoadState$Error;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final clearPendingRequest(Landroidx/paging/LoadType;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/paging/AccessorState;->pendingRequests:Lfr;

    new-instance v0, Landroidx/paging/a;

    invoke-direct {v0, p1}, Landroidx/paging/a;-><init>(Landroidx/paging/LoadType;)V

    invoke-static {v0, p0}, Lnn1;->y(Lnl3;Ljava/util/List;)V

    return-void
.end method

.method public final clearPendingRequests()V
    .locals 0

    iget-object p0, p0, Landroidx/paging/AccessorState;->pendingRequests:Lfr;

    invoke-virtual {p0}, Lfr;->clear()V

    return-void
.end method

.method public final computeLoadStates()Landroidx/paging/LoadStates;
    .locals 3

    sget-object v0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    invoke-direct {p0, v0}, Landroidx/paging/AccessorState;->computeLoadTypeState(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    move-result-object v0

    sget-object v1, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    invoke-direct {p0, v1}, Landroidx/paging/AccessorState;->computeLoadTypeState(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    move-result-object v1

    sget-object v2, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    invoke-direct {p0, v2}, Landroidx/paging/AccessorState;->computeLoadTypeState(Landroidx/paging/LoadType;)Landroidx/paging/LoadState;

    move-result-object p0

    new-instance v2, Landroidx/paging/LoadStates;

    invoke-direct {v2, v0, p0, v1}, Landroidx/paging/LoadStates;-><init>(Landroidx/paging/LoadState;Landroidx/paging/LoadState;Landroidx/paging/LoadState;)V

    return-object v2
.end method

.method public final getPendingBoundary()Lb36;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb36<",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/paging/AccessorState;->pendingRequests:Lfr;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/paging/AccessorState$PendingRequest;

    invoke-virtual {v3}, Landroidx/paging/AccessorState$PendingRequest;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v4

    sget-object v5, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Landroidx/paging/AccessorState;->blockStates:[Landroidx/paging/AccessorState$BlockState;

    invoke-virtual {v3}, Landroidx/paging/AccessorState$PendingRequest;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v3, v4, v3

    sget-object v4, Landroidx/paging/AccessorState$BlockState;->UNBLOCKED:Landroidx/paging/AccessorState$BlockState;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Landroidx/paging/AccessorState$PendingRequest;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/paging/AccessorState$PendingRequest;->getLoadType()Landroidx/paging/LoadType;

    move-result-object p0

    invoke-virtual {v1}, Landroidx/paging/AccessorState$PendingRequest;->getPagingState()Landroidx/paging/PagingState;

    move-result-object v0

    new-instance v1, Lb36;

    invoke-direct {v1, p0, v0}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_2
    return-object v2
.end method

.method public final getPendingRefresh()Landroidx/paging/PagingState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagingState<",
            "TKey;TValue;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/AccessorState;->pendingRequests:Lfr;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/paging/AccessorState$PendingRequest;

    invoke-virtual {v2}, Landroidx/paging/AccessorState$PendingRequest;->getLoadType()Landroidx/paging/LoadType;

    move-result-object v2

    sget-object v3, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Landroidx/paging/AccessorState$PendingRequest;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/paging/AccessorState$PendingRequest;->getPagingState()Landroidx/paging/PagingState;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public final getRefreshAllowed()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/paging/AccessorState;->refreshAllowed:Z

    return p0
.end method

.method public final setBlockState(Landroidx/paging/LoadType;Landroidx/paging/AccessorState$BlockState;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/paging/AccessorState;->blockStates:[Landroidx/paging/AccessorState$BlockState;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-object p2, p0, p1

    return-void
.end method

.method public final setError(Landroidx/paging/LoadType;Landroidx/paging/LoadState$Error;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/paging/AccessorState;->errors:[Landroidx/paging/LoadState$Error;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-object p2, p0, p1

    return-void
.end method

.method public final setRefreshAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/paging/AccessorState;->refreshAllowed:Z

    return-void
.end method
