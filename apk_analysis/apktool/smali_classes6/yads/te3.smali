.class public abstract Lyads/te3;
.super Lyads/ie3;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field public transient c:Lyads/oe3;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/ie3;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 5

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const v0, 0x2ccccccc

    const/4 v1, 0x1

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/2addr v0, v1

    :goto_0
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    return v0

    :cond_3
    const-string p0, "collection too large"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/util/Collection;)Lyads/te3;
    .locals 2

    .line 50
    instance-of v0, p0, Lyads/te3;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedSet;

    if-nez v0, :cond_0

    .line 51
    move-object v0, p0

    check-cast v0, Lyads/te3;

    .line 52
    invoke-virtual {v0}, Lyads/ie3;->e()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 53
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 54
    array-length v0, p0

    invoke-static {v0, p0}, Lyads/te3;->b(I[Ljava/lang/Object;)Lyads/te3;

    move-result-object p0

    return-object p0
.end method

.method public static varargs b(I[Ljava/lang/Object;)Lyads/te3;
    .locals 13

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_7

    invoke-static {p0}, Lyads/te3;->a(I)I

    move-result v2

    new-array v6, v2, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    move v3, v0

    move v5, v3

    move v8, v5

    :goto_0
    const/4 v4, 0x0

    if-ge v3, p0, :cond_3

    aget-object v9, p1, v3

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Lyads/p83;->a(I)I

    move-result v4

    :goto_1
    and-int v11, v4, v7

    aget-object v12, v6, v11

    if-nez v12, :cond_0

    add-int/lit8 v4, v8, 0x1

    aput-object v9, p1, v8

    aput-object v9, v6, v11

    add-int/2addr v5, v10

    move v8, v4

    goto :goto_2

    :cond_0
    invoke-virtual {v12, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string p0, "at index "

    invoke-static {v3, p0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-object v4

    :cond_3
    invoke-static {p1, v8, p0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v8, v1, :cond_4

    aget-object p0, p1, v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lyads/pl5;

    invoke-direct {p1, p0}, Lyads/pl5;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_4
    invoke-static {v8}, Lyads/te3;->a(I)I

    move-result p0

    div-int/lit8 v2, v2, 0x2

    if-ge p0, v2, :cond_5

    invoke-static {v8, p1}, Lyads/te3;->b(I[Ljava/lang/Object;)Lyads/te3;

    move-result-object p0

    return-object p0

    :cond_5
    array-length p0, p1

    shr-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    if-ge v8, v0, :cond_6

    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_6
    move-object v4, p1

    new-instance v3, Lyads/q55;

    invoke-direct/range {v3 .. v8}, Lyads/q55;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object v3

    :cond_7
    aget-object p0, p1, v0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lyads/pl5;

    invoke-direct {p1, p0}, Lyads/pl5;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_8
    sget-object p0, Lyads/q55;->j:Lyads/q55;

    return-object p0
.end method


# virtual methods
.method public a()Lyads/oe3;
    .locals 1

    .line 55
    iget-object v0, p0, Lyads/te3;->c:Lyads/oe3;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lyads/te3;->f()Lyads/oe3;

    move-result-object v0

    iput-object v0, p0, Lyads/te3;->c:Lyads/oe3;

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lyads/te3;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lyads/q55;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lyads/te3;

    instance-of v0, v0, Lyads/q55;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lyads/te3;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {p0, p1}, Lyads/tj5;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f()Lyads/oe3;
    .locals 1

    sget-object v0, Lyads/ie3;->b:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lyads/ie3;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lyads/oe3;->c:Lyads/le3;

    array-length v0, p0

    invoke-static {v0, p0}, Lyads/oe3;->b(I[Ljava/lang/Object;)Lyads/k55;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    invoke-static {p0}, Lyads/tj5;->a(Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lyads/se3;

    sget-object v1, Lyads/ie3;->b:[Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lyads/ie3;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/se3;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
