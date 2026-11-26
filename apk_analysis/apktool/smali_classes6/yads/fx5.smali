.class public final Lyads/fx5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[J

.field public b:[Ljava/lang/Object;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [J

    iput-object v1, p0, Lyads/fx5;->a:[J

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lyads/fx5;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 101
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lyads/fx5;->a(JZ)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(JZ)Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    move-object v3, v0

    .line 102
    :goto_0
    iget v4, p0, Lyads/fx5;->d:I

    if-lez v4, :cond_2

    .line 103
    iget-object v5, p0, Lyads/fx5;->a:[J

    iget v6, p0, Lyads/fx5;->c:I

    aget-wide v7, v5, v6

    sub-long v7, p1, v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gez v5, :cond_0

    if-nez p3, :cond_2

    neg-long v9, v7

    cmp-long v1, v9, v1

    if-ltz v1, :cond_0

    goto :goto_1

    :cond_0
    if-lez v4, :cond_1

    .line 104
    iget-object v1, p0, Lyads/fx5;->b:[Ljava/lang/Object;

    aget-object v3, v1, v6

    .line 105
    aput-object v0, v1, v6

    add-int/lit8 v6, v6, 0x1

    .line 106
    array-length v1, v1

    rem-int/2addr v6, v1

    iput v6, p0, Lyads/fx5;->c:I

    add-int/lit8 v4, v4, -0x1

    .line 107
    iput v4, p0, Lyads/fx5;->d:I

    move-wide v1, v7

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {}, Lud;->g()V

    return-object v0

    :cond_2
    :goto_1
    return-object v3
.end method

.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 109
    :try_start_0
    iput v0, p0, Lyads/fx5;->c:I

    .line 110
    iput v0, p0, Lyads/fx5;->d:I

    .line 111
    iget-object v0, p0, Lyads/fx5;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Object;J)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lyads/fx5;->d:I

    if-lez v0, :cond_0

    iget v1, p0, Lyads/fx5;->c:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v0, p0, Lyads/fx5;->b:[Ljava/lang/Object;

    array-length v0, v0

    rem-int/2addr v1, v0

    iget-object v0, p0, Lyads/fx5;->a:[J

    aget-wide v1, v0, v1

    cmp-long v0, p2, v1

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lyads/fx5;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lyads/fx5;->b:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Lyads/fx5;->d:I

    if-ge v2, v1, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v0, v1, 0x2

    new-array v2, v0, [J

    new-array v0, v0, [Ljava/lang/Object;

    iget v3, p0, Lyads/fx5;->c:I

    sub-int/2addr v1, v3

    iget-object v4, p0, Lyads/fx5;->a:[J

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lyads/fx5;->b:[Ljava/lang/Object;

    iget v4, p0, Lyads/fx5;->c:I

    invoke-static {v3, v4, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lyads/fx5;->c:I

    if-lez v3, :cond_2

    iget-object v4, p0, Lyads/fx5;->a:[J

    invoke-static {v4, v5, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lyads/fx5;->b:[Ljava/lang/Object;

    iget v4, p0, Lyads/fx5;->c:I

    invoke-static {v3, v5, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object v2, p0, Lyads/fx5;->a:[J

    iput-object v0, p0, Lyads/fx5;->b:[Ljava/lang/Object;

    iput v5, p0, Lyads/fx5;->c:I

    :goto_1
    iget v1, p0, Lyads/fx5;->c:I

    iget v2, p0, Lyads/fx5;->d:I

    add-int/2addr v1, v2

    array-length v3, v0

    rem-int/2addr v1, v3

    iget-object v3, p0, Lyads/fx5;->a:[J

    aput-wide p2, v3, v1

    aput-object p1, v0, v1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lyads/fx5;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b()Ljava/lang/Object;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lyads/fx5;->d:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    iget-object v2, p0, Lyads/fx5;->b:[Ljava/lang/Object;

    iget v3, p0, Lyads/fx5;->c:I

    aget-object v4, v2, v3

    aput-object v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    array-length v1, v2

    rem-int/2addr v3, v1

    iput v3, p0, Lyads/fx5;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lyads/fx5;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
