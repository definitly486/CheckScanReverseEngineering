.class public final Lyads/wk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/xs2;


# instance fields
.field public final a:[B

.field public final b:Lyads/tc0;

.field public final c:J

.field public d:J

.field public e:[B

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.extractor"

    invoke-static {v0}, Lyads/nq2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lyads/tc0;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/wk0;->b:Lyads/tc0;

    iput-wide p2, p0, Lyads/wk0;->d:J

    iput-wide p4, p0, Lyads/wk0;->c:J

    const/high16 p1, 0x10000

    new-array p1, p1, [B

    iput-object p1, p0, Lyads/wk0;->e:[B

    const/16 p1, 0x1000

    new-array p1, p1, [B

    iput-object p1, p0, Lyads/wk0;->a:[B

    return-void
.end method


# virtual methods
.method public final a([BIIIZ)I
    .locals 1

    .line 91
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    iget-object p0, p0, Lyads/wk0;->b:Lyads/tc0;

    add-int/2addr p2, p4

    sub-int/2addr p3, p4

    invoke-interface {p0, p1, p2, p3}, Lyads/tc0;->c([BII)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    return p1

    .line 93
    :cond_0
    invoke-static {}, Ln7;->e()V

    const/4 p0, 0x0

    return p0

    :cond_1
    add-int/2addr p4, p0

    return p4

    .line 94
    :cond_2
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method

.method public final a()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lyads/wk0;->c:J

    return-wide v0
.end method

.method public final a(I)V
    .locals 7

    .line 79
    iget v0, p0, Lyads/wk0;->g:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 80
    invoke-virtual {p0, v0}, Lyads/wk0;->c(I)V

    move v5, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v5, p1, :cond_0

    if-eq v5, v0, :cond_0

    .line 81
    iget-object v0, p0, Lyads/wk0;->a:[B

    array-length v0, v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 82
    iget-object v2, p0, Lyads/wk0;->a:[B

    neg-int v3, v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 83
    invoke-virtual/range {v1 .. v6}, Lyads/wk0;->a([BIIIZ)I

    move-result v5

    goto :goto_0

    :cond_0
    move-object v1, p0

    if-eq v5, v0, :cond_1

    .line 84
    iget-wide p0, v1, Lyads/wk0;->d:J

    int-to-long v2, v5

    add-long/2addr p0, v2

    iput-wide p0, v1, Lyads/wk0;->d:J

    :cond_1
    return-void
.end method

.method public final a([BII)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, p2, p3, v0}, Lyads/wk0;->b([BIIZ)Z

    return-void
.end method

.method public final a(IZ)Z
    .locals 7

    iget v0, p0, Lyads/wk0;->f:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lyads/wk0;->e:[B

    array-length v2, v1

    if-le v0, v2, :cond_0

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x10000

    add-int/2addr v2, v0

    const/high16 v3, 0x80000

    add-int/2addr v0, v3

    sget v3, Lyads/u56;->a:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lyads/wk0;->e:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lyads/wk0;->e:[B

    :cond_0
    iget v0, p0, Lyads/wk0;->g:I

    iget v1, p0, Lyads/wk0;->f:I

    sub-int/2addr v0, v1

    move v5, v0

    :goto_0
    if-ge v5, p1, :cond_2

    iget-object v2, p0, Lyads/wk0;->e:[B

    iget v3, p0, Lyads/wk0;->f:I

    move-object v1, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lyads/wk0;->a([BIIIZ)I

    move-result v5

    const/4 p0, -0x1

    if-ne v5, p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget p0, v1, Lyads/wk0;->f:I

    add-int/2addr p0, v5

    iput p0, v1, Lyads/wk0;->g:I

    move-object p0, v1

    move p1, v4

    move p2, v6

    goto :goto_0

    :cond_2
    move-object v1, p0

    move v4, p1

    iget p0, v1, Lyads/wk0;->f:I

    add-int/2addr p0, v4

    iput p0, v1, Lyads/wk0;->f:I

    const/4 p0, 0x1

    return p0
.end method

.method public final a([BIIZ)Z
    .locals 9

    .line 85
    iget v0, p0, Lyads/wk0;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v7, v1

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 87
    iget-object v2, p0, Lyads/wk0;->e:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    invoke-virtual {p0, v0}, Lyads/wk0;->c(I)V

    move v7, v0

    :goto_0
    const/4 v0, -0x1

    if-ge v7, p3, :cond_1

    if-eq v7, v0, :cond_1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v8, p4

    .line 89
    invoke-virtual/range {v3 .. v8}, Lyads/wk0;->a([BIIIZ)I

    move-result v7

    goto :goto_0

    :cond_1
    move-object v3, p0

    if-eq v7, v0, :cond_2

    .line 90
    iget-wide p0, v3, Lyads/wk0;->d:J

    int-to-long p2, v7

    add-long/2addr p0, p2

    iput-wide p0, v3, Lyads/wk0;->d:J

    :cond_2
    if-eq v7, v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public final b(I)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p1, v0}, Lyads/wk0;->a(IZ)Z

    return-void
.end method

.method public final b([BII)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, p1, p2, p3, v0}, Lyads/wk0;->a([BIIZ)Z

    return-void
.end method

.method public final b([BIIZ)Z
    .locals 0

    invoke-virtual {p0, p3, p4}, Lyads/wk0;->a(IZ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p4, p0, Lyads/wk0;->e:[B

    iget p0, p0, Lyads/wk0;->f:I

    sub-int/2addr p0, p3

    invoke-static {p4, p0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final c([BII)I
    .locals 8

    iget v0, p0, Lyads/wk0;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lyads/wk0;->e:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lyads/wk0;->c(I)V

    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lyads/wk0;->a([BIIIZ)I

    move-result v1

    goto :goto_1

    :cond_1
    move-object v2, p0

    :goto_1
    const/4 p0, -0x1

    if-eq v1, p0, :cond_2

    iget-wide p0, v2, Lyads/wk0;->d:J

    int-to-long p2, v1

    add-long/2addr p0, p2

    iput-wide p0, v2, Lyads/wk0;->d:J

    :cond_2
    return v1
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lyads/wk0;->f:I

    return-void
.end method

.method public final c(I)V
    .locals 5

    .line 44
    iget v0, p0, Lyads/wk0;->g:I

    sub-int/2addr v0, p1

    iput v0, p0, Lyads/wk0;->g:I

    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lyads/wk0;->f:I

    .line 46
    iget-object v2, p0, Lyads/wk0;->e:[B

    .line 47
    array-length v3, v2

    const/high16 v4, 0x80000

    sub-int/2addr v3, v4

    if-ge v0, v3, :cond_0

    const/high16 v3, 0x10000

    add-int/2addr v3, v0

    .line 48
    new-array v3, v3, [B

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 49
    :goto_0
    invoke-static {v2, p1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iput-object v3, p0, Lyads/wk0;->e:[B

    return-void
.end method

.method public final d([BII)I
    .locals 8

    iget v0, p0, Lyads/wk0;->f:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lyads/wk0;->e:[B

    array-length v2, v1

    if-le v0, v2, :cond_0

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    const/high16 v2, 0x10000

    add-int/2addr v2, v0

    const/high16 v3, 0x80000

    add-int/2addr v0, v3

    sget v3, Lyads/u56;->a:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lyads/wk0;->e:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lyads/wk0;->e:[B

    :cond_0
    move-object v3, v1

    iget v0, p0, Lyads/wk0;->g:I

    iget v4, p0, Lyads/wk0;->f:I

    sub-int/2addr v0, v4

    if-nez v0, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lyads/wk0;->a([BIIIZ)I

    move-result p0

    const/4 p3, -0x1

    if-ne p0, p3, :cond_1

    return p3

    :cond_1
    iget p3, v2, Lyads/wk0;->g:I

    add-int/2addr p3, p0

    iput p3, v2, Lyads/wk0;->g:I

    goto :goto_0

    :cond_2
    move-object v2, p0

    move v5, p3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    iget-object p3, v2, Lyads/wk0;->e:[B

    iget v0, v2, Lyads/wk0;->f:I

    invoke-static {p3, v0, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, v2, Lyads/wk0;->f:I

    add-int/2addr p1, p0

    iput p1, v2, Lyads/wk0;->f:I

    return p0
.end method

.method public final e()J
    .locals 4

    iget-wide v0, p0, Lyads/wk0;->d:J

    iget p0, p0, Lyads/wk0;->f:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lyads/wk0;->d:J

    return-wide v0
.end method
