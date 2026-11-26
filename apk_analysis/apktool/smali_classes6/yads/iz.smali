.class public final Lyads/iz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mc5;


# instance fields
.field public final b:Lyads/jz;

.field public final c:Lyads/lc5;

.field public final d:I

.field public e:Z

.field public final synthetic f:Lyads/jz;


# direct methods
.method public constructor <init>(Lyads/jz;Lyads/jz;Lyads/lc5;I)V
    .locals 0

    iput-object p1, p0, Lyads/iz;->f:Lyads/jz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/iz;->b:Lyads/jz;

    iput-object p3, p0, Lyads/iz;->c:Lyads/lc5;

    iput p4, p0, Lyads/iz;->d:I

    return-void
.end method


# virtual methods
.method public final a(Lyads/a03;Lyads/mi0;I)I
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/iz;->f:Lyads/jz;

    invoke-virtual {v1}, Lyads/jz;->d()Z

    move-result v1

    const/4 v2, -0x3

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, v0, Lyads/iz;->f:Lyads/jz;

    iget-object v1, v1, Lyads/jz;->w:Lyads/zr;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget v4, v0, Lyads/iz;->d:I

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Lyads/zr;->a(I)I

    move-result v1

    iget-object v4, v0, Lyads/iz;->c:Lyads/lc5;

    iget v5, v4, Lyads/lc5;->q:I

    iget v4, v4, Lyads/lc5;->s:I

    add-int/2addr v5, v4

    if-gt v1, v5, :cond_1

    return v2

    :cond_1
    iget-boolean v1, v0, Lyads/iz;->e:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lyads/iz;->f:Lyads/jz;

    iget-object v2, v1, Lyads/jz;->h:Lyads/k14;

    iget-object v4, v1, Lyads/jz;->c:[I

    iget v5, v0, Lyads/iz;->d:I

    aget v8, v4, v5

    iget-object v4, v1, Lyads/jz;->d:[Lyads/vz2;

    aget-object v9, v4, v5

    iget-wide v4, v1, Lyads/jz;->u:J

    new-instance v6, Lyads/r04;

    invoke-virtual {v2, v4, v5}, Lyads/k14;->a(J)J

    move-result-wide v12

    const/4 v7, 0x1

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v15}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    invoke-virtual {v2, v6}, Lyads/k14;->a(Lyads/r04;)V

    iput-boolean v3, v0, Lyads/iz;->e:Z

    :cond_2
    iget-object v1, v0, Lyads/iz;->c:Lyads/lc5;

    iget-object v0, v0, Lyads/iz;->f:Lyads/jz;

    iget-boolean v0, v0, Lyads/jz;->x:Z

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4, v0}, Lyads/lc5;->a(Lyads/a03;Lyads/mi0;IZ)I

    move-result v0

    return v0
.end method

.method public final a()V
    .locals 0

    .line 95
    return-void
.end method

.method public final b(J)I
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lyads/iz;->f:Lyads/jz;

    invoke-virtual {v1}, Lyads/jz;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, v0, Lyads/iz;->c:Lyads/lc5;

    iget-object v2, v0, Lyads/iz;->f:Lyads/jz;

    iget-boolean v2, v2, Lyads/jz;->x:Z

    move-wide/from16 v3, p1

    invoke-virtual {v1, v3, v4, v2}, Lyads/lc5;->b(JZ)I

    move-result v1

    iget-object v2, v0, Lyads/iz;->f:Lyads/jz;

    iget-object v2, v2, Lyads/jz;->w:Lyads/zr;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget v4, v0, Lyads/iz;->d:I

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Lyads/zr;->a(I)I

    move-result v2

    iget-object v4, v0, Lyads/iz;->c:Lyads/lc5;

    iget v5, v4, Lyads/lc5;->q:I

    iget v4, v4, Lyads/lc5;->s:I

    add-int/2addr v5, v4

    sub-int/2addr v2, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_1
    iget-object v2, v0, Lyads/iz;->c:Lyads/lc5;

    monitor-enter v2

    if-ltz v1, :cond_3

    :try_start_0
    iget v4, v2, Lyads/lc5;->s:I

    add-int/2addr v4, v1

    iget v5, v2, Lyads/lc5;->p:I

    if-gt v4, v5, :cond_3

    iput v4, v2, Lyads/lc5;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    if-lez v1, :cond_2

    iget-boolean v2, v0, Lyads/iz;->e:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Lyads/iz;->f:Lyads/jz;

    iget-object v4, v2, Lyads/jz;->h:Lyads/k14;

    iget-object v5, v2, Lyads/jz;->c:[I

    iget v6, v0, Lyads/iz;->d:I

    aget v9, v5, v6

    iget-object v5, v2, Lyads/jz;->d:[Lyads/vz2;

    aget-object v10, v5, v6

    iget-wide v5, v2, Lyads/jz;->u:J

    new-instance v7, Lyads/r04;

    invoke-virtual {v4, v5, v6}, Lyads/k14;->a(J)J

    move-result-wide v13

    const/4 v8, 0x1

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v16}, Lyads/r04;-><init>(IILyads/vz2;ILjava/lang/Object;JJ)V

    invoke-virtual {v4, v7}, Lyads/k14;->a(Lyads/r04;)V

    iput-boolean v3, v0, Lyads/iz;->e:Z

    :cond_2
    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    throw v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lyads/iz;->f:Lyads/jz;

    invoke-virtual {v0}, Lyads/jz;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lyads/iz;->c:Lyads/lc5;

    iget-object p0, p0, Lyads/iz;->f:Lyads/jz;

    iget-boolean p0, p0, Lyads/jz;->x:Z

    invoke-virtual {v0, p0}, Lyads/lc5;->a(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
