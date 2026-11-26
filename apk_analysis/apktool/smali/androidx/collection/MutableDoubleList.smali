.class public final Landroidx/collection/MutableDoubleList;
.super Landroidx/collection/DoubleList;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/MutableDoubleList;-><init>(IILjh2;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, v0}, Landroidx/collection/DoubleList;-><init>(ILjh2;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x10

    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/MutableDoubleList;-><init>(I)V

    return-void
.end method

.method public static synthetic trim$default(Landroidx/collection/MutableDoubleList;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Landroidx/collection/DoubleList;->_size:I

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/collection/MutableDoubleList;->trim(I)V

    return-void
.end method


# virtual methods
.method public final add(ID)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Index must be between 0 and size"

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/collection/MutableDoubleList;->ensureCapacity(I)V

    iget-object v0, p0, Landroidx/collection/DoubleList;->content:[D

    iget v1, p0, Landroidx/collection/DoubleList;->_size:I

    if-eq p1, v1, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v0, v2, p1, v1}, Laq5;->j([D[DIII)V

    :cond_1
    aput-wide p2, v0, p1

    iget p1, p0, Landroidx/collection/DoubleList;->_size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/collection/DoubleList;->_size:I

    return-void
.end method

.method public final add(D)Z
    .locals 3

    .line 39
    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/MutableDoubleList;->ensureCapacity(I)V

    .line 40
    iget-object v0, p0, Landroidx/collection/DoubleList;->content:[D

    iget v2, p0, Landroidx/collection/DoubleList;->_size:I

    aput-wide p1, v0, v2

    add-int/2addr v2, v1

    .line 41
    iput v2, p0, Landroidx/collection/DoubleList;->_size:I

    return v1
.end method

.method public final addAll(ILandroidx/collection/DoubleList;)Z
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    :goto_0
    iget v0, p2, Landroidx/collection/DoubleList;->_size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v2, p0, Landroidx/collection/DoubleList;->_size:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroidx/collection/MutableDoubleList;->ensureCapacity(I)V

    iget-object v0, p0, Landroidx/collection/DoubleList;->content:[D

    iget v2, p0, Landroidx/collection/DoubleList;->_size:I

    if-eq p1, v2, :cond_2

    iget v3, p2, Landroidx/collection/DoubleList;->_size:I

    add-int/2addr v3, p1

    invoke-static {v0, v0, v3, p1, v2}, Laq5;->j([D[DIII)V

    :cond_2
    iget-object v2, p2, Landroidx/collection/DoubleList;->content:[D

    iget v3, p2, Landroidx/collection/DoubleList;->_size:I

    invoke-static {v2, v0, p1, v1, v3}, Laq5;->j([D[DIII)V

    iget p1, p0, Landroidx/collection/DoubleList;->_size:I

    iget p2, p2, Landroidx/collection/DoubleList;->_size:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/collection/DoubleList;->_size:I

    const/4 p0, 0x1

    return p0
.end method

.method public final addAll(I[D)Z
    .locals 4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p1, :cond_0

    .line 55
    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    const-string v0, ""

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    .line 57
    :goto_0
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 58
    :cond_1
    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    array-length v2, p2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroidx/collection/MutableDoubleList;->ensureCapacity(I)V

    .line 59
    iget-object v0, p0, Landroidx/collection/DoubleList;->content:[D

    .line 60
    iget v2, p0, Landroidx/collection/DoubleList;->_size:I

    if-eq p1, v2, :cond_2

    .line 61
    array-length v3, p2

    add-int/2addr v3, p1

    .line 62
    invoke-static {v0, v0, v3, p1, v2}, Laq5;->j([D[DIII)V

    .line 63
    :cond_2
    array-length v2, p2

    invoke-static {p2, v0, p1, v1, v2}, Laq5;->j([D[DIII)V

    .line 64
    iget p1, p0, Landroidx/collection/DoubleList;->_size:I

    array-length p2, p2

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/collection/DoubleList;->_size:I

    const/4 p0, 0x1

    return p0
.end method

.method public final addAll(Landroidx/collection/DoubleList;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableDoubleList;->addAll(ILandroidx/collection/DoubleList;)Z

    move-result p0

    return p0
.end method

.method public final addAll([D)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableDoubleList;->addAll(I[D)Z

    move-result p0

    return p0
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/collection/DoubleList;->_size:I

    return-void
.end method

.method public final ensureCapacity(I)V
    .locals 2

    iget-object v0, p0, Landroidx/collection/DoubleList;->content:[D

    array-length v1, v0

    if-ge v1, p1, :cond_0

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iput-object p1, p0, Landroidx/collection/DoubleList;->content:[D

    :cond_0
    return-void
.end method

.method public final getCapacity()I
    .locals 0

    iget-object p0, p0, Landroidx/collection/DoubleList;->content:[D

    array-length p0, p0

    return p0
.end method

.method public final minusAssign(D)V
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableDoubleList;->remove(D)Z

    return-void
.end method

.method public final minusAssign(Landroidx/collection/DoubleList;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/collection/DoubleList;->content:[D

    iget p1, p1, Landroidx/collection/DoubleList;->_size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-wide v2, v0, v1

    invoke-virtual {p0, v2, v3}, Landroidx/collection/MutableDoubleList;->remove(D)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final minusAssign([D)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    .line 20
    invoke-virtual {p0, v2, v3}, Landroidx/collection/MutableDoubleList;->remove(D)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final plusAssign(D)V
    .locals 0

    .line 10
    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableDoubleList;->add(D)Z

    return-void
.end method

.method public final plusAssign(Landroidx/collection/DoubleList;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableDoubleList;->addAll(ILandroidx/collection/DoubleList;)Z

    return-void
.end method

.method public final plusAssign([D)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    invoke-virtual {p0, v0, p1}, Landroidx/collection/MutableDoubleList;->addAll(I[D)Z

    return-void
.end method

.method public final remove(D)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/collection/DoubleList;->indexOf(D)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/collection/MutableDoubleList;->removeAt(I)D

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final removeAll(Landroidx/collection/DoubleList;)Z
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    iget v1, p1, Landroidx/collection/DoubleList;->_size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v4, v3

    :goto_0
    invoke-virtual {p1, v4}, Landroidx/collection/DoubleList;->get(I)D

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Landroidx/collection/MutableDoubleList;->remove(D)Z

    if-eq v4, v1, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/collection/DoubleList;->_size:I

    if-eq v0, p0, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method public final removeAll([D)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    .line 32
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 33
    aget-wide v4, p1, v3

    invoke-virtual {p0, v4, v5}, Landroidx/collection/MutableDoubleList;->remove(D)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :cond_0
    iget p0, p0, Landroidx/collection/DoubleList;->_size:I

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public final removeAt(I)D
    .locals 5

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Index must be between 0 and size"

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Landroidx/collection/DoubleList;->content:[D

    aget-wide v1, v0, p1

    iget v3, p0, Landroidx/collection/DoubleList;->_size:I

    add-int/lit8 v4, v3, -0x1

    if-eq p1, v4, :cond_1

    add-int/lit8 v4, p1, 0x1

    invoke-static {v0, v0, p1, v4, v3}, Laq5;->j([D[DIII)V

    :cond_1
    iget p1, p0, Landroidx/collection/DoubleList;->_size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/collection/DoubleList;->_size:I

    return-wide v1
.end method

.method public final removeRange(II)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Index must be between 0 and size"

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    :goto_0
    if-ge p2, p1, :cond_1

    const-string v0, "The end index must be < start index"

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    if-eq p2, p1, :cond_3

    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    if-ge p2, v0, :cond_2

    iget-object v1, p0, Landroidx/collection/DoubleList;->content:[D

    invoke-static {v1, v1, p1, p2, v0}, Laq5;->j([D[DIII)V

    :cond_2
    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Landroidx/collection/DoubleList;->_size:I

    :cond_3
    return-void
.end method

.method public final retainAll(Landroidx/collection/DoubleList;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    .line 45
    iget-object v1, p0, Landroidx/collection/DoubleList;->content:[D

    add-int/lit8 v2, v0, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v2, :cond_1

    .line 46
    aget-wide v3, v1, v2

    .line 47
    invoke-virtual {p1, v3, v4}, Landroidx/collection/DoubleList;->contains(D)Z

    move-result v3

    if-nez v3, :cond_0

    .line 48
    invoke-virtual {p0, v2}, Landroidx/collection/MutableDoubleList;->removeAt(I)D

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 49
    :cond_1
    iget p0, p0, Landroidx/collection/DoubleList;->_size:I

    if-eq v0, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final retainAll([D)Z
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    iget-object v1, p0, Landroidx/collection/DoubleList;->content:[D

    add-int/lit8 v2, v0, -0x1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ge v4, v2, :cond_3

    aget-wide v5, v1, v2

    array-length v7, p1

    :goto_1
    if-ge v3, v7, :cond_1

    aget-wide v8, p1, v3

    cmpg-double v8, v8, v5

    if-nez v8, :cond_0

    move v4, v3

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-gez v4, :cond_2

    invoke-virtual {p0, v2}, Landroidx/collection/MutableDoubleList;->removeAt(I)D

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    iget p0, p0, Landroidx/collection/DoubleList;->_size:I

    if-eq v0, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v3
.end method

.method public final set(ID)D
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Index must be between 0 and size"

    invoke-static {v0}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIndexOutOfBoundsException(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Landroidx/collection/DoubleList;->content:[D

    aget-wide v0, p0, p1

    aput-wide p2, p0, p1

    return-wide v0
.end method

.method public final sort()V
    .locals 2

    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/collection/DoubleList;->content:[D

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->sort([DII)V

    return-void
.end method

.method public final sortDescending()V
    .locals 7

    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/collection/DoubleList;->content:[D

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->sort([DII)V

    sget-object v2, Lu0;->Companion:Lu0$a;

    array-length v3, p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0, v3}, Lu0$a;->d(III)V

    div-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-wide v3, p0, v1

    aget-wide v5, p0, v0

    aput-wide v5, p0, v1

    aput-wide v3, p0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final trim(I)V
    .locals 2

    iget v0, p0, Landroidx/collection/DoubleList;->_size:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Landroidx/collection/DoubleList;->content:[D

    array-length v1, v0

    if-le v1, p1, :cond_0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iput-object p1, p0, Landroidx/collection/DoubleList;->content:[D

    :cond_0
    return-void
.end method
