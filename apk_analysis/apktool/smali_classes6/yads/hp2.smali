.class public final Lyads/hp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mc5;


# instance fields
.field public final b:Lyads/vz2;

.field public final c:Lyads/gp2;

.field public d:[J

.field public e:Z

.field public f:Lyads/ip2;

.field public g:Z

.field public h:I

.field public i:J


# direct methods
.method public constructor <init>(Lyads/ip2;Lyads/vz2;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/hp2;->b:Lyads/vz2;

    iput-object p1, p0, Lyads/hp2;->f:Lyads/ip2;

    new-instance p2, Lyads/gp2;

    invoke-direct {p2}, Lyads/gp2;-><init>()V

    iput-object p2, p0, Lyads/hp2;->c:Lyads/gp2;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/hp2;->i:J

    iget-object p2, p1, Lyads/ip2;->b:[J

    iput-object p2, p0, Lyads/hp2;->d:[J

    invoke-virtual {p0, p1, p3}, Lyads/hp2;->a(Lyads/ip2;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/a03;Lyads/mi0;I)I
    .locals 6

    iget v0, p0, Lyads/hp2;->h:I

    iget-object v1, p0, Lyads/hp2;->d:[J

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, -0x4

    const/4 v4, 0x4

    if-eqz v1, :cond_1

    iget-boolean v5, p0, Lyads/hp2;->e:Z

    if-nez v5, :cond_1

    iput v4, p2, Lyads/ev;->b:I

    return v3

    :cond_1
    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lyads/hp2;->g:Z

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p0, -0x3

    return p0

    :cond_3
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_4

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Lyads/hp2;->h:I

    :cond_4
    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_5

    iget-object p1, p0, Lyads/hp2;->c:Lyads/gp2;

    iget-object p3, p0, Lyads/hp2;->f:Lyads/ip2;

    iget-object p3, p3, Lyads/ip2;->a:[Lyads/ep2;

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Lyads/gp2;->a(Lyads/ep2;)[B

    move-result-object p1

    array-length p3, p1

    invoke-virtual {p2, p3}, Lyads/mi0;->c(I)V

    iget-object p3, p2, Lyads/mi0;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_5
    iget-object p0, p0, Lyads/hp2;->d:[J

    aget-wide v0, p0, v0

    iput-wide v0, p2, Lyads/mi0;->f:J

    iput v2, p2, Lyads/ev;->b:I

    return v3

    :cond_6
    :goto_1
    iget-object p2, p0, Lyads/hp2;->b:Lyads/vz2;

    iput-object p2, p1, Lyads/a03;->b:Lyads/vz2;

    iput-boolean v2, p0, Lyads/hp2;->g:Z

    const/4 p0, -0x5

    return p0
.end method

.method public final a()V
    .locals 0

    .line 94
    return-void
.end method

.method public final a(Lyads/ip2;Z)V
    .locals 9

    .line 85
    iget v0, p0, Lyads/hp2;->h:I

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-wide v5, v2

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lyads/hp2;->d:[J

    sub-int/2addr v0, v1

    aget-wide v5, v4, v0

    .line 86
    :goto_0
    iput-boolean p2, p0, Lyads/hp2;->e:Z

    .line 87
    iput-object p1, p0, Lyads/hp2;->f:Lyads/ip2;

    .line 88
    iget-object p1, p1, Lyads/ip2;->b:[J

    iput-object p1, p0, Lyads/hp2;->d:[J

    .line 89
    iget-wide v7, p0, Lyads/hp2;->i:J

    cmp-long p2, v7, v2

    if-eqz p2, :cond_2

    .line 90
    invoke-static {p1, v7, v8, v1}, Lyads/u56;->a([JJZ)I

    move-result p1

    iput p1, p0, Lyads/hp2;->h:I

    .line 91
    iget-boolean p2, p0, Lyads/hp2;->e:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lyads/hp2;->d:[J

    array-length p2, p2

    if-ne p1, p2, :cond_1

    move-wide v2, v7

    .line 92
    :cond_1
    iput-wide v2, p0, Lyads/hp2;->i:J

    return-void

    :cond_2
    cmp-long p2, v5, v2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 93
    invoke-static {p1, v5, v6, p2}, Lyads/u56;->a([JJZ)I

    move-result p1

    iput p1, p0, Lyads/hp2;->h:I

    :cond_3
    return-void
.end method

.method public final b(J)I
    .locals 3

    iget v0, p0, Lyads/hp2;->h:I

    iget-object v1, p0, Lyads/hp2;->d:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Lyads/u56;->a([JJZ)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p2, p0, Lyads/hp2;->h:I

    sub-int p2, p1, p2

    iput p1, p0, Lyads/hp2;->h:I

    return p2
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
