.class public final Lyads/y15;
.super Lyads/cs;
.source "SourceFile"


# instance fields
.field public final h:Lyads/p04;

.field public final i:Lyads/k04;

.field public final j:Lyads/vc0;

.field public final k:Lyads/q15;

.field public final l:Lyads/xl2;

.field public final m:Lyads/ll0;

.field public final n:I

.field public o:Z

.field public p:J

.field public q:Z

.field public r:Z

.field public s:Lyads/p16;


# direct methods
.method public constructor <init>(Lyads/p04;Lyads/vc0;Lyads/q15;Lyads/xl2;Lyads/ll0;I)V
    .locals 1

    invoke-direct {p0}, Lyads/cs;-><init>()V

    iget-object v0, p1, Lyads/p04;->c:Lyads/k04;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lyads/y15;->i:Lyads/k04;

    iput-object p1, p0, Lyads/y15;->h:Lyads/p04;

    iput-object p2, p0, Lyads/y15;->j:Lyads/vc0;

    iput-object p3, p0, Lyads/y15;->k:Lyads/q15;

    iput-object p4, p0, Lyads/y15;->l:Lyads/xl2;

    iput-object p5, p0, Lyads/y15;->m:Lyads/ll0;

    iput p6, p0, Lyads/y15;->n:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/y15;->o:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lyads/y15;->p:J

    return-void
.end method


# virtual methods
.method public final a(Lyads/h14;Lyads/aj0;J)Lyads/z04;
    .locals 14

    iget-object v0, p0, Lyads/y15;->j:Lyads/vc0;

    invoke-interface {v0}, Lyads/vc0;->a()Lyads/wc0;

    move-result-object v3

    iget-object v0, p0, Lyads/y15;->s:Lyads/p16;

    if-eqz v0, :cond_0

    invoke-interface {v3, v0}, Lyads/wc0;->a(Lyads/p16;)V

    :cond_0
    new-instance v1, Lyads/v15;

    iget-object v0, p0, Lyads/y15;->i:Lyads/k04;

    iget-object v2, v0, Lyads/k04;->a:Landroid/net/Uri;

    iget-object v0, p0, Lyads/y15;->k:Lyads/q15;

    iget-object v4, p0, Lyads/cs;->g:Lyads/rw4;

    if-eqz v4, :cond_1

    check-cast v0, Lvp0;

    iget-object v0, v0, Lvp0;->c:Ljava/lang/Object;

    check-cast v0, Lyads/bt2;

    invoke-static {v0, v4}, Lyads/x15;->a(Lyads/bt2;Lyads/rw4;)Lyads/ov;

    move-result-object v4

    iget-object v5, p0, Lyads/y15;->l:Lyads/xl2;

    iget-object v0, p0, Lyads/cs;->d:Lyads/tl2;

    new-instance v6, Lyads/tl2;

    iget-object v0, v0, Lyads/tl2;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7, p1}, Lyads/tl2;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILyads/h14;)V

    iget-object v7, p0, Lyads/y15;->m:Lyads/ll0;

    iget-object v0, p0, Lyads/cs;->c:Lyads/k14;

    new-instance v8, Lyads/k14;

    iget-object v9, v0, Lyads/k14;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v11, p1

    invoke-direct/range {v8 .. v13}, Lyads/k14;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILyads/h14;J)V

    iget-object v0, p0, Lyads/y15;->i:Lyads/k04;

    iget-object v11, v0, Lyads/k04;->c:Ljava/lang/String;

    iget v12, p0, Lyads/y15;->n:I

    move-object v9, p0

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v12}, Lyads/v15;-><init>(Landroid/net/Uri;Lyads/wc0;Lyads/ov;Lyads/xl2;Lyads/tl2;Lyads/ll0;Lyads/k14;Lyads/y15;Lyads/aj0;Ljava/lang/String;I)V

    return-object v1

    :cond_1
    invoke-static {}, Lud;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(Lyads/p16;)V
    .locals 8

    .line 80
    iput-object p1, p0, Lyads/y15;->s:Lyads/p16;

    .line 81
    iget-object p1, p0, Lyads/y15;->l:Lyads/xl2;

    invoke-interface {p1}, Lyads/xl2;->prepare()V

    .line 82
    iget-object p1, p0, Lyads/y15;->l:Lyads/xl2;

    .line 83
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    iget-object v1, p0, Lyads/cs;->g:Lyads/rw4;

    if-eqz v1, :cond_1

    .line 86
    invoke-interface {p1, v0, v1}, Lyads/xl2;->a(Landroid/os/Looper;Lyads/rw4;)V

    .line 87
    new-instance v2, Lyads/jl5;

    iget-wide v3, p0, Lyads/y15;->p:J

    iget-boolean v5, p0, Lyads/y15;->q:Z

    iget-boolean v6, p0, Lyads/y15;->r:Z

    iget-object v7, p0, Lyads/y15;->h:Lyads/p04;

    invoke-direct/range {v2 .. v7}, Lyads/jl5;-><init>(JZZLyads/p04;)V

    .line 88
    iget-boolean p1, p0, Lyads/y15;->o:Z

    if-eqz p1, :cond_0

    .line 89
    new-instance p1, Lyads/w15;

    invoke-direct {p1, v2}, Lyads/w15;-><init>(Lyads/jl5;)V

    move-object v2, p1

    .line 90
    :cond_0
    invoke-virtual {p0, v2}, Lyads/cs;->a(Lyads/kx5;)V

    return-void

    .line 91
    :cond_1
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/z04;)V
    .locals 3

    .line 92
    check-cast p1, Lyads/v15;

    .line 93
    iget-boolean p0, p1, Lyads/v15;->w:Z

    if-eqz p0, :cond_0

    .line 94
    iget-object p0, p1, Lyads/v15;->t:[Lyads/lc5;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 95
    invoke-virtual {v2}, Lyads/lc5;->a()V

    .line 96
    invoke-virtual {v2}, Lyads/lc5;->d()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget-object p0, p1, Lyads/v15;->l:Lyads/ru3;

    invoke-virtual {p0, p1}, Lyads/ru3;->a(Lyads/ou3;)V

    .line 98
    iget-object p0, p1, Lyads/v15;->q:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 99
    iput-object v0, p1, Lyads/v15;->r:Lyads/y04;

    const/4 p0, 0x1

    .line 100
    iput-boolean p0, p1, Lyads/v15;->M:Z

    return-void
.end method

.method public final c()Lyads/p04;
    .locals 0

    iget-object p0, p0, Lyads/y15;->h:Lyads/p04;

    return-object p0
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lyads/y15;->l:Lyads/xl2;

    invoke-interface {p0}, Lyads/xl2;->release()V

    return-void
.end method
