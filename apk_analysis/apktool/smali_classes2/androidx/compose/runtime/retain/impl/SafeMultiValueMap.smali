.class public final Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final map:Landroidx/collection/MutableScatterMap;
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
.method private synthetic constructor <init>(Landroidx/collection/MutableScatterMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->map:Landroidx/collection/MutableScatterMap;

    return-void
.end method

.method public static final add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TK;TV;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMapKt;->access$getNULL_SENTINEL$p()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->findInsertIndex(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v0

    :goto_1
    if-nez v3, :cond_3

    invoke-static {p0, p2}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->safeWrapIfNecessary-impl$runtime_retain(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_3

    :cond_3
    instance-of v4, v3, Landroidx/collection/MutableObjectList;

    if-eqz v4, :cond_4

    move-object v2, v3

    check-cast v2, Landroidx/collection/MutableObjectList;

    invoke-virtual {v2, p2}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    move-object p2, v2

    goto :goto_3

    :cond_4
    instance-of v4, v3, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;

    if-eqz v4, :cond_5

    check-cast v3, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;

    invoke-virtual {v3}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMapKt;->access$getNULL_SENTINEL$p()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, v3

    :goto_2
    invoke-static {v2, p2}, Landroidx/collection/ObjectListKt;->mutableObjectListOf(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/collection/MutableObjectList;

    move-result-object p2

    :goto_3
    if-eqz v1, :cond_7

    not-int v0, v0

    iget-object v1, p0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    aput-object p1, v1, v0

    iget-object p0, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    aput-object p2, p0, v0

    return-void

    :cond_7
    iget-object p0, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    aput-object p2, p0, v0

    return-void
.end method

.method public static final synthetic box-impl(Landroidx/collection/MutableScatterMap;)Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;-><init>(Landroidx/collection/MutableScatterMap;)V

    return-object v0
.end method

.method public static final clear-impl(Landroidx/collection/MutableScatterMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/collection/MutableScatterMap;->clear()V

    return-void
.end method

.method public static constructor-impl(Landroidx/collection/MutableScatterMap;)Landroidx/collection/MutableScatterMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public static synthetic constructor-impl$default(Landroidx/collection/MutableScatterMap;ILjh2;)Landroidx/collection/MutableScatterMap;
    .locals 1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    new-instance p0, Landroidx/collection/MutableScatterMap;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/collection/MutableScatterMap;-><init>(IILjh2;)V

    :cond_0
    invoke-static {p0}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->constructor-impl(Landroidx/collection/MutableScatterMap;)Landroidx/collection/MutableScatterMap;

    move-result-object p0

    return-object p0
.end method

.method public static final contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TK;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMapKt;->access$getNULL_SENTINEL$p()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equals-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    instance-of v0, p1, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;

    invoke-virtual {p1}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->unbox-impl()Landroidx/collection/MutableScatterMap;

    move-result-object p1

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(Landroidx/collection/MutableScatterMap;Landroidx/collection/MutableScatterMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final forEachValue-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Lnl3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TK;",
            "Lnl3<",
            "-TV;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 89
    invoke-static {}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMapKt;->access$getNULL_SENTINEL$p()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 90
    instance-of p1, p0, Landroidx/collection/MutableObjectList;

    if-eqz p1, :cond_1

    .line 91
    check-cast p0, Landroidx/collection/MutableObjectList;

    .line 92
    iget-object p1, p0, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 93
    iget p0, p0, Landroidx/collection/ObjectList;->_size:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_4

    .line 94
    aget-object v1, p1, v0

    .line 95
    invoke-interface {p2, v1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    instance-of p1, p0, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;

    if-eqz p1, :cond_2

    check-cast p0, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;

    invoke-virtual {p0}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;->getValue()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 97
    :cond_2
    invoke-static {}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMapKt;->access$getNULL_SENTINEL$p()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    const/4 p0, 0x0

    .line 98
    :cond_3
    :goto_1
    invoke-interface {p2, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public static final forEachValue-impl(Landroidx/collection/MutableScatterMap;Lnl3;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lnl3<",
            "-TV;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    iget-object p0, p0, Landroidx/collection/ScatterMap;->metadata:[J

    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    aget-wide v4, p0, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    sub-int v6, v3, v1

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_2

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_1

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    aget-object v9, v0, v9

    instance-of v10, v9, Landroidx/collection/MutableObjectList;

    if-eqz v10, :cond_0

    check-cast v9, Landroidx/collection/MutableObjectList;

    iget-object v10, v9, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v9, v9, Landroidx/collection/ObjectList;->_size:I

    move v11, v2

    :goto_2
    if-ge v11, v9, :cond_1

    aget-object v12, v10, v11

    invoke-interface {p1, v12}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_0
    invoke-interface {p1, v9}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    if-ne v6, v7, :cond_4

    :cond_3
    if-eq v3, v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static hashCode-impl(Landroidx/collection/MutableScatterMap;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/collection/ScatterMap;->hashCode()I

    move-result p0

    return p0
.end method

.method public static final isEmpty-impl(Landroidx/collection/MutableScatterMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/collection/ScatterMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static final isNotEmpty-impl(Landroidx/collection/MutableScatterMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/collection/ScatterMap;->isNotEmpty()Z

    move-result p0

    return p0
.end method

.method public static final removeFirst-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMapKt;->access$getNULL_SENTINEL$p()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    instance-of p2, v0, Landroidx/collection/MutableObjectList;

    if-eqz p2, :cond_4

    check-cast v0, Landroidx/collection/MutableObjectList;

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0}, Landroidx/collection/ObjectList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->getSize()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Landroidx/collection/ObjectList;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->safeWrapIfNecessary-impl$runtime_retain(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-object p2

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;

    if-eqz p1, :cond_5

    check-cast p0, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;

    invoke-virtual {p0}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMapKt;->access$getNULL_SENTINEL$p()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_6

    const/4 p0, 0x0

    :cond_6
    return-object p0
.end method

.method public static final removeLast-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TK;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 79
    invoke-static {}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMapKt;->access$getNULL_SENTINEL$p()Ljava/lang/Object;

    move-result-object p1

    .line 80
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 81
    :cond_1
    instance-of v2, v0, Landroidx/collection/MutableObjectList;

    if-eqz v2, :cond_3

    .line 82
    check-cast v0, Landroidx/collection/MutableObjectList;

    .line 83
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->getSize()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 84
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->getSize()I

    move-result v3

    if-ne v3, v2, :cond_2

    invoke-virtual {v0}, Landroidx/collection/ObjectList;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->safeWrapIfNecessary-impl$runtime_retain(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object v1

    .line 85
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    instance-of p0, v0, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;

    if-eqz p0, :cond_4

    check-cast v0, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;

    invoke-virtual {v0}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 87
    :cond_4
    invoke-static {}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMapKt;->access$getNULL_SENTINEL$p()Ljava/lang/Object;

    move-result-object p0

    if-ne v0, p0, :cond_5

    return-object v1

    :cond_5
    return-object v0
.end method

.method public static final removeLast-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TK;TV;)TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMapKt;->access$getNULL_SENTINEL$p()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    instance-of p2, v0, Landroidx/collection/MutableObjectList;

    if-eqz p2, :cond_4

    check-cast v0, Landroidx/collection/MutableObjectList;

    invoke-virtual {v0}, Landroidx/collection/ObjectList;->getSize()I

    move-result p2

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Landroidx/collection/MutableObjectList;->removeAt(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0}, Landroidx/collection/ObjectList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0}, Landroidx/collection/ObjectList;->getSize()I

    move-result v2

    if-ne v2, v1, :cond_3

    invoke-virtual {v0}, Landroidx/collection/ObjectList;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->safeWrapIfNecessary-impl$runtime_retain(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    return-object p2

    :cond_4
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p0, v0, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;

    if-eqz p0, :cond_5

    check-cast v0, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;

    invoke-virtual {v0}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMapKt;->access$getNULL_SENTINEL$p()Ljava/lang/Object;

    move-result-object p0

    if-ne v0, p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    return-object v0
.end method

.method public static final safeWrapIfNecessary-impl$runtime_retain(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of p0, p1, Landroidx/collection/MutableObjectList;

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;

    invoke-direct {p0, p1}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMapKt;->access$getNULL_SENTINEL$p()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static toString-impl(Landroidx/collection/MutableScatterMap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SafeMultiValueMap(map="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final unwrapSafeValue-impl$runtime_retain(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    instance-of p0, p1, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;

    invoke-virtual {p1}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap$ValueSafetyWrapper;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMapKt;->access$getNULL_SENTINEL$p()Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static final values-impl(Landroidx/collection/MutableScatterMap;)Landroidx/collection/ObjectList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/collection/ObjectList<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/collection/ScatterMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/collection/ObjectListKt;->emptyObjectList()Landroidx/collection/ObjectList;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/collection/MutableObjectList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Landroidx/collection/MutableObjectList;-><init>(IILjh2;)V

    iget-object v1, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    iget-object p0, p0, Landroidx/collection/ScatterMap;->metadata:[J

    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_5

    move v4, v2

    :goto_0
    aget-wide v5, p0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    sub-int v7, v4, v3

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v2

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

    invoke-virtual {v0, v10}, Landroidx/collection/MutableObjectList;->addAll(Landroidx/collection/ObjectList;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v10}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    if-ne v7, v8, :cond_5

    :cond_4
    if-eq v4, v3, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-static {p0, p1}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->equals-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-static {p0}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->hashCode-impl(Landroidx/collection/MutableScatterMap;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->map:Landroidx/collection/MutableScatterMap;

    invoke-static {p0}, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->toString-impl(Landroidx/collection/MutableScatterMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()Landroidx/collection/MutableScatterMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/retain/impl/SafeMultiValueMap;->map:Landroidx/collection/MutableScatterMap;

    return-object p0
.end method
