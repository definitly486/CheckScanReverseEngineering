.class public final Lyads/hz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/k06;

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:[J

.field public l:[I


# direct methods
.method public constructor <init>(IIJILyads/k06;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iput-wide p3, p0, Lyads/hz;->d:J

    iput p5, p0, Lyads/hz;->e:I

    iput-object p6, p0, Lyads/hz;->a:Lyads/k06;

    if-ne p2, v1, :cond_2

    const/high16 p3, 0x63640000

    goto :goto_1

    :cond_2
    const/high16 p3, 0x62770000

    :goto_1
    div-int/lit8 p4, p1, 0xa

    rem-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x30

    shl-int/lit8 p1, p1, 0x8

    add-int/lit8 p4, p4, 0x30

    or-int/2addr p1, p4

    or-int/2addr p3, p1

    iput p3, p0, Lyads/hz;->b:I

    if-ne p2, v1, :cond_3

    const/high16 p2, 0x62640000

    or-int/2addr p1, p2

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    :goto_2
    iput p1, p0, Lyads/hz;->c:I

    const/16 p1, 0x200

    new-array p2, p1, [J

    iput-object p2, p0, Lyads/hz;->k:[J

    new-array p1, p1, [I

    iput-object p1, p0, Lyads/hz;->l:[I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 48
    iget-object v0, p0, Lyads/hz;->k:[J

    iget v1, p0, Lyads/hz;->j:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lyads/hz;->k:[J

    .line 49
    iget-object v0, p0, Lyads/hz;->l:[I

    iget v1, p0, Lyads/hz;->j:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lyads/hz;->l:[I

    return-void
.end method

.method public final a(J)V
    .locals 3

    iget v0, p0, Lyads/hz;->j:I

    iget-object v1, p0, Lyads/hz;->l:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lyads/hz;->k:[J

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lyads/hz;->k:[J

    iget-object v0, p0, Lyads/hz;->l:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lyads/hz;->l:[I

    :cond_0
    iget-object v0, p0, Lyads/hz;->k:[J

    iget v2, p0, Lyads/hz;->j:I

    aput-wide p1, v0, v2

    iget p1, p0, Lyads/hz;->i:I

    aput p1, v1, v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lyads/hz;->j:I

    return-void
.end method

.method public final b(J)Lyads/qh5;
    .locals 8

    iget-wide v0, p0, Lyads/hz;->d:J

    iget v2, p0, Lyads/hz;->e:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    div-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p2, p0, Lyads/hz;->l:[I

    const/4 v0, 0x1

    invoke-static {p2, p1, v0, v0}, Lyads/u56;->a([IIZZ)I

    move-result p2

    iget-object v1, p0, Lyads/hz;->l:[I

    aget v2, v1, p2

    if-ne v2, p1, :cond_0

    new-instance p1, Lyads/qh5;

    new-instance v0, Lyads/uh5;

    int-to-long v1, v2

    iget-wide v3, p0, Lyads/hz;->d:J

    iget v5, p0, Lyads/hz;->e:I

    int-to-long v5, v5

    div-long/2addr v3, v5

    mul-long/2addr v3, v1

    iget-object p0, p0, Lyads/hz;->k:[J

    aget-wide v1, p0, p2

    invoke-direct {v0, v3, v4, v1, v2}, Lyads/uh5;-><init>(JJ)V

    invoke-direct {p1, v0, v0}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object p1

    :cond_0
    new-instance p1, Lyads/uh5;

    int-to-long v2, v2

    iget-wide v4, p0, Lyads/hz;->d:J

    iget v6, p0, Lyads/hz;->e:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    mul-long/2addr v2, v4

    iget-object p0, p0, Lyads/hz;->k:[J

    aget-wide v6, p0, p2

    invoke-direct {p1, v2, v3, v6, v7}, Lyads/uh5;-><init>(JJ)V

    add-int/2addr p2, v0

    array-length v0, p0

    if-ge p2, v0, :cond_1

    new-instance v0, Lyads/qh5;

    new-instance v2, Lyads/uh5;

    aget v1, v1, p2

    int-to-long v6, v1

    mul-long/2addr v4, v6

    aget-wide v6, p0, p2

    invoke-direct {v2, v4, v5, v6, v7}, Lyads/uh5;-><init>(JJ)V

    invoke-direct {v0, p1, v2}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object v0

    :cond_1
    new-instance p0, Lyads/qh5;

    invoke-direct {p0, p1, p1}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object p0
.end method
