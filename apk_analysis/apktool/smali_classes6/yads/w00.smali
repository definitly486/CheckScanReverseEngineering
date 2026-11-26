.class public final Lyads/w00;
.super Lyads/h50;
.source "SourceFile"


# instance fields
.field public final k:Lyads/cs;

.field public final l:J

.field public final m:J

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Ljava/util/ArrayList;

.field public final r:Lyads/jx5;

.field public s:Lyads/u00;

.field public t:Lyads/v00;

.field public u:J

.field public v:J


# direct methods
.method public constructor <init>(Lyads/cs;JJZZZ)V
    .locals 2

    invoke-direct {p0}, Lyads/h50;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lyads/w00;->k:Lyads/cs;

    iput-wide p2, p0, Lyads/w00;->l:J

    iput-wide p4, p0, Lyads/w00;->m:J

    iput-boolean p6, p0, Lyads/w00;->n:Z

    iput-boolean p7, p0, Lyads/w00;->o:Z

    iput-boolean p8, p0, Lyads/w00;->p:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/w00;->q:Ljava/util/ArrayList;

    new-instance p1, Lyads/jx5;

    invoke-direct {p1}, Lyads/jx5;-><init>()V

    iput-object p1, p0, Lyads/w00;->r:Lyads/jx5;

    return-void

    :cond_0
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(Lyads/h14;Lyads/aj0;J)Lyads/z04;
    .locals 7

    .line 44
    new-instance v0, Lyads/t00;

    iget-object v1, p0, Lyads/w00;->k:Lyads/cs;

    .line 45
    invoke-virtual {v1, p1, p2, p3, p4}, Lyads/cs;->a(Lyads/h14;Lyads/aj0;J)Lyads/z04;

    move-result-object v1

    iget-boolean v2, p0, Lyads/w00;->n:Z

    iget-wide v3, p0, Lyads/w00;->u:J

    iget-wide v5, p0, Lyads/w00;->v:J

    invoke-direct/range {v0 .. v6}, Lyads/t00;-><init>(Lyads/z04;ZJJ)V

    .line 46
    iget-object p0, p0, Lyads/w00;->q:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final a(Lyads/p16;)V
    .locals 1

    .line 47
    iput-object p1, p0, Lyads/h50;->j:Lyads/p16;

    const/4 p1, 0x0

    .line 48
    invoke-static {p1}, Lyads/u56;->a(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    .line 49
    iput-object v0, p0, Lyads/h50;->i:Landroid/os/Handler;

    .line 50
    iget-object v0, p0, Lyads/w00;->k:Lyads/cs;

    invoke-virtual {p0, p1, v0}, Lyads/h50;->a(Ljava/lang/Object;Lyads/cs;)V

    return-void
.end method

.method public final a(Lyads/z04;)V
    .locals 1

    iget-object v0, p0, Lyads/w00;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lyads/w00;->k:Lyads/cs;

    check-cast p1, Lyads/t00;

    iget-object p1, p1, Lyads/t00;->b:Lyads/z04;

    invoke-virtual {v0, p1}, Lyads/cs;->a(Lyads/z04;)V

    iget-object p1, p0, Lyads/w00;->q:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lyads/w00;->o:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lyads/w00;->s:Lyads/u00;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lyads/c03;->c:Lyads/kx5;

    invoke-virtual {p0, p1}, Lyads/w00;->b(Lyads/kx5;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final b(Ljava/lang/Object;Lyads/cs;Lyads/kx5;)V
    .locals 0

    .line 150
    check-cast p1, Ljava/lang/Void;

    .line 151
    iget-object p1, p0, Lyads/w00;->t:Lyads/v00;

    if-eqz p1, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-virtual {p0, p3}, Lyads/w00;->b(Lyads/kx5;)V

    return-void
.end method

.method public final b(Lyads/kx5;)V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lyads/w00;->r:Lyads/jx5;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v6, p1

    invoke-virtual {v6, v4, v0, v2, v3}, Lyads/kx5;->a(ILyads/jx5;J)Lyads/jx5;

    iget-object v0, v1, Lyads/w00;->r:Lyads/jx5;

    iget-wide v2, v0, Lyads/jx5;->r:J

    iget-object v0, v1, Lyads/w00;->s:Lyads/u00;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Lyads/w00;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lyads/w00;->o:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v9, v1, Lyads/w00;->u:J

    sub-long/2addr v9, v2

    iget-wide v11, v1, Lyads/w00;->m:J

    cmp-long v0, v11, v7

    if-nez v0, :cond_1

    :goto_0
    move-wide v15, v9

    move-wide v9, v7

    move-wide v7, v15

    goto :goto_5

    :cond_1
    iget-wide v7, v1, Lyads/w00;->v:J

    sub-long/2addr v7, v2

    goto :goto_0

    :cond_2
    :goto_1
    iget-wide v9, v1, Lyads/w00;->l:J

    iget-wide v11, v1, Lyads/w00;->m:J

    iget-boolean v0, v1, Lyads/w00;->p:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Lyads/w00;->r:Lyads/jx5;

    iget-wide v13, v0, Lyads/jx5;->n:J

    add-long/2addr v9, v13

    add-long/2addr v13, v11

    goto :goto_2

    :cond_3
    move-wide v13, v11

    :goto_2
    add-long v4, v2, v9

    iput-wide v4, v1, Lyads/w00;->u:J

    cmp-long v0, v11, v7

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    add-long v7, v2, v13

    :goto_3
    iput-wide v7, v1, Lyads/w00;->v:J

    iget-object v0, v1, Lyads/w00;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_5

    iget-object v3, v1, Lyads/w00;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/t00;

    iget-wide v4, v1, Lyads/w00;->u:J

    iget-wide v7, v1, Lyads/w00;->v:J

    iput-wide v4, v3, Lyads/t00;->f:J

    iput-wide v7, v3, Lyads/t00;->g:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    move-wide v7, v9

    move-wide v9, v13

    :goto_5
    :try_start_0
    new-instance v5, Lyads/u00;

    invoke-direct/range {v5 .. v10}, Lyads/u00;-><init>(Lyads/kx5;JJ)V

    iput-object v5, v1, Lyads/w00;->s:Lyads/u00;
    :try_end_0
    .catch Lyads/v00; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1, v5}, Lyads/cs;->a(Lyads/kx5;)V

    return-void

    :catch_0
    move-exception v0

    iput-object v0, v1, Lyads/w00;->t:Lyads/v00;

    const/4 v4, 0x0

    :goto_6
    iget-object v0, v1, Lyads/w00;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    iget-object v0, v1, Lyads/w00;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/t00;

    iget-object v2, v1, Lyads/w00;->t:Lyads/v00;

    iput-object v2, v0, Lyads/t00;->h:Lyads/v00;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method public final c()Lyads/p04;
    .locals 0

    iget-object p0, p0, Lyads/w00;->k:Lyads/cs;

    invoke-virtual {p0}, Lyads/cs;->c()Lyads/p04;

    move-result-object p0

    return-object p0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lyads/w00;->t:Lyads/v00;

    if-nez v0, :cond_0

    invoke-super {p0}, Lyads/h50;->d()V

    return-void

    :cond_0
    throw v0
.end method

.method public final e()V
    .locals 1

    invoke-super {p0}, Lyads/h50;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/w00;->t:Lyads/v00;

    iput-object v0, p0, Lyads/w00;->s:Lyads/u00;

    return-void
.end method
