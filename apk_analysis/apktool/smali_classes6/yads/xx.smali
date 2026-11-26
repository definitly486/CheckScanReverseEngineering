.class public final Lyads/xx;
.super Lyads/gs;
.source "SourceFile"


# instance fields
.field public final n:Lyads/mi0;

.field public final o:Lyads/os4;

.field public p:J

.field public q:Lyads/wx;

.field public r:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lyads/gs;-><init>(I)V

    new-instance v0, Lyads/mi0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lyads/mi0;-><init>(I)V

    iput-object v0, p0, Lyads/xx;->n:Lyads/mi0;

    new-instance v0, Lyads/os4;

    invoke-direct {v0}, Lyads/os4;-><init>()V

    iput-object v0, p0, Lyads/xx;->o:Lyads/os4;

    return-void
.end method


# virtual methods
.method public final a(Lyads/vz2;)I
    .locals 0

    .line 155
    iget-object p0, p1, Lyads/vz2;->m:Ljava/lang/String;

    const-string p1, "application/x-camera-motion"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    .line 156
    invoke-static {p0, p1, p1}, Lyads/gs;->a(III)I

    move-result p0

    return p0

    .line 157
    :cond_0
    invoke-static {p1, p1, p1}, Lyads/gs;->a(III)I

    move-result p0

    return p0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 150
    check-cast p2, Lyads/wx;

    iput-object p2, p0, Lyads/xx;->q:Lyads/wx;

    :cond_0
    return-void
.end method

.method public final a(JJ)V
    .locals 4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lyads/gs;->d()Z

    move-result p3

    if-nez p3, :cond_6

    iget-wide p3, p0, Lyads/xx;->r:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long p3, p3, v0

    if-gez p3, :cond_6

    iget-object p3, p0, Lyads/xx;->n:Lyads/mi0;

    invoke-virtual {p3}, Lyads/mi0;->b()V

    iget-object p3, p0, Lyads/gs;->c:Lyads/a03;

    const/4 p4, 0x0

    iput-object p4, p3, Lyads/a03;->a:Lyads/eo2;

    iput-object p4, p3, Lyads/a03;->b:Lyads/vz2;

    iget-object v0, p0, Lyads/xx;->n:Lyads/mi0;

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v0, v1}, Lyads/gs;->a(Lyads/a03;Lyads/mi0;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_6

    iget-object p3, p0, Lyads/xx;->n:Lyads/mi0;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lyads/ev;->b(I)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_3

    :cond_1
    iget-object p3, p0, Lyads/xx;->n:Lyads/mi0;

    iget-wide v2, p3, Lyads/mi0;->f:J

    iput-wide v2, p0, Lyads/xx;->r:J

    iget-object v2, p0, Lyads/xx;->q:Lyads/wx;

    if-eqz v2, :cond_0

    const/high16 v2, -0x80000000

    invoke-virtual {p3, v2}, Lyads/ev;->b(I)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lyads/xx;->n:Lyads/mi0;

    invoke-virtual {p3}, Lyads/mi0;->c()V

    iget-object p3, p0, Lyads/xx;->n:Lyads/mi0;

    iget-object p3, p3, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    sget v2, Lyads/u56;->a:I

    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object p4, p0, Lyads/xx;->o:Lyads/os4;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    move-result v3

    iput-object v2, p4, Lyads/os4;->a:[B

    iput v3, p4, Lyads/os4;->c:I

    iput v1, p4, Lyads/os4;->b:I

    iget-object p4, p0, Lyads/xx;->o:Lyads/os4;

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p3

    add-int/2addr p3, v0

    invoke-virtual {p4, p3}, Lyads/os4;->e(I)V

    const/4 p3, 0x3

    new-array p4, p3, [F

    :goto_1
    if-ge v1, p3, :cond_4

    iget-object v0, p0, Lyads/xx;->o:Lyads/os4;

    invoke-virtual {v0}, Lyads/os4;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    aput v0, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez p4, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-object p3, p0, Lyads/xx;->q:Lyads/wx;

    iget-wide v0, p0, Lyads/xx;->r:J

    iget-wide v2, p0, Lyads/xx;->p:J

    sub-long/2addr v0, v2

    invoke-interface {p3, v0, v1, p4}, Lyads/wx;->a(J[F)V

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public final a(JZ)V
    .locals 0

    const-wide/high16 p1, -0x8000000000000000L

    .line 152
    iput-wide p1, p0, Lyads/xx;->r:J

    .line 153
    iget-object p0, p0, Lyads/xx;->q:Lyads/wx;

    if-eqz p0, :cond_0

    .line 154
    invoke-interface {p0}, Lyads/wx;->a()V

    :cond_0
    return-void
.end method

.method public final a([Lyads/vz2;JJ)V
    .locals 0

    .line 151
    iput-wide p4, p0, Lyads/xx;->p:J

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    const-string p0, "CameraMotionRenderer"

    return-object p0
.end method

.method public final e()Z
    .locals 0

    invoke-virtual {p0}, Lyads/gs;->d()Z

    move-result p0

    return p0
.end method

.method public final f()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final g()V
    .locals 0

    iget-object p0, p0, Lyads/xx;->q:Lyads/wx;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/wx;->a()V

    :cond_0
    return-void
.end method
