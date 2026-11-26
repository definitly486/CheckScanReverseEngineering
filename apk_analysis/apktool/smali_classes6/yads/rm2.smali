.class public final Lyads/rm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/zm2;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:[Lyads/k06;

.field public c:Z

.field public d:I

.field public e:I

.field public f:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/rm2;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lyads/k06;

    iput-object p1, p0, Lyads/rm2;->b:[Lyads/k06;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/rm2;->f:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lyads/rm2;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 121
    iput-wide v0, p0, Lyads/rm2;->f:J

    return-void
.end method

.method public final a(IJ)V
    .locals 2

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lyads/rm2;->c:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    .line 117
    iput-wide p2, p0, Lyads/rm2;->f:J

    :cond_1
    const/4 p1, 0x0

    .line 118
    iput p1, p0, Lyads/rm2;->e:I

    const/4 p1, 0x2

    .line 119
    iput p1, p0, Lyads/rm2;->d:I

    return-void
.end method

.method public final a(Lyads/os4;)V
    .locals 6

    iget-boolean v0, p0, Lyads/rm2;->c:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lyads/rm2;->d:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget v1, p1, Lyads/os4;->c:I

    iget v4, p1, Lyads/os4;->b:I

    sub-int/2addr v1, v4

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    iput-boolean v3, p0, Lyads/rm2;->c:Z

    :cond_1
    iget v0, p0, Lyads/rm2;->d:I

    sub-int/2addr v0, v2

    iput v0, p0, Lyads/rm2;->d:I

    iget-boolean v1, p0, Lyads/rm2;->c:Z

    :goto_0
    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    if-ne v0, v2, :cond_5

    iget v0, p1, Lyads/os4;->c:I

    iget v1, p1, Lyads/os4;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lyads/rm2;->c:Z

    :cond_4
    iget v0, p0, Lyads/rm2;->d:I

    sub-int/2addr v0, v2

    iput v0, p0, Lyads/rm2;->d:I

    iget-boolean v0, p0, Lyads/rm2;->c:Z

    :goto_1
    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    iget v0, p1, Lyads/os4;->b:I

    iget v1, p1, Lyads/os4;->c:I

    sub-int/2addr v1, v0

    iget-object v2, p0, Lyads/rm2;->b:[Lyads/k06;

    array-length v4, v2

    :goto_2
    if-ge v3, v4, :cond_6

    aget-object v5, v2, v3

    invoke-virtual {p1, v0}, Lyads/os4;->e(I)V

    invoke-interface {v5, v1, p1}, Lyads/k06;->a(ILyads/os4;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget p1, p0, Lyads/rm2;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lyads/rm2;->e:I

    :cond_7
    :goto_3
    return-void
.end method

.method public final a(Lyads/zs2;Lyads/t26;)V
    .locals 5

    const/4 v0, 0x0

    .line 96
    :goto_0
    iget-object v1, p0, Lyads/rm2;->b:[Lyads/k06;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lyads/rm2;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/r26;

    .line 98
    invoke-virtual {p2}, Lyads/t26;->a()V

    .line 99
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 100
    iget v2, p2, Lyads/t26;->d:I

    const/4 v3, 0x3

    .line 101
    invoke-interface {p1, v2, v3}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v2

    .line 102
    new-instance v3, Lyads/uz2;

    invoke-direct {v3}, Lyads/uz2;-><init>()V

    .line 103
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 104
    iget-object v4, p2, Lyads/t26;->e:Ljava/lang/String;

    .line 105
    iput-object v4, v3, Lyads/uz2;->a:Ljava/lang/String;

    .line 106
    const-string v4, "application/dvbsubs"

    .line 107
    iput-object v4, v3, Lyads/uz2;->k:Ljava/lang/String;

    .line 108
    iget-object v4, v1, Lyads/r26;->b:[B

    .line 109
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 110
    iput-object v4, v3, Lyads/uz2;->m:Ljava/util/List;

    .line 111
    iget-object v1, v1, Lyads/r26;->a:Ljava/lang/String;

    .line 112
    iput-object v1, v3, Lyads/uz2;->c:Ljava/lang/String;

    .line 113
    new-instance v1, Lyads/vz2;

    invoke-direct {v1, v3}, Lyads/vz2;-><init>(Lyads/uz2;)V

    .line 114
    invoke-interface {v2, v1}, Lyads/k06;->a(Lyads/vz2;)V

    .line 115
    iget-object v1, p0, Lyads/rm2;->b:[Lyads/k06;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 11

    iget-boolean v0, p0, Lyads/rm2;->c:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lyads/rm2;->f:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyads/rm2;->b:[Lyads/k06;

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    iget-wide v5, p0, Lyads/rm2;->f:J

    iget v8, p0, Lyads/rm2;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v10}, Lyads/k06;->a(JIIILyads/j06;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lyads/rm2;->c:Z

    :cond_1
    return-void
.end method
