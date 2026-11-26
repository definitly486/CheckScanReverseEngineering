.class public final Lyads/eb3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/wc0;


# instance fields
.field public final a:Lyads/wc0;

.field public final b:I

.field public final c:Lyads/r15;

.field public final d:[B

.field public e:I


# direct methods
.method public constructor <init>(Lyads/wc0;ILyads/r15;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_0

    iput-object p1, p0, Lyads/eb3;->a:Lyads/wc0;

    iput p2, p0, Lyads/eb3;->b:I

    iput-object p3, p0, Lyads/eb3;->c:Lyads/r15;

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lyads/eb3;->d:[B

    iput p2, p0, Lyads/eb3;->e:I

    return-void

    :cond_0
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(Lyads/bd0;)J
    .locals 0

    .line 9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final a(Lyads/p16;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lyads/eb3;->a:Lyads/wc0;

    invoke-interface {p0, p1}, Lyads/wc0;->a(Lyads/p16;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lyads/eb3;->a:Lyads/wc0;

    invoke-interface {p0}, Lyads/wc0;->b()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final c([BII)I
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lyads/eb3;->e:I

    const/4 v2, -0x1

    if-nez v1, :cond_7

    iget-object v1, v0, Lyads/eb3;->a:Lyads/wc0;

    iget-object v3, v0, Lyads/eb3;->d:[B

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v3, v4, v5}, Lyads/tc0;->c([BII)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lyads/eb3;->d:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    goto :goto_5

    :cond_1
    new-array v3, v1, [B

    move v6, v1

    :goto_0
    if-lez v6, :cond_3

    iget-object v7, v0, Lyads/eb3;->a:Lyads/wc0;

    invoke-interface {v7, v3, v4, v6}, Lyads/tc0;->c([BII)I

    move-result v7

    if-ne v7, v2, :cond_2

    :goto_1
    return v2

    :cond_2
    add-int/2addr v4, v7

    sub-int/2addr v6, v7

    goto :goto_0

    :cond_3
    :goto_2
    if-lez v1, :cond_4

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, v3, v4

    if-nez v4, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    if-lez v1, :cond_6

    iget-object v4, v0, Lyads/eb3;->c:Lyads/r15;

    new-instance v6, Lyads/os4;

    invoke-direct {v6, v3, v1}, Lyads/os4;-><init>([BI)V

    iget-boolean v1, v4, Lyads/r15;->l:Z

    if-nez v1, :cond_5

    iget-wide v7, v4, Lyads/r15;->i:J

    :goto_3
    move-wide v10, v7

    goto :goto_4

    :cond_5
    iget-object v1, v4, Lyads/r15;->m:Lyads/v15;

    invoke-virtual {v1, v5}, Lyads/v15;->a(Z)J

    move-result-wide v7

    iget-wide v9, v4, Lyads/r15;->i:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_3

    :goto_4
    iget v1, v6, Lyads/os4;->c:I

    iget v3, v6, Lyads/os4;->b:I

    sub-int v13, v1, v3

    iget-object v9, v4, Lyads/r15;->k:Lyads/lc5;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v13, v6}, Lyads/lc5;->a(ILyads/os4;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x1

    invoke-virtual/range {v9 .. v15}, Lyads/lc5;->a(JIIILyads/j06;)V

    iput-boolean v5, v4, Lyads/r15;->l:Z

    :cond_6
    :goto_5
    iget v1, v0, Lyads/eb3;->b:I

    iput v1, v0, Lyads/eb3;->e:I

    :cond_7
    iget-object v3, v0, Lyads/eb3;->a:Lyads/wc0;

    move/from16 v4, p3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-interface {v3, v4, v5, v1}, Lyads/tc0;->c([BII)I

    move-result v1

    if-eq v1, v2, :cond_8

    iget v2, v0, Lyads/eb3;->e:I

    sub-int/2addr v2, v1

    iput v2, v0, Lyads/eb3;->e:I

    :cond_8
    return v1
.end method

.method public final close()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final d()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lyads/eb3;->a:Lyads/wc0;

    invoke-interface {p0}, Lyads/wc0;->d()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
