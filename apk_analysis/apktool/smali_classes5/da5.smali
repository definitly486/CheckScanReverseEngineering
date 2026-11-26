.class public final Lda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Lvk2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lda5$c;,
        Lda5$d;,
        Lda5$e;,
        Lda5$b;
    }
.end annotation


# instance fields
.field public b:Lda5$b;

.field public c:I

.field public final d:Lg88;

.field public final e:Lg39;

.field public f:Lxd2;

.field public g:[B

.field public h:I

.field public i:Lda5$e;

.field public j:I

.field public k:Z

.field public l:Liu1;

.field public m:Liu1;

.field public n:J

.field public o:Z

.field public p:I

.field public q:I

.field public r:Z

.field public volatile s:Z


# direct methods
.method public constructor <init>(Lt1$a;ILg88;Lg39;)V
    .locals 3

    sget-object v0, Lbn1$b;->a:Lbn1$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lda5$e;->HEADER:Lda5$e;

    iput-object v1, p0, Lda5;->i:Lda5$e;

    const/4 v1, 0x5

    iput v1, p0, Lda5;->j:I

    new-instance v1, Liu1;

    invoke-direct {v1}, Liu1;-><init>()V

    iput-object v1, p0, Lda5;->m:Liu1;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lda5;->o:Z

    const/4 v2, -0x1

    iput v2, p0, Lda5;->p:I

    iput-boolean v1, p0, Lda5;->r:Z

    iput-boolean v1, p0, Lda5;->s:Z

    iput-object p1, p0, Lda5;->b:Lda5$b;

    iput-object v0, p0, Lda5;->f:Lxd2;

    iput p2, p0, Lda5;->c:I

    iput-object p3, p0, Lda5;->d:Lg88;

    const-string p1, "transportTracer"

    invoke-static {p4, p1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p4, p0, Lda5;->e:Lg39;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lda5;->c:I

    return-void
.end method

.method public final b(Lpv5;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lda5;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lda5;->r:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lda5;->m:Liu1;

    invoke-virtual {v1, p1}, Liu1;->b(Ldy6;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lda5;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lpv5;->close()V

    return-void

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lpv5;->close()V

    :cond_2
    throw p0
.end method

.method public final close()V
    .locals 3

    invoke-virtual {p0}, Lda5;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lda5;->l:Liu1;

    if-eqz v0, :cond_1

    iget v0, v0, Liu1;->d:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lda5;->m:Liu1;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Liu1;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v2, p0, Lda5;->l:Liu1;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Liu1;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iput-object v1, p0, Lda5;->m:Liu1;

    iput-object v1, p0, Lda5;->l:Liu1;

    iget-object p0, p0, Lda5;->b:Lda5$b;

    invoke-interface {p0, v0}, Lda5$b;->c(Z)V

    return-void

    :goto_2
    iput-object v1, p0, Lda5;->m:Liu1;

    iput-object v1, p0, Lda5;->l:Liu1;

    throw v0
.end method

.method public final e(Lxd2;)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "Already set full stream decompressor"

    invoke-static {v0, v1}, Lo8;->s(ZLjava/lang/Object;)V

    iput-object p1, p0, Lda5;->f:Lxd2;

    return-void
.end method

.method public final isClosed()Z
    .locals 0

    iget-object p0, p0, Lda5;->m:Liu1;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m()V
    .locals 4

    invoke-virtual {p0}, Lda5;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lda5;->n:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lda5;->n:J

    invoke-virtual {p0}, Lda5;->o()V

    return-void
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Lda5;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lda5;->m:Liu1;

    iget v0, v0, Liu1;->d:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lda5;->close()V

    return-void

    :cond_2
    iput-boolean v1, p0, Lda5;->r:Z

    return-void
.end method

.method public final o()V
    .locals 6

    iget-boolean v0, p0, Lda5;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lda5;->o:Z

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lda5;->s:Z

    if-nez v2, :cond_3

    iget-wide v2, p0, Lda5;->n:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lda5;->y()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lda5$a;->a:[I

    iget-object v3, p0, Lda5;->i:Lda5$e;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lda5;->p()V

    iget-wide v2, p0, Lda5;->n:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lda5;->n:J

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lda5;->i:Lda5$e;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lda5;->v()V

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lda5;->s:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lda5;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lda5;->o:Z

    return-void

    :cond_4
    :try_start_1
    iget-boolean v2, p0, Lda5;->r:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lda5;->m:Liu1;

    iget v2, v2, Liu1;->d:I

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lda5;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    iput-boolean v1, p0, Lda5;->o:Z

    return-void

    :goto_2
    iput-boolean v1, p0, Lda5;->o:Z

    throw v0
.end method

.method public final p()V
    .locals 11

    iget-object v0, p0, Lda5;->d:Lg88;

    iget-object v1, v0, Lg88;->a:[Ly14;

    iget v3, p0, Lda5;->p:I

    iget v2, p0, Lda5;->q:I

    int-to-long v4, v2

    iget-boolean v2, p0, Lda5;->k:Z

    if-nez v2, :cond_0

    move-wide v6, v4

    goto :goto_0

    :cond_0
    const-wide/16 v6, -0x1

    :goto_0
    array-length v8, v1

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v8, :cond_1

    aget-object v2, v1, v10

    invoke-virtual/range {v2 .. v7}, Ly14;->A(IJJ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    iput v9, p0, Lda5;->q:I

    iget-boolean v2, p0, Lda5;->k:Z

    const-string v3, "buffer"

    if-eqz v2, :cond_3

    iget-object v1, p0, Lda5;->f:Lxd2;

    sget-object v2, Lbn1$b;->a:Lbn1$b;

    if-eq v1, v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lda5;->l:Liu1;

    sget-object v4, Ley6;->a:Ley6$b;

    new-instance v4, Ley6$a;

    invoke-direct {v4}, Ljava/io/InputStream;-><init>()V

    invoke-static {v2, v3}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v4, Ley6$a;->b:Ldy6;

    invoke-interface {v1, v4}, Lxd2;->b(Ley6$a;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Lda5$d;

    iget v3, p0, Lda5;->c:I

    invoke-direct {v2, v1, v3, v0}, Lda5$d;-><init>(Ljava/io/InputStream;ILg88;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lti0;->f(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    sget-object p0, Lh88;->l:Lh88;

    const-string v0, "Can\'t decode compressed gRPC message as compression not configured"

    invoke-virtual {p0, v0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    invoke-virtual {p0}, Lh88;->a()Lio/grpc/StatusRuntimeException;

    move-result-object p0

    throw p0

    :cond_3
    iget-object v0, p0, Lda5;->l:Liu1;

    iget v0, v0, Liu1;->d:I

    int-to-long v4, v0

    array-length v0, v1

    :goto_2
    if-ge v9, v0, :cond_4

    aget-object v2, v1, v9

    invoke-virtual {v2, v4, v5}, Ly14;->B(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lda5;->l:Liu1;

    sget-object v1, Ley6;->a:Ley6$b;

    new-instance v2, Ley6$a;

    invoke-direct {v2}, Ljava/io/InputStream;-><init>()V

    invoke-static {v0, v3}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v2, Ley6$a;->b:Ldy6;

    :goto_3
    iget-object v0, p0, Lda5;->l:Liu1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iput-object v0, p0, Lda5;->l:Liu1;

    iget-object v0, p0, Lda5;->b:Lda5$b;

    new-instance v1, Lda5$c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Lda5$c;->a:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lda5$b;->a(Lj98$a;)V

    sget-object v0, Lda5$e;->HEADER:Lda5$e;

    iput-object v0, p0, Lda5;->i:Lda5$e;

    const/4 v0, 0x5

    iput v0, p0, Lda5;->j:I

    return-void
.end method

.method public final v()V
    .locals 6

    iget-object v0, p0, Lda5;->l:Liu1;

    invoke-virtual {v0}, Liu1;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0xfe

    if-nez v1, :cond_3

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lda5;->k:Z

    iget-object v0, p0, Lda5;->l:Liu1;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lm1;->a(I)V

    invoke-virtual {v0}, Liu1;->readUnsignedByte()I

    move-result v3

    invoke-virtual {v0}, Liu1;->readUnsignedByte()I

    move-result v4

    invoke-virtual {v0}, Liu1;->readUnsignedByte()I

    move-result v5

    invoke-virtual {v0}, Liu1;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v3, v3, 0x18

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v3, v4

    or-int/2addr v0, v3

    iput v0, p0, Lda5;->j:I

    if-ltz v0, :cond_2

    iget v3, p0, Lda5;->c:I

    if-gt v0, v3, :cond_2

    iget v0, p0, Lda5;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lda5;->p:I

    iget-object v1, p0, Lda5;->d:Lg88;

    iget-object v1, v1, Lg88;->a:[Ly14;

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    invoke-virtual {v4, v0}, Ly14;->z(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lda5;->e:Lg39;

    iget-object v1, v0, Lg39;->b:Ltv4;

    invoke-interface {v1}, Ltv4;->a()V

    iget-object v0, v0, Lg39;->a:Lpv8;

    invoke-interface {v0}, Lpv8;->b()J

    sget-object v0, Lda5$e;->BODY:Lda5$e;

    iput-object v0, p0, Lda5;->i:Lda5$e;

    return-void

    :cond_2
    sget-object v1, Lh88;->j:Lh88;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget p0, p0, Lda5;->c:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "gRPC message exceeds maximum size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    invoke-virtual {p0}, Lh88;->a()Lio/grpc/StatusRuntimeException;

    move-result-object p0

    throw p0

    :cond_3
    sget-object p0, Lh88;->l:Lh88;

    const-string v0, "gRPC frame header malformed: reserved bits not zero"

    invoke-virtual {p0, v0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p0

    invoke-virtual {p0}, Lh88;->a()Lio/grpc/StatusRuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final y()Z
    .locals 7

    iget-object v0, p0, Lda5;->d:Lg88;

    const/4 v1, 0x0

    :try_start_0
    iget v2, p0, Lda5;->j:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lda5;->m:Liu1;

    iget v2, v2, Liu1;->d:I

    if-nez v2, :cond_0

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :cond_0
    iget-object v2, p0, Lda5;->l:Liu1;

    if-nez v2, :cond_1

    new-instance v2, Liu1;

    invoke-direct {v2}, Liu1;-><init>()V

    iput-object v2, p0, Lda5;->l:Liu1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move v2, v1

    :goto_0
    :try_start_1
    iget v3, p0, Lda5;->j:I

    iget-object v4, p0, Lda5;->l:Liu1;

    iget v4, v4, Liu1;->d:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_4

    iget-object v4, p0, Lda5;->m:Liu1;

    iget v4, v4, Liu1;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v4, :cond_3

    if-lez v2, :cond_2

    iget-object v3, p0, Lda5;->b:Lda5$b;

    invoke-interface {v3, v2}, Lda5$b;->b(I)V

    iget-object v3, p0, Lda5;->i:Lda5$e;

    sget-object v4, Lda5$e;->BODY:Lda5$e;

    if-ne v3, v4, :cond_2

    :goto_1
    int-to-long v3, v2

    invoke-virtual {v0, v3, v4}, Lg88;->a(J)V

    iget v0, p0, Lda5;->q:I

    add-int/2addr v0, v2

    iput v0, p0, Lda5;->q:I

    :cond_2
    :goto_2
    return v1

    :cond_3
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v4, p0, Lda5;->l:Liu1;

    iget-object v5, p0, Lda5;->m:Liu1;

    invoke-virtual {v5, v3}, Liu1;->t(I)Ldy6;

    move-result-object v3

    invoke-virtual {v4, v3}, Liu1;->b(Ldy6;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    move v6, v2

    move-object v2, v1

    move v1, v6

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    if-lez v2, :cond_5

    iget-object v3, p0, Lda5;->b:Lda5$b;

    invoke-interface {v3, v2}, Lda5$b;->b(I)V

    iget-object v3, p0, Lda5;->i:Lda5$e;

    sget-object v4, Lda5$e;->BODY:Lda5$e;

    if-ne v3, v4, :cond_5

    goto :goto_1

    :cond_5
    return v1

    :goto_3
    if-lez v1, :cond_6

    iget-object v3, p0, Lda5;->b:Lda5$b;

    invoke-interface {v3, v1}, Lda5$b;->b(I)V

    iget-object v3, p0, Lda5;->i:Lda5$e;

    sget-object v4, Lda5$e;->BODY:Lda5$e;

    if-ne v3, v4, :cond_6

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lg88;->a(J)V

    iget v0, p0, Lda5;->q:I

    add-int/2addr v0, v1

    iput v0, p0, Lda5;->q:I

    :cond_6
    throw v2
.end method
