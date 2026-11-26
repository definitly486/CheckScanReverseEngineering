.class public final Lyads/s15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mc5;


# instance fields
.field public final b:I

.field public final synthetic c:Lyads/v15;


# direct methods
.method public constructor <init>(Lyads/v15;I)V
    .locals 0

    iput-object p1, p0, Lyads/s15;->c:Lyads/v15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lyads/s15;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lyads/a03;Lyads/mi0;I)I
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/s15;->c:Lyads/v15;

    iget v0, v0, Lyads/s15;->b:I

    iget-boolean v2, v1, Lyads/v15;->E:Z

    const/4 v3, -0x3

    if-nez v2, :cond_3

    iget-wide v4, v1, Lyads/v15;->I:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lyads/v15;->c()V

    iget-object v2, v1, Lyads/v15;->y:Lyads/u15;

    iget-object v4, v2, Lyads/u15;->d:[Z

    aget-boolean v5, v4, v0

    if-nez v5, :cond_1

    iget-object v2, v2, Lyads/u15;->a:Lyads/g06;

    invoke-virtual {v2, v0}, Lyads/g06;->a(I)Lyads/f06;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v2, v2, Lyads/f06;->e:[Lyads/vz2;

    aget-object v9, v2, v5

    iget-object v2, v1, Lyads/v15;->f:Lyads/k14;

    iget-object v5, v9, Lyads/vz2;->m:Ljava/lang/String;

    invoke-static {v5}, Lyads/z84;->d(Ljava/lang/String;)I

    move-result v8

    iget-wide v5, v1, Lyads/v15;->H:J

    new-instance v7, Lyads/r04;

    invoke-virtual {v2, v5, v6}, Lyads/k14;->a(J)J

    move-result-wide v12

    move-object v6, v7

    const/4 v7, 0x1

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v15}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    invoke-virtual {v2, v6}, Lyads/k14;->a(Lyads/r04;)V

    const/4 v2, 0x1

    aput-boolean v2, v4, v0

    :cond_1
    iget-object v2, v1, Lyads/v15;->t:[Lyads/lc5;

    aget-object v2, v2, v0

    iget-boolean v4, v1, Lyads/v15;->L:Z

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual {v2, v5, v6, v7, v4}, Lyads/lc5;->a(Lyads/a03;Lyads/mi0;IZ)I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {v1, v0}, Lyads/v15;->a(I)V

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v3
.end method

.method public final a()V
    .locals 3

    .line 102
    iget-object v0, p0, Lyads/s15;->c:Lyads/v15;

    iget p0, p0, Lyads/s15;->b:I

    .line 103
    iget-object v1, v0, Lyads/v15;->t:[Lyads/lc5;

    .line 104
    aget-object p0, v1, p0

    .line 105
    iget-object v1, p0, Lyads/lc5;->h:Lyads/eo2;

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {v1}, Lyads/eo2;->c()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object p0, p0, Lyads/lc5;->h:Lyads/eo2;

    invoke-virtual {p0}, Lyads/eo2;->a()Lyads/rl2;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    throw p0

    .line 110
    :cond_1
    :goto_0
    iget-object p0, v0, Lyads/v15;->l:Lyads/ru3;

    iget-object v1, v0, Lyads/v15;->e:Lyads/ll0;

    iget v0, v0, Lyads/v15;->C:I

    invoke-virtual {v1, v0}, Lyads/ll0;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lyads/ru3;->a(I)V

    return-void
.end method

.method public final b(J)I
    .locals 14

    iget-object v0, p0, Lyads/s15;->c:Lyads/v15;

    iget p0, p0, Lyads/s15;->b:I

    iget-boolean v1, v0, Lyads/v15;->E:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-wide v3, v0, Lyads/v15;->I:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lyads/v15;->c()V

    iget-object v1, v0, Lyads/v15;->y:Lyads/u15;

    iget-object v3, v1, Lyads/u15;->d:[Z

    aget-boolean v4, v3, p0

    if-nez v4, :cond_1

    iget-object v1, v1, Lyads/u15;->a:Lyads/g06;

    invoke-virtual {v1, p0}, Lyads/g06;->a(I)Lyads/f06;

    move-result-object v1

    iget-object v1, v1, Lyads/f06;->e:[Lyads/vz2;

    aget-object v7, v1, v2

    iget-object v1, v0, Lyads/v15;->f:Lyads/k14;

    iget-object v2, v7, Lyads/vz2;->m:Ljava/lang/String;

    invoke-static {v2}, Lyads/z84;->d(Ljava/lang/String;)I

    move-result v6

    iget-wide v4, v0, Lyads/v15;->H:J

    new-instance v2, Lyads/r04;

    invoke-virtual {v1, v4, v5}, Lyads/k14;->a(J)J

    move-result-wide v10

    const/4 v5, 0x1

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v13}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    invoke-virtual {v1, v4}, Lyads/k14;->a(Lyads/r04;)V

    const/4 v1, 0x1

    aput-boolean v1, v3, p0

    :cond_1
    iget-object v1, v0, Lyads/v15;->t:[Lyads/lc5;

    aget-object v1, v1, p0

    iget-boolean v2, v0, Lyads/v15;->L:Z

    move-wide v3, p1

    invoke-virtual {v1, v3, v4, v2}, Lyads/lc5;->b(JZ)I

    move-result v2

    monitor-enter v1

    if-ltz v2, :cond_3

    :try_start_0
    iget v3, v1, Lyads/lc5;->s:I

    add-int/2addr v3, v2

    iget v4, v1, Lyads/lc5;->p:I

    if-gt v3, v4, :cond_3

    iput v3, v1, Lyads/lc5;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-nez v2, :cond_2

    invoke-virtual {v0, p0}, Lyads/v15;->a(I)V

    :cond_2
    return v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v1

    throw p0

    :cond_4
    :goto_1
    return v2
.end method

.method public final c()Z
    .locals 5

    iget-object v0, p0, Lyads/s15;->c:Lyads/v15;

    iget p0, p0, Lyads/s15;->b:I

    iget-boolean v1, v0, Lyads/v15;->E:Z

    if-nez v1, :cond_1

    iget-wide v1, v0, Lyads/v15;->I:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lyads/v15;->t:[Lyads/lc5;

    aget-object p0, v1, p0

    iget-boolean v0, v0, Lyads/v15;->L:Z

    invoke-virtual {p0, v0}, Lyads/lc5;->a(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
