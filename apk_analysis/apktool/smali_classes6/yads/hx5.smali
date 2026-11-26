.class public final Lyads/hx5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final i:Lyads/jv;


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:I

.field public e:J

.field public f:J

.field public g:Z

.field public h:Lyads/a6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lme0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lme0;-><init>(I)V

    sput-object v0, Lyads/hx5;->i:Lyads/jv;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lyads/a6;->g:Lyads/a6;

    iput-object v0, p0, Lyads/hx5;->h:Lyads/a6;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lyads/hx5;
    .locals 13

    const/4 v0, 0x0

    const/16 v1, 0x24

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {p0, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v0, 0x1

    .line 93
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 94
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v0, 0x2

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    .line 96
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    const/4 v0, 0x3

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    const/4 v0, 0x4

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 101
    sget-object v0, Lyads/a6;->i:Lyads/jv;

    invoke-interface {v0, p0}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object p0

    check-cast p0, Lyads/a6;

    :goto_0
    move-object v11, p0

    goto :goto_1

    .line 102
    :cond_0
    sget-object p0, Lyads/a6;->g:Lyads/a6;

    goto :goto_0

    .line 103
    :goto_1
    new-instance v3, Lyads/hx5;

    invoke-direct {v3}, Lyads/hx5;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 104
    invoke-virtual/range {v3 .. v12}, Lyads/hx5;->a(Ljava/lang/Object;Ljava/lang/Object;IJJLyads/a6;Z)Lyads/hx5;

    return-object v3
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    .line 80
    iget-object p0, p0, Lyads/hx5;->h:Lyads/a6;

    invoke-virtual {p0, p1}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object p0

    const/4 p1, -0x1

    .line 81
    invoke-virtual {p0, p1}, Lyads/z5;->a(I)I

    move-result p0

    return p0
.end method

.method public final a(J)I
    .locals 8

    iget-object v0, p0, Lyads/hx5;->h:Lyads/a6;

    iget-wide v1, p0, Lyads/hx5;->e:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p0, p1, v3

    const/4 v5, -0x1

    if-eqz p0, :cond_4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v1, v6

    if-eqz p0, :cond_0

    cmp-long p0, p1, v1

    if-ltz p0, :cond_0

    goto :goto_2

    :cond_0
    iget p0, v0, Lyads/a6;->e:I

    :goto_0
    iget v1, v0, Lyads/a6;->b:I

    if-ge p0, v1, :cond_3

    invoke-virtual {v0, p0}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v1

    iget-wide v1, v1, Lyads/z5;->b:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v1

    iget-wide v1, v1, Lyads/z5;->b:J

    cmp-long v1, v1, p1

    if-lez v1, :cond_2

    :cond_1
    invoke-virtual {v0, p0}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v1

    iget v2, v1, Lyads/z5;->c:I

    if-eq v2, v5, :cond_3

    invoke-virtual {v1, v5}, Lyads/z5;->a(I)I

    move-result v2

    iget v1, v1, Lyads/z5;->c:I

    if-ge v2, v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget p1, v0, Lyads/a6;->b:I

    if-ge p0, p1, :cond_4

    return p0

    :cond_4
    :goto_2
    return v5
.end method

.method public final a(II)J
    .locals 1

    .line 89
    iget-object p0, p0, Lyads/hx5;->h:Lyads/a6;

    invoke-virtual {p0, p1}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object p0

    .line 90
    iget p1, p0, Lyads/z5;->c:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lyads/z5;->f:[J

    aget-wide p1, p0, p2

    return-wide p1

    :cond_0
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;IJJLyads/a6;Z)Lyads/hx5;
    .locals 0

    .line 82
    iput-object p1, p0, Lyads/hx5;->b:Ljava/lang/Object;

    .line 83
    iput-object p2, p0, Lyads/hx5;->c:Ljava/lang/Object;

    .line 84
    iput p3, p0, Lyads/hx5;->d:I

    .line 85
    iput-wide p4, p0, Lyads/hx5;->e:J

    .line 86
    iput-wide p6, p0, Lyads/hx5;->f:J

    .line 87
    iput-object p8, p0, Lyads/hx5;->h:Lyads/a6;

    .line 88
    iput-boolean p9, p0, Lyads/hx5;->g:Z

    return-object p0
.end method

.method public final b(J)I
    .locals 8

    iget-object v0, p0, Lyads/hx5;->h:Lyads/a6;

    iget-wide v1, p0, Lyads/hx5;->e:J

    iget p0, v0, Lyads/a6;->b:I

    const/4 v3, 0x1

    sub-int/2addr p0, v3

    :goto_0
    if-ltz p0, :cond_3

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, p1, v4

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0, p0}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object v6

    iget-wide v6, v6, Lyads/z5;->b:J

    cmp-long v4, v6, v4

    if-nez v4, :cond_1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v1, v4

    if-eqz v4, :cond_2

    cmp-long v4, p1, v1

    if-gez v4, :cond_3

    goto :goto_1

    :cond_1
    cmp-long v4, p1, v6

    if-gez v4, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/4 p1, -0x1

    if-ltz p0, :cond_7

    invoke-virtual {v0, p0}, Lyads/a6;->a(I)Lyads/z5;

    move-result-object p2

    iget v0, p2, Lyads/z5;->c:I

    if-ne v0, p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget v1, p2, Lyads/z5;->c:I

    if-ge v0, v1, :cond_7

    iget-object v1, p2, Lyads/z5;->e:[I

    aget v1, v1, v0

    if-eqz v1, :cond_6

    if-ne v1, v3, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return p0

    :cond_7
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lyads/hx5;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lyads/hx5;

    iget-object v2, p0, Lyads/hx5;->b:Ljava/lang/Object;

    iget-object v3, p1, Lyads/hx5;->b:Ljava/lang/Object;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/hx5;->c:Ljava/lang/Object;

    iget-object v3, p1, Lyads/hx5;->c:Ljava/lang/Object;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lyads/hx5;->d:I

    iget v3, p1, Lyads/hx5;->d:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lyads/hx5;->e:J

    iget-wide v4, p1, Lyads/hx5;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lyads/hx5;->f:J

    iget-wide v4, p1, Lyads/hx5;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lyads/hx5;->g:Z

    iget-boolean v3, p1, Lyads/hx5;->g:Z

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lyads/hx5;->h:Lyads/a6;

    iget-object p1, p1, Lyads/hx5;->h:Lyads/a6;

    invoke-static {p0, p1}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lyads/hx5;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lyads/hx5;->c:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lyads/hx5;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lyads/hx5;->e:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lyads/hx5;->f:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lyads/hx5;->g:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lyads/hx5;->h:Lyads/a6;

    invoke-virtual {p0}, Lyads/a6;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
