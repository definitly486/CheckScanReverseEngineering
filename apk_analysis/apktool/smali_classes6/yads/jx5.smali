.class public final Lyads/jx5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final s:Ljava/lang/Object;

.field public static final t:Ljava/lang/Object;

.field public static final u:Lyads/p04;

.field public static final v:Lyads/jv;


# instance fields
.field public b:Ljava/lang/Object;

.field public d:Lyads/p04;

.field public e:Ljava/lang/Object;

.field public f:J

.field public g:J

.field public h:J

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Lyads/j04;

.field public m:Z

.field public n:J

.field public o:J

.field public p:I

.field public q:I

.field public r:J


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/jx5;->s:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/jx5;->t:Ljava/lang/Object;

    new-instance v0, Lyads/e04;

    invoke-direct {v0}, Lyads/e04;-><init>()V

    sget-object v1, Lyads/oe3;->c:Lyads/le3;

    sget-object v1, Lyads/k55;->f:Lyads/k55;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v7, Lyads/k55;->f:Lyads/k55;

    sget-object v14, Lyads/m04;->d:Lyads/m04;

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eqz v3, :cond_0

    new-instance v2, Lyads/k04;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lyads/k04;-><init>(Landroid/net/Uri;Lyads/i04;Ljava/util/List;Ljava/lang/String;Lyads/oe3;)V

    :goto_0
    move-object v11, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    new-instance v8, Lyads/p04;

    new-instance v10, Lyads/g04;

    invoke-direct {v10, v0}, Lyads/g04;-><init>(Lyads/e04;)V

    new-instance v12, Lyads/j04;

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const v22, -0x800001

    const v23, -0x800001

    move-object v15, v12

    invoke-direct/range {v15 .. v23}, Lyads/j04;-><init>(JJJFF)V

    sget-object v13, Lyads/t04;->H:Lyads/t04;

    const-string v9, "com.monetization.ads.exoplayer2.Timeline"

    invoke-direct/range {v8 .. v14}, Lyads/p04;-><init>(Ljava/lang/String;Lyads/g04;Lyads/k04;Lyads/j04;Lyads/t04;Lyads/m04;)V

    sput-object v8, Lyads/jx5;->u:Lyads/p04;

    new-instance v0, Lgg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/jx5;->v:Lyads/jv;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lyads/jx5;->s:Ljava/lang/Object;

    iput-object v0, p0, Lyads/jx5;->b:Ljava/lang/Object;

    sget-object v0, Lyads/jx5;->u:Lyads/p04;

    iput-object v0, p0, Lyads/jx5;->d:Lyads/p04;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lyads/jx5;
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/16 v2, 0x24

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v4, Lyads/p04;->h:Lyads/jv;

    invoke-interface {v4, v1}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object v1

    check-cast v1, Lyads/p04;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    const/4 v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const/4 v1, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const/4 v1, 0x4

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const/4 v1, 0x5

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const/4 v1, 0x6

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const/4 v1, 0x7

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v3, Lyads/j04;->h:Lyads/jv;

    invoke-interface {v3, v1}, Lyads/jv;->a(Landroid/os/Bundle;)Lyads/kv;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lyads/j04;

    :cond_1
    move-object/from16 v16, v3

    const/16 v1, 0x8

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v3, 0x9

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v17, v8

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v3, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    const/16 v3, 0xa

    invoke-static {v3, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const/16 v5, 0xb

    invoke-static {v5, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v0, v5, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    const/16 v5, 0xc

    invoke-static {v5, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    const/16 v5, 0xd

    invoke-static {v5, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7, v8}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v23

    move-wide/from16 v8, v17

    move-wide/from16 v17, v19

    move-wide/from16 v19, v3

    new-instance v4, Lyads/jx5;

    invoke-direct {v4}, Lyads/jx5;-><init>()V

    sget-object v5, Lyads/jx5;->t:Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v24}, Lyads/jx5;->a(Ljava/lang/Object;Lyads/p04;Ljava/lang/Object;JJJZZLyads/j04;JJIIJ)Lyads/jx5;

    iput-boolean v1, v4, Lyads/jx5;->m:Z

    return-object v4
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lyads/p04;Ljava/lang/Object;JJJZZLyads/j04;JJIIJ)Lyads/jx5;
    .locals 0

    .line 187
    iput-object p1, p0, Lyads/jx5;->b:Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    sget-object p2, Lyads/jx5;->u:Lyads/p04;

    :goto_0
    iput-object p2, p0, Lyads/jx5;->d:Lyads/p04;

    .line 189
    iput-object p3, p0, Lyads/jx5;->e:Ljava/lang/Object;

    .line 190
    iput-wide p4, p0, Lyads/jx5;->f:J

    .line 191
    iput-wide p6, p0, Lyads/jx5;->g:J

    .line 192
    iput-wide p8, p0, Lyads/jx5;->h:J

    .line 193
    iput-boolean p10, p0, Lyads/jx5;->i:Z

    .line 194
    iput-boolean p11, p0, Lyads/jx5;->j:Z

    const/4 p1, 0x0

    if-eqz p12, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    move p2, p1

    .line 195
    :goto_1
    iput-boolean p2, p0, Lyads/jx5;->k:Z

    .line 196
    iput-object p12, p0, Lyads/jx5;->l:Lyads/j04;

    .line 197
    iput-wide p13, p0, Lyads/jx5;->n:J

    move-wide p2, p15

    .line 198
    iput-wide p2, p0, Lyads/jx5;->o:J

    move/from16 p2, p17

    .line 199
    iput p2, p0, Lyads/jx5;->p:I

    move/from16 p2, p18

    .line 200
    iput p2, p0, Lyads/jx5;->q:I

    move-wide/from16 p2, p19

    .line 201
    iput-wide p2, p0, Lyads/jx5;->r:J

    .line 202
    iput-boolean p1, p0, Lyads/jx5;->m:Z

    return-object p0
.end method

.method public final a()Z
    .locals 4

    .line 185
    iget-boolean v0, p0, Lyads/jx5;->k:Z

    iget-object p0, p0, Lyads/jx5;->l:Lyads/j04;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-ne v0, v3, :cond_2

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v1

    .line 186
    :cond_2
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return p0
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

    const-class v3, Lyads/jx5;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lyads/jx5;

    iget-object v2, p0, Lyads/jx5;->b:Ljava/lang/Object;

    iget-object v3, p1, Lyads/jx5;->b:Ljava/lang/Object;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/jx5;->d:Lyads/p04;

    iget-object v3, p1, Lyads/jx5;->d:Lyads/p04;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/jx5;->e:Ljava/lang/Object;

    iget-object v3, p1, Lyads/jx5;->e:Ljava/lang/Object;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lyads/jx5;->l:Lyads/j04;

    iget-object v3, p1, Lyads/jx5;->l:Lyads/j04;

    invoke-static {v2, v3}, Lyads/u56;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lyads/jx5;->f:J

    iget-wide v4, p1, Lyads/jx5;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lyads/jx5;->g:J

    iget-wide v4, p1, Lyads/jx5;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lyads/jx5;->h:J

    iget-wide v4, p1, Lyads/jx5;->h:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lyads/jx5;->i:Z

    iget-boolean v3, p1, Lyads/jx5;->i:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lyads/jx5;->j:Z

    iget-boolean v3, p1, Lyads/jx5;->j:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lyads/jx5;->m:Z

    iget-boolean v3, p1, Lyads/jx5;->m:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lyads/jx5;->n:J

    iget-wide v4, p1, Lyads/jx5;->n:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lyads/jx5;->o:J

    iget-wide v4, p1, Lyads/jx5;->o:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lyads/jx5;->p:I

    iget v3, p1, Lyads/jx5;->p:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lyads/jx5;->q:I

    iget v3, p1, Lyads/jx5;->q:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lyads/jx5;->r:J

    iget-wide p0, p1, Lyads/jx5;->r:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lyads/jx5;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lyads/jx5;->d:Lyads/p04;

    invoke-virtual {v1}, Lyads/p04;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lyads/jx5;->e:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lyads/jx5;->l:Lyads/j04;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lyads/j04;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lyads/jx5;->f:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lyads/jx5;->g:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lyads/jx5;->h:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lyads/jx5;->i:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lyads/jx5;->j:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v2, p0, Lyads/jx5;->m:Z

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lyads/jx5;->n:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lyads/jx5;->o:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lyads/jx5;->p:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lyads/jx5;->q:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lyads/jx5;->r:J

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int p0, v2

    add-int/2addr v1, p0

    return v1
.end method
