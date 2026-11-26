.class public final Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final list:Landroidx/collection/MutableIntList;


# direct methods
.method private synthetic constructor <init>(Landroidx/collection/MutableIntList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->list:Landroidx/collection/MutableIntList;

    return-void
.end method

.method public static final add-impl(Landroidx/collection/MutableIntList;I)V
    .locals 3

    iget v0, p0, Landroidx/collection/IntList;->_size:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/collection/IntList;->get(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget v0, p0, Landroidx/collection/IntList;->_size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/collection/IntList;->get(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroidx/collection/IntList;->_size:I

    invoke-virtual {p0, p1}, Landroidx/collection/MutableIntList;->add(I)Z

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroidx/collection/IntList;->get(I)I

    move-result v2

    if-le p1, v2, :cond_2

    invoke-virtual {p0, v0, v2}, Landroidx/collection/MutableIntList;->set(II)I

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableIntList;->set(II)I

    return-void
.end method

.method public static final synthetic box-impl(Landroidx/collection/MutableIntList;)Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;
    .locals 1

    new-instance v0, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;-><init>(Landroidx/collection/MutableIntList;)V

    return-object v0
.end method

.method public static constructor-impl(Landroidx/collection/MutableIntList;)Landroidx/collection/MutableIntList;
    .locals 0

    return-object p0
.end method

.method public static synthetic constructor-impl$default(Landroidx/collection/MutableIntList;ILjh2;)Landroidx/collection/MutableIntList;
    .locals 1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    new-instance p0, Landroidx/collection/MutableIntList;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/collection/MutableIntList;-><init>(IILjh2;)V

    :cond_0
    invoke-static {p0}, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->constructor-impl(Landroidx/collection/MutableIntList;)Landroidx/collection/MutableIntList;

    move-result-object p0

    return-object p0
.end method

.method public static equals-impl(Landroidx/collection/MutableIntList;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;

    invoke-virtual {p1}, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->unbox-impl()Landroidx/collection/MutableIntList;

    move-result-object p1

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(Landroidx/collection/MutableIntList;Landroidx/collection/MutableIntList;)Z
    .locals 0

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static hashCode-impl(Landroidx/collection/MutableIntList;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/collection/IntList;->hashCode()I

    move-result p0

    return p0
.end method

.method public static final isEmpty-impl(Landroidx/collection/MutableIntList;)Z
    .locals 0

    iget p0, p0, Landroidx/collection/IntList;->_size:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isNotEmpty-impl(Landroidx/collection/MutableIntList;)Z
    .locals 0

    iget p0, p0, Landroidx/collection/IntList;->_size:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final peek-impl(Landroidx/collection/MutableIntList;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/collection/IntList;->first()I

    move-result p0

    return p0
.end method

.method public static final takeMax-impl(Landroidx/collection/MutableIntList;)I
    .locals 10

    iget v0, p0, Landroidx/collection/IntList;->_size:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/collection/IntList;->get(I)I

    move-result v1

    :cond_0
    iget v2, p0, Landroidx/collection/IntList;->_size:I

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Landroidx/collection/IntList;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-virtual {p0}, Landroidx/collection/IntList;->last()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroidx/collection/MutableIntList;->set(II)I

    iget v2, p0, Landroidx/collection/IntList;->_size:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroidx/collection/MutableIntList;->removeAt(I)I

    iget v2, p0, Landroidx/collection/IntList;->_size:I

    ushr-int/lit8 v3, v2, 0x1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {p0, v4}, Landroidx/collection/IntList;->get(I)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p0, v7}, Landroidx/collection/IntList;->get(I)I

    move-result v8

    if-ge v6, v2, :cond_1

    invoke-virtual {p0, v6}, Landroidx/collection/IntList;->get(I)I

    move-result v9

    if-le v9, v8, :cond_1

    if-le v9, v5, :cond_0

    invoke-virtual {p0, v4, v9}, Landroidx/collection/MutableIntList;->set(II)I

    invoke-virtual {p0, v6, v5}, Landroidx/collection/MutableIntList;->set(II)I

    move v4, v6

    goto :goto_0

    :cond_1
    if-le v8, v5, :cond_0

    invoke-virtual {p0, v4, v8}, Landroidx/collection/MutableIntList;->set(II)I

    invoke-virtual {p0, v7, v5}, Landroidx/collection/MutableIntList;->set(II)I

    move v4, v7

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static toString-impl(Landroidx/collection/MutableIntList;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrioritySet(list="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final validateHeap-impl(Landroidx/collection/MutableIntList;)V
    .locals 9

    iget v0, p0, Landroidx/collection/IntList;->_size:I

    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {p0, v3}, Landroidx/collection/IntList;->get(I)I

    move-result v7

    invoke-virtual {p0, v6}, Landroidx/collection/IntList;->get(I)I

    move-result v6

    const/4 v8, 0x1

    if-lt v7, v6, :cond_0

    move v6, v8

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    const-string v7, "Check failed."

    if-nez v6, :cond_1

    invoke-static {v7}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    if-ge v5, v0, :cond_3

    invoke-virtual {p0, v3}, Landroidx/collection/IntList;->get(I)I

    move-result v3

    invoke-virtual {p0, v5}, Landroidx/collection/IntList;->get(I)I

    move-result v5

    if-lt v3, v5, :cond_2

    goto :goto_2

    :cond_2
    move v8, v2

    :cond_3
    :goto_2
    if-nez v8, :cond_4

    invoke-static {v7}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->list:Landroidx/collection/MutableIntList;

    invoke-static {p0, p1}, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->equals-impl(Landroidx/collection/MutableIntList;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->list:Landroidx/collection/MutableIntList;

    invoke-static {p0}, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->hashCode-impl(Landroidx/collection/MutableIntList;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->list:Landroidx/collection/MutableIntList;

    invoke-static {p0}, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->toString-impl(Landroidx/collection/MutableIntList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()Landroidx/collection/MutableIntList;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/PrioritySet;->list:Landroidx/collection/MutableIntList;

    return-object p0
.end method
