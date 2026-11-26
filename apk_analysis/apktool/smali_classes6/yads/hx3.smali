.class public final Lyads/hx3;
.super Lyads/h50;
.source "SourceFile"


# instance fields
.field public final k:Lyads/cs;

.field public final l:Z

.field public final m:Lyads/jx5;

.field public final n:Lyads/hx5;

.field public o:Lyads/fx3;

.field public p:Lyads/ex3;

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Lyads/cs;Z)V
    .locals 2

    invoke-direct {p0}, Lyads/h50;-><init>()V

    iput-object p1, p0, Lyads/hx3;->k:Lyads/cs;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lyads/hx3;->l:Z

    new-instance p2, Lyads/jx5;

    invoke-direct {p2}, Lyads/jx5;-><init>()V

    iput-object p2, p0, Lyads/hx3;->m:Lyads/jx5;

    new-instance p2, Lyads/hx5;

    invoke-direct {p2}, Lyads/hx5;-><init>()V

    iput-object p2, p0, Lyads/hx3;->n:Lyads/hx5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lyads/cs;->c()Lyads/p04;

    move-result-object p1

    new-instance p2, Lyads/fx3;

    new-instance v0, Lyads/gx3;

    invoke-direct {v0, p1}, Lyads/gx3;-><init>(Lyads/p04;)V

    sget-object p1, Lyads/jx5;->s:Ljava/lang/Object;

    sget-object v1, Lyads/fx3;->f:Ljava/lang/Object;

    invoke-direct {p2, v0, p1, v1}, Lyads/fx3;-><init>(Lyads/kx5;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lyads/hx3;->o:Lyads/fx3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lyads/h14;)Lyads/h14;
    .locals 0

    .line 52
    check-cast p1, Ljava/lang/Void;

    .line 53
    iget-object p1, p2, Lyads/b14;->a:Ljava/lang/Object;

    .line 54
    iget-object p0, p0, Lyads/hx3;->o:Lyads/fx3;

    iget-object p0, p0, Lyads/fx3;->e:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 55
    sget-object p1, Lyads/fx3;->f:Ljava/lang/Object;

    .line 56
    :cond_0
    invoke-virtual {p2, p1}, Lyads/h14;->a(Ljava/lang/Object;)Lyads/h14;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic a(Lyads/h14;Lyads/aj0;J)Lyads/z04;
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/hx3;->b(Lyads/h14;Lyads/aj0;J)Lyads/ex3;

    move-result-object p0

    return-object p0
.end method

.method public final a(J)V
    .locals 5

    iget-object v0, p0, Lyads/hx3;->p:Lyads/ex3;

    iget-object v1, p0, Lyads/hx3;->o:Lyads/fx3;

    iget-object v2, v0, Lyads/ex3;->b:Lyads/h14;

    iget-object v2, v2, Lyads/b14;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lyads/fx3;->a(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lyads/hx3;->o:Lyads/fx3;

    iget-object p0, p0, Lyads/hx3;->n:Lyads/hx5;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p0, v3}, Lyads/fx3;->a(ILyads/hx5;Z)Lyads/hx5;

    move-result-object p0

    iget-wide v1, p0, Lyads/hx5;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v1, v3

    if-eqz p0, :cond_1

    cmp-long p0, p1, v1

    if-ltz p0, :cond_1

    const-wide/16 p0, 0x1

    sub-long/2addr v1, p0

    const-wide/16 p0, 0x0

    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_1
    iput-wide p1, v0, Lyads/ex3;->i:J

    return-void
.end method

.method public final a(Lyads/p16;)V
    .locals 1

    .line 57
    iput-object p1, p0, Lyads/h50;->j:Lyads/p16;

    const/4 p1, 0x0

    .line 58
    invoke-static {p1}, Lyads/u56;->a(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    .line 59
    iput-object v0, p0, Lyads/h50;->i:Landroid/os/Handler;

    .line 60
    iget-boolean v0, p0, Lyads/hx3;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lyads/hx3;->q:Z

    .line 62
    iget-object v0, p0, Lyads/hx3;->k:Lyads/cs;

    invoke-virtual {p0, p1, v0}, Lyads/h50;->a(Ljava/lang/Object;Lyads/cs;)V

    :cond_0
    return-void
.end method

.method public final a(Lyads/z04;)V
    .locals 2

    .line 63
    move-object v0, p1

    check-cast v0, Lyads/ex3;

    .line 64
    iget-object v1, v0, Lyads/ex3;->f:Lyads/z04;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, v0, Lyads/ex3;->e:Lyads/cs;

    .line 66
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    iget-object v0, v0, Lyads/ex3;->f:Lyads/z04;

    invoke-virtual {v1, v0}, Lyads/cs;->a(Lyads/z04;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lyads/hx3;->p:Lyads/ex3;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lyads/hx3;->p:Lyads/ex3;

    :cond_1
    return-void
.end method

.method public final b(Lyads/h14;Lyads/aj0;J)Lyads/ex3;
    .locals 1

    .line 225
    new-instance v0, Lyads/ex3;

    invoke-direct {v0, p1, p2, p3, p4}, Lyads/ex3;-><init>(Lyads/h14;Lyads/aj0;J)V

    .line 226
    iget-object p2, p0, Lyads/hx3;->k:Lyads/cs;

    .line 227
    iget-object p3, v0, Lyads/ex3;->e:Lyads/cs;

    const/4 p4, 0x0

    if-nez p3, :cond_3

    .line 228
    iput-object p2, v0, Lyads/ex3;->e:Lyads/cs;

    .line 229
    iget-boolean p3, p0, Lyads/hx3;->r:Z

    if-eqz p3, :cond_1

    .line 230
    iget-object p2, p1, Lyads/b14;->a:Ljava/lang/Object;

    .line 231
    iget-object p3, p0, Lyads/hx3;->o:Lyads/fx3;

    iget-object p3, p3, Lyads/fx3;->e:Ljava/lang/Object;

    if-eqz p3, :cond_0

    sget-object p3, Lyads/fx3;->f:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 232
    iget-object p0, p0, Lyads/hx3;->o:Lyads/fx3;

    iget-object p2, p0, Lyads/fx3;->e:Ljava/lang/Object;

    .line 233
    :cond_0
    invoke-virtual {p1, p2}, Lyads/h14;->a(Ljava/lang/Object;)Lyads/h14;

    move-result-object p0

    .line 234
    invoke-virtual {v0, p0}, Lyads/ex3;->a(Lyads/h14;)V

    return-object v0

    .line 235
    :cond_1
    iput-object v0, p0, Lyads/hx3;->p:Lyads/ex3;

    .line 236
    iget-boolean p1, p0, Lyads/hx3;->q:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 237
    iput-boolean p1, p0, Lyads/hx3;->q:Z

    .line 238
    invoke-virtual {p0, p4, p2}, Lyads/h50;->a(Ljava/lang/Object;Lyads/cs;)V

    :cond_2
    return-object v0

    .line 239
    :cond_3
    invoke-static {}, Lud;->g()V

    return-object p4
.end method

.method public final b(Ljava/lang/Object;Lyads/cs;Lyads/kx5;)V
    .locals 14

    move-object/from16 v0, p3

    move-object v1, p1

    check-cast v1, Ljava/lang/Void;

    iget-boolean v1, p0, Lyads/hx3;->r:Z

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lyads/hx3;->o:Lyads/fx3;

    new-instance v2, Lyads/fx3;

    iget-object v3, v1, Lyads/fx3;->d:Ljava/lang/Object;

    iget-object v1, v1, Lyads/fx3;->e:Ljava/lang/Object;

    invoke-direct {v2, v0, v3, v1}, Lyads/fx3;-><init>(Lyads/kx5;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lyads/hx3;->o:Lyads/fx3;

    iget-object v0, p0, Lyads/hx3;->p:Lyads/ex3;

    if-eqz v0, :cond_6

    iget-wide v0, v0, Lyads/ex3;->i:J

    invoke-virtual {p0, v0, v1}, Lyads/hx3;->a(J)V

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Lyads/kx5;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lyads/hx3;->s:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lyads/hx3;->o:Lyads/fx3;

    new-instance v2, Lyads/fx3;

    iget-object v3, v1, Lyads/fx3;->d:Ljava/lang/Object;

    iget-object v1, v1, Lyads/fx3;->e:Ljava/lang/Object;

    invoke-direct {v2, v0, v3, v1}, Lyads/fx3;-><init>(Lyads/kx5;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lyads/jx5;->s:Ljava/lang/Object;

    sget-object v2, Lyads/fx3;->f:Ljava/lang/Object;

    new-instance v3, Lyads/fx3;

    invoke-direct {v3, v0, v1, v2}, Lyads/fx3;-><init>(Lyads/kx5;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lyads/hx3;->o:Lyads/fx3;

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lyads/hx3;->m:Lyads/jx5;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    iget-object v1, p0, Lyads/hx3;->m:Lyads/jx5;

    iget-wide v7, v1, Lyads/jx5;->n:J

    iget-object v9, v1, Lyads/jx5;->b:Ljava/lang/Object;

    iget-object v1, p0, Lyads/hx3;->p:Lyads/ex3;

    if-eqz v1, :cond_3

    iget-wide v10, v1, Lyads/ex3;->c:J

    iget-object v5, p0, Lyads/hx3;->o:Lyads/fx3;

    iget-object v1, v1, Lyads/ex3;->b:Lyads/h14;

    iget-object v1, v1, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v12, p0, Lyads/hx3;->n:Lyads/hx5;

    invoke-virtual {v5, v1}, Lyads/fx3;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v5, v1, v12, v6}, Lyads/fx3;->a(ILyads/hx5;Z)Lyads/hx5;

    iget-object v1, p0, Lyads/hx3;->n:Lyads/hx5;

    iget-wide v12, v1, Lyads/hx5;->f:J

    add-long/2addr v12, v10

    iget-object v1, p0, Lyads/hx3;->o:Lyads/fx3;

    iget-object v5, p0, Lyads/hx3;->m:Lyads/jx5;

    invoke-virtual {v1, v2, v5, v3, v4}, Lyads/fx3;->a(ILyads/jx5;J)Lyads/jx5;

    move-result-object v1

    iget-wide v1, v1, Lyads/jx5;->n:J

    cmp-long v1, v12, v1

    if-eqz v1, :cond_3

    move-wide v4, v12

    goto :goto_1

    :cond_3
    move-wide v4, v7

    :goto_1
    iget-object v1, p0, Lyads/hx3;->m:Lyads/jx5;

    iget-object v2, p0, Lyads/hx3;->n:Lyads/hx5;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lyads/kx5;->a(Lyads/jx5;Lyads/hx5;IJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v1, p0, Lyads/hx3;->s:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lyads/hx3;->o:Lyads/fx3;

    new-instance v2, Lyads/fx3;

    iget-object v5, v1, Lyads/fx3;->d:Ljava/lang/Object;

    iget-object v1, v1, Lyads/fx3;->e:Ljava/lang/Object;

    invoke-direct {v2, v0, v5, v1}, Lyads/fx3;-><init>(Lyads/kx5;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance v1, Lyads/fx3;

    invoke-direct {v1, v0, v9, v2}, Lyads/fx3;-><init>(Lyads/kx5;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v1

    :goto_2
    iput-object v2, p0, Lyads/hx3;->o:Lyads/fx3;

    iget-object v0, p0, Lyads/hx3;->p:Lyads/ex3;

    if-eqz v0, :cond_6

    invoke-virtual {p0, v3, v4}, Lyads/hx3;->a(J)V

    iget-object v0, v0, Lyads/ex3;->b:Lyads/h14;

    iget-object v1, v0, Lyads/b14;->a:Ljava/lang/Object;

    iget-object v2, p0, Lyads/hx3;->o:Lyads/fx3;

    iget-object v2, v2, Lyads/fx3;->e:Ljava/lang/Object;

    if-eqz v2, :cond_5

    sget-object v2, Lyads/fx3;->f:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lyads/hx3;->o:Lyads/fx3;

    iget-object v1, v1, Lyads/fx3;->e:Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0, v1}, Lyads/h14;->a(Ljava/lang/Object;)Lyads/h14;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x0

    :goto_4
    iput-boolean v6, p0, Lyads/hx3;->s:Z

    iput-boolean v6, p0, Lyads/hx3;->r:Z

    iget-object v1, p0, Lyads/hx3;->o:Lyads/fx3;

    invoke-virtual {p0, v1}, Lyads/cs;->a(Lyads/kx5;)V

    if-eqz v0, :cond_7

    iget-object p0, p0, Lyads/hx3;->p:Lyads/ex3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lyads/ex3;->a(Lyads/h14;)V

    :cond_7
    return-void
.end method

.method public final c()Lyads/p04;
    .locals 0

    iget-object p0, p0, Lyads/hx3;->k:Lyads/cs;

    invoke-virtual {p0}, Lyads/cs;->c()Lyads/p04;

    move-result-object p0

    return-object p0
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/hx3;->r:Z

    iput-boolean v0, p0, Lyads/hx3;->q:Z

    invoke-super {p0}, Lyads/h50;->e()V

    return-void
.end method
