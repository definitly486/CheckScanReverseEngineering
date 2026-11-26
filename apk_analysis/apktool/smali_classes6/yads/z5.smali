.class public final Lyads/z5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final i:Lyads/jv;


# instance fields
.field public final b:J

.field public final c:I

.field public final d:[Landroid/net/Uri;

.field public final e:[I

.field public final f:[J

.field public final g:J

.field public final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly83;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ly83;-><init>(I)V

    sput-object v0, Lyads/z5;->i:Lyads/jv;

    return-void
.end method

.method public constructor <init>(JI[I[Landroid/net/Uri;[JJZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p4

    array-length v1, p5

    if-ne v0, v1, :cond_0

    iput-wide p1, p0, Lyads/z5;->b:J

    iput p3, p0, Lyads/z5;->c:I

    iput-object p4, p0, Lyads/z5;->e:[I

    iput-object p5, p0, Lyads/z5;->d:[Landroid/net/Uri;

    iput-object p6, p0, Lyads/z5;->f:[J

    iput-wide p7, p0, Lyads/z5;->g:J

    iput-boolean p9, p0, Lyads/z5;->h:Z

    return-void

    :cond_0
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static a(Landroid/os/Bundle;)Lyads/z5;
    .locals 13

    const/4 v0, 0x0

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v7, 0x4

    invoke-static {v7, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v7

    const/4 v8, 0x5

    invoke-static {v8, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v8, 0x6

    invoke-static {v8, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    move-object p0, v3

    new-instance v3, Lyads/z5;

    if-nez p0, :cond_0

    new-array p0, v0, [I

    :cond_0
    if-nez v2, :cond_1

    new-array v1, v0, [Landroid/net/Uri;

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_1
    new-array v1, v0, [Landroid/net/Uri;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    goto :goto_0

    :goto_1
    if-nez v7, :cond_2

    new-array v7, v0, [J

    :cond_2
    move-object v9, v7

    move-object v7, p0

    invoke-direct/range {v3 .. v12}, Lyads/z5;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object v3
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 110
    :goto_0
    iget-object v1, p0, Lyads/z5;->e:[I

    array-length v2, v1

    if-ge p1, v2, :cond_1

    .line 111
    iget-boolean v2, p0, Lyads/z5;->h:Z

    if-nez v2, :cond_1

    aget v1, v1, p1

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public final a()Lyads/z5;
    .locals 12

    .line 98
    iget-object v0, p0, Lyads/z5;->e:[I

    .line 99
    array-length v1, v0

    const/4 v5, 0x0

    .line 100
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 101
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    const/4 v0, 0x0

    .line 102
    invoke-static {v6, v1, v2, v0}, Ljava/util/Arrays;->fill([IIII)V

    .line 103
    iget-object v1, p0, Lyads/z5;->f:[J

    .line 104
    array-length v2, v1

    .line 105
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 106
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 107
    invoke-static {v8, v2, v0, v3, v4}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 108
    iget-object v0, p0, Lyads/z5;->d:[Landroid/net/Uri;

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroid/net/Uri;

    .line 109
    new-instance v2, Lyads/z5;

    iget-wide v3, p0, Lyads/z5;->b:J

    iget-wide v9, p0, Lyads/z5;->g:J

    iget-boolean v11, p0, Lyads/z5;->h:Z

    invoke-direct/range {v2 .. v11}, Lyads/z5;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lyads/z5;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lyads/z5;

    iget-wide v2, p0, Lyads/z5;->b:J

    iget-wide v4, p1, Lyads/z5;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lyads/z5;->c:I

    iget v3, p1, Lyads/z5;->c:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lyads/z5;->d:[Landroid/net/Uri;

    iget-object v3, p1, Lyads/z5;->d:[Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/z5;->e:[I

    iget-object v3, p1, Lyads/z5;->e:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/z5;->f:[J

    iget-object v3, p1, Lyads/z5;->f:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lyads/z5;->g:J

    iget-wide v4, p1, Lyads/z5;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean p0, p0, Lyads/z5;->h:Z

    iget-boolean p1, p1, Lyads/z5;->h:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget v0, p0, Lyads/z5;->c:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lyads/z5;->b:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/z5;->d:[Landroid/net/Uri;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/z5;->e:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lyads/z5;->f:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lyads/z5;->g:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lyads/z5;->h:Z

    add-int/2addr v0, p0

    return v0
.end method
