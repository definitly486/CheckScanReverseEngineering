.class public final Lyads/hd5;
.super Lyads/bv5;
.source "SourceFile"


# instance fields
.field public b:J

.field public c:[J

.field public d:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/cm2;

    invoke-direct {v0}, Lyads/cm2;-><init>()V

    invoke-direct {p0, v0}, Lyads/bv5;-><init>(Lyads/k06;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/hd5;->b:J

    const/4 v0, 0x0

    new-array v1, v0, [J

    iput-object v1, p0, Lyads/hd5;->c:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lyads/hd5;->d:[J

    return-void
.end method

.method public static a(ILyads/os4;)Ljava/io/Serializable;
    .locals 3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_b

    const/16 v0, 0xa

    const/4 v1, 0x0

    if-eq p0, v0, :cond_8

    const/16 v0, 0xb

    const/4 v2, 0x2

    if-eq p0, v0, :cond_7

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    if-eq p0, v2, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    :goto_0
    invoke-static {p1}, Lyads/hd5;->b(Lyads/os4;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    return-object p0

    :cond_2
    invoke-static {v1, p1}, Lyads/hd5;->a(ILyads/os4;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lyads/hd5;->b(Lyads/os4;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result p0

    if-ne p0, v0, :cond_5

    move v1, v0

    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p1}, Lyads/os4;->g()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/util/Date;

    invoke-virtual {p1}, Lyads/os4;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    iget v0, p1, Lyads/os4;->b:I

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lyads/os4;->e(I)V

    return-object p0

    :cond_8
    invoke-virtual {p1}, Lyads/os4;->n()I

    move-result p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v1, p0, :cond_a

    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result v2

    invoke-static {v2, p1}, Lyads/hd5;->a(ILyads/os4;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    return-object v0

    :cond_b
    invoke-static {p1}, Lyads/hd5;->a(Lyads/os4;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lyads/os4;)Ljava/util/HashMap;
    .locals 5

    .line 138
    invoke-virtual {p0}, Lyads/os4;->n()I

    move-result v0

    .line 139
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 140
    invoke-static {p0}, Lyads/hd5;->b(Lyads/os4;)Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {p0}, Lyads/os4;->k()I

    move-result v4

    .line 142
    invoke-static {v4, p0}, Lyads/hd5;->a(ILyads/os4;)Ljava/io/Serializable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 143
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static b(Lyads/os4;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lyads/os4;->p()I

    move-result v0

    iget v1, p0, Lyads/os4;->b:I

    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lyads/os4;->e(I)V

    new-instance v2, Ljava/lang/String;

    iget-object p0, p0, Lyads/os4;->a:[B

    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method
