.class public final Lyads/pb3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/zm2;


# instance fields
.field public final a:Lyads/os4;

.field public b:Lyads/k06;

.field public c:Z

.field public d:J

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/os4;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lyads/os4;-><init>(I)V

    iput-object v0, p0, Lyads/pb3;->a:Lyads/os4;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/pb3;->d:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lyads/pb3;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 151
    iput-wide v0, p0, Lyads/pb3;->d:J

    return-void
.end method

.method public final a(IJ)V
    .locals 2

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lyads/pb3;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    .line 147
    iput-wide p2, p0, Lyads/pb3;->d:J

    :cond_1
    const/4 p1, 0x0

    .line 148
    iput p1, p0, Lyads/pb3;->e:I

    .line 149
    iput p1, p0, Lyads/pb3;->f:I

    return-void
.end method

.method public final a(Lyads/os4;)V
    .locals 7

    iget-object v0, p0, Lyads/pb3;->b:Lyads/k06;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lyads/pb3;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lyads/os4;->c:I

    iget v1, p1, Lyads/os4;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Lyads/pb3;->f:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p1, Lyads/os4;->a:[B

    iget v4, p1, Lyads/os4;->b:I

    iget-object v5, p0, Lyads/pb3;->a:Lyads/os4;

    iget-object v5, v5, Lyads/os4;->a:[B

    iget v6, p0, Lyads/pb3;->f:I

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lyads/pb3;->f:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    iget-object v1, p0, Lyads/pb3;->a:Lyads/os4;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lyads/os4;->e(I)V

    iget-object v1, p0, Lyads/pb3;->a:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v1

    const/16 v4, 0x49

    if-ne v4, v1, :cond_2

    iget-object v1, p0, Lyads/pb3;->a:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v1

    const/16 v4, 0x44

    if-ne v4, v1, :cond_2

    iget-object v1, p0, Lyads/pb3;->a:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v1

    const/16 v4, 0x33

    if-eq v4, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lyads/pb3;->a:Lyads/os4;

    iget v3, v1, Lyads/os4;->b:I

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v3}, Lyads/os4;->e(I)V

    iget-object v1, p0, Lyads/pb3;->a:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->j()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lyads/pb3;->e:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    invoke-static {p1, v0}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lyads/pb3;->c:Z

    return-void

    :cond_3
    :goto_1
    iget v1, p0, Lyads/pb3;->e:I

    iget v2, p0, Lyads/pb3;->f:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lyads/pb3;->b:Lyads/k06;

    invoke-interface {v1, v0, p1}, Lyads/k06;->a(ILyads/os4;)V

    iget p1, p0, Lyads/pb3;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lyads/pb3;->f:I

    return-void

    :cond_4
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/zs2;Lyads/t26;)V
    .locals 2

    .line 134
    invoke-virtual {p2}, Lyads/t26;->a()V

    .line 135
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 136
    iget v0, p2, Lyads/t26;->d:I

    const/4 v1, 0x5

    .line 137
    invoke-interface {p1, v0, v1}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object p1

    iput-object p1, p0, Lyads/pb3;->b:Lyads/k06;

    .line 138
    new-instance p0, Lyads/uz2;

    invoke-direct {p0}, Lyads/uz2;-><init>()V

    .line 139
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 140
    iget-object p2, p2, Lyads/t26;->e:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lyads/uz2;->a:Ljava/lang/String;

    .line 142
    const-string p2, "application/id3"

    .line 143
    iput-object p2, p0, Lyads/uz2;->k:Ljava/lang/String;

    .line 144
    new-instance p2, Lyads/vz2;

    invoke-direct {p2, p0}, Lyads/vz2;-><init>(Lyads/uz2;)V

    .line 145
    invoke-interface {p1, p2}, Lyads/k06;->a(Lyads/vz2;)V

    return-void
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, Lyads/pb3;->b:Lyads/k06;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lyads/pb3;->c:Z

    if-eqz v1, :cond_2

    iget v4, p0, Lyads/pb3;->e:I

    if-eqz v4, :cond_2

    iget v1, p0, Lyads/pb3;->f:I

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lyads/pb3;->d:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v5

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v6}, Lyads/k06;->a(JIIILyads/j06;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/pb3;->c:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lud;->g()V

    return-void
.end method
