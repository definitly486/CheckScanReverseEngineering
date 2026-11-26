.class public abstract Lyads/ls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/er2;


# instance fields
.field public final a:Lyads/f06;

.field public final b:I

.field public final c:[I

.field public final d:[Lyads/vz2;

.field public final e:[J

.field public f:I


# direct methods
.method public constructor <init>(Lyads/f06;[I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    if-lez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lyads/ls;->a:Lyads/f06;

    array-length v0, p2

    iput v0, p0, Lyads/ls;->b:I

    new-array v0, v0, [Lyads/vz2;

    iput-object v0, p0, Lyads/ls;->d:[Lyads/vz2;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    iget-object v3, p0, Lyads/ls;->d:[Lyads/vz2;

    if-ge v1, v2, :cond_0

    aget v2, p2, v1

    iget-object v4, p1, Lyads/f06;->e:[Lyads/vz2;

    aget-object v2, v4, v2

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lp1a;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-static {v3, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget p2, p0, Lyads/ls;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Lyads/ls;->c:[I

    move p2, v0

    :goto_1
    iget v1, p0, Lyads/ls;->b:I

    if-ge p2, v1, :cond_3

    iget-object v1, p0, Lyads/ls;->c:[I

    iget-object v2, p0, Lyads/ls;->d:[Lyads/vz2;

    aget-object v2, v2, p2

    move v3, v0

    :goto_2
    iget-object v4, p1, Lyads/f06;->e:[Lyads/vz2;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    aget-object v4, v4, v3

    if-ne v2, v4, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_3
    aput v3, v1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    new-array p1, v1, [J

    iput-object p1, p0, Lyads/ls;->e:[J

    return-void

    :cond_4
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(Lyads/vz2;Lyads/vz2;)I
    .locals 0

    .line 64
    iget p1, p1, Lyads/vz2;->i:I

    iget p0, p0, Lyads/vz2;->i:I

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public a(JLjava/util/List;)I
    .locals 0

    .line 68
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final a(Lyads/vz2;)I
    .locals 2

    const/4 v0, 0x0

    .line 66
    :goto_0
    iget v1, p0, Lyads/ls;->b:I

    if-ge v0, v1, :cond_1

    .line 67
    iget-object v1, p0, Lyads/ls;->d:[Lyads/vz2;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final a(I)Lyads/vz2;
    .locals 0

    .line 65
    iget-object p0, p0, Lyads/ls;->d:[Lyads/vz2;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public a()V
    .locals 0

    .line 69
    return-void
.end method

.method public a(F)V
    .locals 0

    .line 63
    return-void
.end method

.method public final a(IJ)Z
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lyads/ls;->b(IJ)Z

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lyads/ls;->b:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    if-nez v2, :cond_1

    if-eq v4, p1, :cond_0

    invoke-virtual {p0, v4, v0, v1}, Lyads/ls;->b(IJ)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v6

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return v3

    :cond_2
    iget-object p0, p0, Lyads/ls;->e:[J

    aget-wide v2, p0, p1

    sget v4, Lyads/u56;->a:I

    add-long v4, v0, p2

    xor-long/2addr v0, v4

    xor-long/2addr p2, v4

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-gez p2, :cond_3

    const-wide v4, 0x7fffffffffffffffL

    :cond_3
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, p0, p1

    return v6
.end method

.method public final b(I)I
    .locals 0

    .line 12
    iget-object p0, p0, Lyads/ls;->c:[I

    aget p0, p0, p1

    return p0
.end method

.method public b()V
    .locals 0

    .line 13
    return-void
.end method

.method public final b(IJ)Z
    .locals 2

    iget-object p0, p0, Lyads/ls;->e:[J

    aget-wide v0, p0, p1

    cmp-long p0, v0, p2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lyads/ls;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lyads/ls;->c:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final c()Lyads/f06;
    .locals 0

    .line 17
    iget-object p0, p0, Lyads/ls;->a:Lyads/f06;

    return-object p0
.end method

.method public final d()Lyads/vz2;
    .locals 1

    iget-object v0, p0, Lyads/ls;->d:[Lyads/vz2;

    invoke-interface {p0}, Lyads/er2;->f()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lyads/ls;

    iget-object v2, p0, Lyads/ls;->a:Lyads/f06;

    iget-object v3, p1, Lyads/ls;->a:Lyads/f06;

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lyads/ls;->c:[I

    iget-object p1, p1, Lyads/ls;->c:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lyads/ls;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/ls;->a:Lyads/f06;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/ls;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lyads/ls;->f:I

    return v1

    :cond_0
    return v0
.end method

.method public final length()I
    .locals 0

    iget-object p0, p0, Lyads/ls;->c:[I

    array-length p0, p0

    return p0
.end method
