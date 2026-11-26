.class public final Lyads/n40;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final k:Ljava/lang/Object;


# instance fields
.field public transient b:Ljava/lang/Object;

.field public transient c:[I

.field public transient d:[Ljava/lang/Object;

.field public transient e:[Ljava/lang/Object;

.field public transient f:I

.field public transient g:I

.field public transient h:Lyads/k40;

.field public transient i:Lyads/i40;

.field public transient j:Lyads/m40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/n40;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const v0, 0x3fffffff    # 1.9999999f

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lyads/n40;->f:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    const v3, 0x3fffffff    # 1.9999999f

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lyads/n40;->f:I

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lyads/n40;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    const-string p0, "Expected size must be >= 0"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_3
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Invalid size: "

    invoke-static {v0, p1}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lyads/n40;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lyads/n40;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/g40;

    invoke-direct {v0, p0}, Lyads/g40;-><init>(Lyads/n40;)V

    move-object p0, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(IIII)I
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-lt p2, v0, :cond_5

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p2, v0, :cond_5

    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    if-ne v0, p2, :cond_5

    const/16 v0, 0x100

    if-gt p2, v0, :cond_0

    new-array v0, p2, [B

    goto :goto_0

    :cond_0
    const/high16 v0, 0x10000

    if-gt p2, v0, :cond_1

    new-array v0, p2, [S

    goto :goto_0

    :cond_1
    new-array v0, p2, [I

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-eqz p4, :cond_2

    and-int/2addr p3, p2

    add-int/lit8 p4, p4, 0x1

    invoke-static {p3, p4, v0}, Lyads/o40;->a(IILjava/lang/Object;)V

    :cond_2
    iget-object p3, p0, Lyads/n40;->b:Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, p0, Lyads/n40;->c:[I

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, [I

    :goto_1
    if-gt v1, p1, :cond_4

    invoke-static {v1, p3}, Lyads/o40;->a(ILjava/lang/Object;)I

    move-result v2

    :goto_2
    if-eqz v2, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget v4, p4, v3

    not-int v5, p1

    and-int/2addr v5, v4

    or-int/2addr v5, v1

    and-int v6, v5, p2

    invoke-static {v6, v0}, Lyads/o40;->a(ILjava/lang/Object;)I

    move-result v7

    invoke-static {v6, v2, v0}, Lyads/o40;->a(IILjava/lang/Object;)V

    not-int v2, p2

    and-int/2addr v2, v5

    and-int v5, v7, p2

    or-int/2addr v2, v5

    aput v2, p4, v3

    and-int v2, v4, p1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iput-object v0, p0, Lyads/n40;->b:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    iget p3, p0, Lyads/n40;->f:I

    and-int/lit8 p3, p3, -0x20

    and-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, p3

    iput p1, p0, Lyads/n40;->f:I

    return p2

    :cond_5
    const-string p0, "must be power of 2 between 2^1 and 2^30: "

    invoke-static {p2, p0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return v1
.end method

.method public final a(Ljava/lang/Object;)I
    .locals 8

    .line 119
    invoke-virtual {p0}, Lyads/n40;->b()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    invoke-static {v0}, Lyads/p83;->a(I)I

    move-result v0

    .line 121
    iget v2, p0, Lyads/n40;->f:I

    and-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x1

    shl-int v2, v3, v2

    sub-int/2addr v2, v3

    .line 122
    iget-object v4, p0, Lyads/n40;->b:Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    and-int v5, v0, v2

    .line 123
    invoke-static {v5, v4}, Lyads/o40;->a(ILjava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    not-int v5, v2

    and-int/2addr v0, v5

    :cond_3
    sub-int/2addr v4, v3

    .line 124
    iget-object v6, p0, Lyads/n40;->c:[I

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v6, [I

    .line 125
    aget v6, v6, v4

    and-int v7, v6, v5

    if-ne v7, v0, :cond_4

    .line 126
    invoke-virtual {p0, v4}, Lyads/n40;->a(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p1, v7}, Lyads/ep4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    return v4

    :cond_4
    and-int v4, v6, v2

    if-nez v4, :cond_3

    return v1
.end method

.method public final a(I)Ljava/lang/Object;
    .locals 0

    .line 147
    iget-object p0, p0, Lyads/n40;->d:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    .line 148
    aget-object p0, p0, p1

    return-object p0
.end method

.method public final a()Ljava/util/Map;
    .locals 1

    .line 117
    iget-object p0, p0, Lyads/n40;->b:Ljava/lang/Object;

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 118
    check-cast p0, Ljava/util/Map;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(II)V
    .locals 9

    .line 127
    iget-object v0, p0, Lyads/n40;->b:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v1, p0, Lyads/n40;->c:[I

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, [I

    .line 129
    iget-object v2, p0, Lyads/n40;->d:[Ljava/lang/Object;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 130
    iget-object v3, p0, Lyads/n40;->e:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lyads/n40;->size()I

    move-result p0

    add-int/lit8 v4, p0, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ge p1, v4, :cond_3

    .line 132
    aget-object v7, v2, v4

    .line 133
    aput-object v7, v2, p1

    .line 134
    aget-object v8, v3, v4

    aput-object v8, v3, p1

    .line 135
    aput-object v6, v2, v4

    .line 136
    aput-object v6, v3, v4

    .line 137
    aget v2, v1, v4

    aput v2, v1, p1

    .line 138
    aput v5, v1, v4

    if-nez v7, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_0
    invoke-static {v5}, Lyads/p83;->a(I)I

    move-result v2

    and-int/2addr v2, p2

    .line 140
    invoke-static {v2, v0}, Lyads/o40;->a(ILjava/lang/Object;)I

    move-result v3

    if-ne v3, p0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 141
    invoke-static {v2, p1, v0}, Lyads/o40;->a(IILjava/lang/Object;)V

    return-void

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 142
    aget v0, v1, v3

    and-int v2, v0, p2

    if-ne v2, p0, :cond_2

    add-int/lit8 p1, p1, 0x1

    not-int p0, p2

    and-int/2addr p0, v0

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    .line 143
    aput p0, v1, v3

    return-void

    :cond_2
    move v3, v2

    goto :goto_1

    .line 144
    :cond_3
    aput-object v6, v2, p1

    .line 145
    aput-object v6, v3, p1

    .line 146
    aput v5, v1, p1

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 0

    .line 149
    iget-object p0, p0, Lyads/n40;->e:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    .line 150
    aput-object p2, p0, p1

    return-void
.end method

.method public final b(I)Ljava/lang/Object;
    .locals 0

    .line 72
    iget-object p0, p0, Lyads/n40;->e:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    .line 73
    aget-object p0, p0, p1

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Lyads/n40;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lyads/n40;->k:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget v0, p0, Lyads/n40;->f:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v4, v0, -0x1

    iget-object v5, p0, Lyads/n40;->b:Ljava/lang/Object;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lyads/n40;->c:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [I

    iget-object v0, p0, Lyads/n40;->d:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lyads/o40;->a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    sget-object p0, Lyads/n40;->k:Ljava/lang/Object;

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lyads/n40;->b(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v4}, Lyads/n40;->a(II)V

    iget p1, p0, Lyads/n40;->g:I

    sub-int/2addr p1, v1

    iput p1, p0, Lyads/n40;->g:I

    iget p1, p0, Lyads/n40;->f:I

    add-int/lit8 p1, p1, 0x20

    iput p1, p0, Lyads/n40;->f:I

    return-object v0
.end method

.method public final b()Z
    .locals 0

    .line 71
    iget-object p0, p0, Lyads/n40;->b:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()[I
    .locals 0

    iget-object p0, p0, Lyads/n40;->c:[I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [I

    return-object p0
.end method

.method public final clear()V
    .locals 6

    invoke-virtual {p0}, Lyads/n40;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lyads/n40;->f:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lyads/n40;->f:I

    invoke-virtual {p0}, Lyads/n40;->a()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lyads/n40;->size()I

    move-result v3

    const v4, 0x3fffffff    # 1.9999999f

    const/4 v5, 0x3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lyads/n40;->f:I

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lyads/n40;->b:Ljava/lang/Object;

    iput v2, p0, Lyads/n40;->g:I

    return-void

    :cond_1
    iget-object v0, p0, Lyads/n40;->d:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v3, p0, Lyads/n40;->g:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lyads/n40;->e:[Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v3, p0, Lyads/n40;->g:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget-object v0, p0, Lyads/n40;->b:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_2

    check-cast v0, [B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    :cond_2
    instance-of v1, v0, [S

    if-eqz v1, :cond_3

    check-cast v0, [S

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    goto :goto_0

    :cond_3
    check-cast v0, [I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    iget-object v0, p0, Lyads/n40;->c:[I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, [I

    iget v1, p0, Lyads/n40;->g:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    iput v2, p0, Lyads/n40;->g:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lyads/n40;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lyads/n40;->a(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lyads/n40;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lyads/n40;->g:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lyads/n40;->b(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lyads/ep4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final d()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/n40;->d:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public final e()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/n40;->b:Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lyads/n40;->i:Lyads/i40;

    if-nez v0, :cond_0

    new-instance v0, Lyads/i40;

    invoke-direct {v0, p0}, Lyads/i40;-><init>(Lyads/n40;)V

    iput-object v0, p0, Lyads/n40;->i:Lyads/i40;

    :cond_0
    return-object v0
.end method

.method public final f()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyads/n40;->e:[Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lyads/n40;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lyads/n40;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lyads/n40;->b(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lyads/n40;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lyads/n40;->h:Lyads/k40;

    if-nez v0, :cond_0

    new-instance v0, Lyads/k40;

    invoke-direct {v0, p0}, Lyads/k40;-><init>(Lyads/n40;)V

    iput-object v0, p0, Lyads/n40;->h:Lyads/k40;

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0}, Lyads/n40;->b()Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v7, 0x20

    const/4 v8, 0x1

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lyads/n40;->b()Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v0, Lyads/n40;->f:I

    add-int/lit8 v9, v3, 0x1

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v10

    int-to-double v11, v10

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v11, v13

    double-to-int v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    if-le v9, v11, :cond_1

    shl-int/lit8 v10, v10, 0x1

    if-lez v10, :cond_0

    goto :goto_0

    :cond_0
    move v10, v12

    :cond_1
    :goto_0
    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-lt v9, v6, :cond_4

    if-gt v9, v12, :cond_4

    invoke-static {v9}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v10

    if-ne v10, v9, :cond_4

    const/16 v10, 0x100

    if-gt v9, v10, :cond_2

    new-array v10, v9, [B

    goto :goto_1

    :cond_2
    const/high16 v10, 0x10000

    if-gt v9, v10, :cond_3

    new-array v10, v9, [S

    goto :goto_1

    :cond_3
    new-array v10, v9, [I

    :goto_1
    iput-object v10, v0, Lyads/n40;->b:Ljava/lang/Object;

    sub-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x20

    iget v10, v0, Lyads/n40;->f:I

    and-int/lit8 v10, v10, -0x20

    and-int/lit8 v9, v9, 0x1f

    or-int/2addr v9, v10

    iput v9, v0, Lyads/n40;->f:I

    new-array v9, v3, [I

    iput-object v9, v0, Lyads/n40;->c:[I

    new-array v9, v3, [Ljava/lang/Object;

    iput-object v9, v0, Lyads/n40;->d:[Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v0, Lyads/n40;->e:[Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const-string v0, "must be power of 2 between 2^1 and 2^30: "

    invoke-static {v9, v0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-object v5

    :cond_5
    const-string v0, "Arrays already allocated"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v5

    :cond_6
    :goto_2
    invoke-virtual {v0}, Lyads/n40;->a()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v3, v0, Lyads/n40;->c:[I

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, [I

    iget-object v9, v0, Lyads/n40;->d:[Ljava/lang/Object;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    iget-object v10, v0, Lyads/n40;->e:[Ljava/lang/Object;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    iget v11, v0, Lyads/n40;->g:I

    add-int/lit8 v12, v11, 0x1

    if-nez v1, :cond_8

    const/4 v14, 0x0

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v14

    :goto_3
    invoke-static {v14}, Lyads/p83;->a(I)I

    move-result v14

    iget v15, v0, Lyads/n40;->f:I

    and-int/lit8 v15, v15, 0x1f

    shl-int v15, v8, v15

    add-int/lit8 v4, v15, -0x1

    and-int v6, v14, v4

    iget-object v13, v0, Lyads/n40;->b:Ljava/lang/Object;

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v13}, Lyads/o40;->a(ILjava/lang/Object;)I

    move-result v13

    if-nez v13, :cond_b

    if-le v12, v4, :cond_a

    if-ge v4, v7, :cond_9

    const/16 v16, 0x4

    goto :goto_4

    :cond_9
    const/16 v16, 0x2

    :goto_4
    mul-int v15, v15, v16

    invoke-virtual {v0, v4, v15, v14, v11}, Lyads/n40;->a(IIII)I

    move-result v4

    :goto_5
    move/from16 v17, v8

    goto/16 :goto_a

    :cond_a
    iget-object v3, v0, Lyads/n40;->b:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v12, v3}, Lyads/o40;->a(IILjava/lang/Object;)V

    goto :goto_5

    :cond_b
    not-int v6, v4

    move/from16 v17, v8

    and-int v8, v14, v6

    const/16 v18, 0x0

    :goto_6
    add-int/lit8 v13, v13, -0x1

    aget v19, v3, v13

    move/from16 v20, v7

    and-int v7, v19, v6

    if-ne v7, v8, :cond_c

    aget-object v5, v9, v13

    invoke-static {v1, v5}, Lyads/ep4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    aget-object v0, v10, v13

    aput-object v2, v10, v13

    return-object v0

    :cond_c
    and-int v5, v19, v4

    move-object/from16 v19, v3

    add-int/lit8 v3, v18, 0x1

    if-nez v5, :cond_14

    const/16 v5, 0x9

    if-lt v3, v5, :cond_10

    iget v3, v0, Lyads/n40;->f:I

    and-int/lit8 v3, v3, 0x1f

    shl-int v3, v17, v3

    new-instance v4, Ljava/util/LinkedHashMap;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Ljava/util/LinkedHashMap;-><init>(IF)V

    invoke-virtual {v0}, Lyads/n40;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_8

    :cond_d
    const/4 v13, 0x0

    :goto_7
    if-ltz v13, :cond_f

    invoke-virtual {v0, v13}, Lyads/n40;->a(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v13}, Lyads/n40;->b(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    iget v3, v0, Lyads/n40;->g:I

    if-ge v13, v3, :cond_e

    goto :goto_7

    :cond_e
    :goto_8
    const/4 v13, -0x1

    goto :goto_7

    :cond_f
    iput-object v4, v0, Lyads/n40;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v0, Lyads/n40;->c:[I

    iput-object v3, v0, Lyads/n40;->d:[Ljava/lang/Object;

    iput-object v3, v0, Lyads/n40;->e:[Ljava/lang/Object;

    iget v3, v0, Lyads/n40;->f:I

    add-int/lit8 v3, v3, 0x20

    iput v3, v0, Lyads/n40;->f:I

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_10
    if-le v12, v4, :cond_12

    move/from16 v3, v20

    if-ge v4, v3, :cond_11

    const/16 v16, 0x4

    goto :goto_9

    :cond_11
    const/16 v16, 0x2

    :goto_9
    mul-int v15, v15, v16

    invoke-virtual {v0, v4, v15, v14, v11}, Lyads/n40;->a(IIII)I

    move-result v4

    goto :goto_a

    :cond_12
    and-int v3, v12, v4

    or-int/2addr v3, v7

    aput v3, v19, v13

    :goto_a
    iget-object v3, v0, Lyads/n40;->c:[I

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, [I

    array-length v3, v3

    if-le v12, v3, :cond_13

    ushr-int/lit8 v5, v3, 0x1

    move/from16 v7, v17

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v3

    or-int/2addr v5, v7

    const v6, 0x3fffffff    # 1.9999999f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eq v5, v3, :cond_13

    iget-object v3, v0, Lyads/n40;->c:[I

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, [I

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v0, Lyads/n40;->c:[I

    iget-object v3, v0, Lyads/n40;->d:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lyads/n40;->d:[Ljava/lang/Object;

    iget-object v3, v0, Lyads/n40;->e:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lyads/n40;->e:[Ljava/lang/Object;

    :cond_13
    not-int v3, v4

    and-int/2addr v3, v14

    iget-object v4, v0, Lyads/n40;->c:[I

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v4, [I

    aput v3, v4, v11

    iget-object v3, v0, Lyads/n40;->d:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aput-object v1, v3, v11

    invoke-virtual {v0, v11, v2}, Lyads/n40;->a(ILjava/lang/Object;)V

    iput v12, v0, Lyads/n40;->g:I

    iget v1, v0, Lyads/n40;->f:I

    const/16 v20, 0x20

    add-int/lit8 v1, v1, 0x20

    iput v1, v0, Lyads/n40;->f:I

    const/16 v21, 0x0

    return-object v21

    :cond_14
    const/16 v21, 0x0

    move/from16 v18, v3

    move v13, v5

    move-object/from16 v3, v19

    move/from16 v7, v20

    move-object/from16 v5, v21

    goto/16 :goto_6
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lyads/n40;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lyads/n40;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lyads/n40;->k:Ljava/lang/Object;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public final size()I
    .locals 1

    invoke-virtual {p0}, Lyads/n40;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p0

    return p0

    :cond_0
    iget p0, p0, Lyads/n40;->g:I

    return p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lyads/n40;->j:Lyads/m40;

    if-nez v0, :cond_0

    new-instance v0, Lyads/m40;

    invoke-direct {v0, p0}, Lyads/m40;-><init>(Lyads/n40;)V

    iput-object v0, p0, Lyads/n40;->j:Lyads/m40;

    :cond_0
    return-object v0
.end method
