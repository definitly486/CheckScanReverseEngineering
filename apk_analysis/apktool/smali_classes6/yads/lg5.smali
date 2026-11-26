.class public final Lyads/lg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/go;


# instance fields
.field public final a:Lyads/yn;

.field public final b:Lyads/dp;

.field public final c:Lyads/fk4;

.field public final d:Lyads/qo;

.field public final e:Lyads/vh4;

.field public final f:Lyads/qd5;

.field public final g:Lyads/di4;

.field public final h:Ly22;

.field public final i:Lyads/zg5;

.field public final j:Lyads/ao;

.field public final k:Lyads/xf4;

.field public final l:Lyads/c60;

.field public final m:Lyads/wf6;

.field public final n:Landroid/content/Context;

.field public final o:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public p:Lyads/d9;

.field public q:Lyads/pg4;

.field public r:Z

.field public s:Lyads/po;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/yn;Lyads/dp;Lyads/bf5;)V
    .locals 15

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Lyads/fk4;

    iget-object v0, v3, Lyads/dp;->b:Lyads/e4;

    iget-object v1, v3, Lyads/dp;->a:Lyads/t5;

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    invoke-direct {v4, v5, v0, v1, v6}, Lyads/fk4;-><init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;)V

    new-instance v5, Lyads/qo;

    iget-object v0, v3, Lyads/dp;->b:Lyads/e4;

    iget-object v1, v3, Lyads/dp;->c:Lyads/bf5;

    invoke-direct {v5, v0, v1}, Lyads/qo;-><init>(Lyads/e4;Lyads/bf5;)V

    new-instance v6, Lyads/vh4;

    iget-object v0, v3, Lyads/dp;->b:Lyads/e4;

    invoke-direct {v6, v0}, Lyads/vh4;-><init>(Lyads/e4;)V

    new-instance v7, Lyads/qd5;

    iget-object v1, v3, Lyads/dp;->c:Lyads/bf5;

    invoke-direct {v7, v0, v1}, Lyads/qd5;-><init>(Lyads/e4;Lyads/bf5;)V

    new-instance v8, Lyads/di4;

    invoke-direct {v8, v2}, Lyads/di4;-><init>(Lyads/yn;)V

    new-instance v0, Lyads/i90;

    invoke-direct {v0}, Lyads/i90;-><init>()V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object v1

    invoke-static {v1, v0}, Lyads/xn;->a(Lhq1;Lyads/i90;)Ly22;

    move-result-object v9

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_0

    new-instance v0, Lyads/zg5;

    invoke-direct {v0}, Lyads/zg5;-><init>()V

    sput-object v0, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    :cond_1
    move-object v10, v0

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :goto_2
    new-instance v11, Lyads/ao;

    invoke-direct {v11}, Lyads/ao;-><init>()V

    new-instance v12, Lyads/xf4;

    invoke-direct {v12}, Lyads/xf4;-><init>()V

    new-instance v13, Lud1;

    const/4 v0, 0x3

    invoke-direct {v13, v2, v0}, Lud1;-><init>(Ljava/lang/Object;I)V

    new-instance v14, Lyads/wf6;

    invoke-direct {v14}, Lyads/wf6;-><init>()V

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v14}, Lyads/lg5;-><init>(Landroid/content/Context;Lyads/yn;Lyads/dp;Lyads/fk4;Lyads/qo;Lyads/vh4;Lyads/qd5;Lyads/di4;Ly22;Lyads/zg5;Lyads/ao;Lyads/xf4;Lyads/c60;Lyads/wf6;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lyads/yn;Lyads/dp;Lyads/fk4;Lyads/qo;Lyads/vh4;Lyads/qd5;Lyads/di4;Ly22;Lyads/zg5;Lyads/ao;Lyads/xf4;Lyads/c60;Lyads/wf6;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lyads/lg5;->a:Lyads/yn;

    .line 115
    iput-object p3, p0, Lyads/lg5;->b:Lyads/dp;

    .line 116
    iput-object p4, p0, Lyads/lg5;->c:Lyads/fk4;

    .line 117
    iput-object p5, p0, Lyads/lg5;->d:Lyads/qo;

    .line 118
    iput-object p6, p0, Lyads/lg5;->e:Lyads/vh4;

    .line 119
    iput-object p7, p0, Lyads/lg5;->f:Lyads/qd5;

    .line 120
    iput-object p8, p0, Lyads/lg5;->g:Lyads/di4;

    .line 121
    iput-object p9, p0, Lyads/lg5;->h:Ly22;

    .line 122
    iput-object p10, p0, Lyads/lg5;->i:Lyads/zg5;

    .line 123
    iput-object p11, p0, Lyads/lg5;->j:Lyads/ao;

    .line 124
    iput-object p12, p0, Lyads/lg5;->k:Lyads/xf4;

    .line 125
    iput-object p13, p0, Lyads/lg5;->l:Lyads/c60;

    .line 126
    iput-object p14, p0, Lyads/lg5;->m:Lyads/wf6;

    .line 127
    invoke-static {p1}, Lyads/w60;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/lg5;->n:Landroid/content/Context;

    .line 128
    new-instance p1, Lm1a;

    invoke-direct {p1, p0}, Lm1a;-><init>(Lyads/lg5;)V

    iput-object p1, p0, Lyads/lg5;->o:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method public static final a(Lyads/yn;)V
    .locals 0

    .line 144
    invoke-virtual {p0}, Lyads/yn;->c()V

    return-void
.end method

.method public static final a(Lyads/lg5;)Z
    .locals 3

    .line 124
    iget-object v0, p0, Lyads/lg5;->h:Ly22;

    new-instance v1, Lyads/jg5;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lyads/jg5;-><init>(Lyads/lg5;Le02;)V

    const/4 p0, 0x3

    .line 125
    invoke-static {v0, v2, v2, v1, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lyads/lg5;->k:Lyads/xf4;

    iget-object p0, p0, Lyads/lg5;->q:Lyads/pg4;

    invoke-virtual {v0, p0}, Lyads/xf4;->a(Lyads/pg4;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 3

    .line 127
    iget-object p1, p0, Lyads/lg5;->s:Lyads/po;

    if-eqz p1, :cond_1

    .line 128
    iget-object p1, p1, Lyads/po;->a:Lyads/oo;

    .line 129
    iget-object p1, p1, Lyads/oo;->e:Lyads/no;

    .line 130
    iget-object v0, p1, Lyads/no;->d:Lyads/e55;

    .line 131
    sget-object v1, Lyads/no;->e:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 132
    iget-object v0, v0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    .line 133
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 134
    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 135
    invoke-static {v0}, Lyads/fg6;->a(Landroid/view/View;)V

    .line 136
    :cond_0
    iget-object p1, p1, Lyads/no;->c:Lyads/on0;

    if-eqz p1, :cond_1

    .line 137
    invoke-interface {p1}, Lyads/on0;->c()V

    .line 138
    :cond_1
    iget-object p1, p0, Lyads/lg5;->c:Lyads/fk4;

    .line 139
    iget-object p1, p1, Lyads/fk4;->b:Lyads/df4;

    .line 140
    invoke-virtual {p1}, Lyads/df4;->a()V

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Lyads/lg5;->p:Lyads/d9;

    .line 142
    iput-object p1, p0, Lyads/lg5;->q:Lyads/pg4;

    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Lyads/lg5;->r:Z

    return-void
.end method

.method public final a(Landroid/content/Context;Lyads/d9;)V
    .locals 9

    iget-object v0, p0, Lyads/lg5;->b:Lyads/dp;

    iget-object v0, v0, Lyads/dp;->a:Lyads/t5;

    sget-object v1, Lyads/s5;->c:Lyads/s5;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    iget-object v0, p0, Lyads/lg5;->i:Lyads/zg5;

    invoke-virtual {v0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lyads/fe5;->E:Z

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lyads/lg5;->a:Lyads/yn;

    sget-object p1, Lyads/o8;->a:Lyads/m4;

    invoke-virtual {p0, p1}, Lyads/yn;->b(Lyads/m4;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lyads/lg5;->r:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lyads/lg5;->a:Lyads/yn;

    iget-object v0, v0, Lyads/pp;->c:Lyads/e4;

    iget-object v0, v0, Lyads/e4;->d:Lyads/tl5;

    iget-object v0, v0, Lyads/tl5;->a:Lyads/sl5;

    invoke-virtual {p2}, Lyads/d9;->c()Lyads/wx2;

    move-result-object v2

    iput-object p2, p0, Lyads/lg5;->p:Lyads/d9;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lyads/lg5;->j:Lyads/ao;

    invoke-static {p1, p2, v2, v3, v0}, Lyads/ul5;->a(Landroid/content/Context;Lyads/d9;Lyads/wx2;Lyads/ao;Lyads/sl5;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Lyads/ig5;

    invoke-direct {v0, p0}, Lyads/ig5;-><init>(Lyads/lg5;)V

    new-instance v1, Lyads/gg5;

    invoke-direct {v1, p0, p1, p2}, Lyads/gg5;-><init>(Lyads/lg5;Landroid/content/Context;Lyads/d9;)V

    iget-object p0, p0, Lyads/lg5;->c:Lyads/fk4;

    invoke-virtual {p0, p2, v0, v1}, Lyads/fk4;->a(Lyads/d9;Lyads/ek4;Lyads/d95;)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lyads/sl5;->c(Landroid/content/Context;)I

    move-result p2

    move v3, p2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lyads/sl5;->a(Landroid/content/Context;)I

    move-result p2

    move v4, p2

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    iget v5, v2, Lyads/wx2;->c:I

    iget v6, v2, Lyads/wx2;->d:I

    invoke-static {p1}, Lyads/eh6;->d(Landroid/content/Context;)I

    move-result v7

    invoke-static {p1}, Lyads/eh6;->b(Landroid/content/Context;)I

    move-result v8

    invoke-static/range {v3 .. v8}, Lyads/o8;->a(IIIIII)Lyads/m4;

    move-result-object p1

    iget-object p2, p1, Lyads/m4;->c:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lyads/jn3;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/lg5;->a:Lyads/yn;

    invoke-virtual {p0, p1}, Lyads/yn;->b(Lyads/m4;)V

    :cond_5
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lyads/lg5;->k:Lyads/xf4;

    iget-object p0, p0, Lyads/lg5;->q:Lyads/pg4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lyads/xf4;->b(Lyads/pg4;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/lg5;->q:Lyads/pg4;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyads/pg4;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAdInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lyads/lg5;->k:Lyads/xf4;

    iget-object p0, p0, Lyads/lg5;->q:Lyads/pg4;

    invoke-virtual {v0, p0}, Lyads/xf4;->c(Lyads/pg4;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
