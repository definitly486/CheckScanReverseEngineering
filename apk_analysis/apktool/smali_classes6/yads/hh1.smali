.class public final Lyads/hh1;
.super Lyads/oh2;
.source "SourceFile"


# instance fields
.field public final b:Lyads/oi1;

.field public final c:Lyads/jv1;

.field public final d:Lyads/bo2;


# direct methods
.method public constructor <init>(Lyads/v41;Lyads/oi1;Lyads/jv1;Lyads/bo2;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/oh2;-><init>(Lyads/v41;)V

    iput-object p2, p0, Lyads/hh1;->b:Lyads/oi1;

    iput-object p3, p0, Lyads/hh1;->c:Lyads/jv1;

    iput-object p4, p0, Lyads/hh1;->d:Lyads/bo2;

    return-void
.end method

.method public static final a(Lyads/hh1;Lyads/nh1;Lyads/fs2;Lyads/as2;Lyads/as2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    invoke-virtual {p3, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/f11;

    invoke-virtual {p4, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/h11;

    invoke-static {p0, p2}, Lyads/jf2;->a(Lyads/f11;Lyads/h11;)I

    move-result p0

    invoke-virtual {p1, p0}, Lyads/sj;->setGravity(I)V

    .line 118
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/hh1;Lyads/nh1;Lyads/vq0;Lyads/fs2;Lyads/eh1;Lyads/ao2;Landroid/net/Uri;)Lj59;
    .locals 0

    .line 114
    invoke-virtual/range {p0 .. p5}, Lyads/hh1;->a(Lyads/nh1;Lyads/vq0;Lyads/fs2;Lyads/eh1;Lyads/ao2;)V

    .line 115
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/nh1;Landroid/graphics/drawable/Drawable;)Lj59;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lyads/iu3;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyads/iu3;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0, p1}, Lyads/iu3;->setPlaceholder(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/nh1;Lyads/hd3;)Lj59;
    .locals 1

    .line 146
    invoke-virtual {p0}, Lyads/iu3;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    instance-of v0, p1, Lyads/gd3;

    if-eqz v0, :cond_0

    check-cast p1, Lyads/gd3;

    .line 148
    iget-object p1, p1, Lyads/gd3;->a:Landroid/graphics/Bitmap;

    .line 149
    invoke-virtual {p0, p1}, Lyads/iu3;->setPreview(Landroid/graphics/Bitmap;)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lyads/iu3;->n()V

    .line 151
    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/nh1;Lyads/vi1;)Lj59;
    .locals 0

    .line 113
    invoke-static {p1}, Lyads/jf2;->a(Lyads/vi1;)Lyads/qj;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyads/sj;->setImageScale(Lyads/qj;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/hh1;Lyads/nh1;Lyads/uw;)V
    .locals 1

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    new-instance p0, Lyads/fh1;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p2}, Lyads/fh1;-><init>(Ljava/lang/ref/WeakReference;Lyads/uw;)V

    .line 111
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;)V
    .locals 0

    .line 112
    check-cast p1, Lyads/nh1;

    check-cast p3, Lyads/eh1;

    check-cast p4, Lyads/eh1;

    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/hh1;->a(Lyads/nh1;Lyads/tt;Lyads/eh1;Lyads/eh1;)V

    return-void
.end method

.method public final a(Lyads/nh1;Lyads/fs2;Lyads/as2;Lyads/as2;)V
    .locals 7

    .line 119
    invoke-virtual {p3, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/f11;

    invoke-virtual {p4, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/h11;

    invoke-static {v0, v1}, Lyads/jf2;->a(Lyads/f11;Lyads/h11;)I

    move-result v0

    invoke-virtual {p1, v0}, Lyads/sj;->setGravity(I)V

    .line 120
    new-instance v1, Lhx9;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lhx9;-><init>(Lyads/hh1;Lyads/nh1;Lyads/fs2;Lyads/as2;Lyads/as2;)V

    .line 121
    invoke-virtual {v5, v4, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 122
    iget-object p1, v3, Lyads/nh1;->m:Lyads/xh1;

    .line 123
    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 124
    invoke-virtual {v6, v4, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 125
    iget-object p1, v3, Lyads/nh1;->m:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final a(Lyads/nh1;Lyads/tt;Lyads/eh1;Lyads/eh1;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v14, p4

    iget-object v15, v3, Lyads/tt;->a:Lyads/vq0;

    iget-object v2, v3, Lyads/tt;->b:Lyads/fs2;

    iget-object v4, v1, Lyads/hh1;->d:Lyads/bo2;

    iget-object v5, v15, Lyads/vq0;->O:Lyads/qb1;

    iget-object v6, v15, Lyads/vq0;->Q:Lyads/db1;

    invoke-virtual {v4, v6, v5}, Lyads/bo2;->a(Lyads/db1;Lyads/qb1;)Lyads/ao2;

    move-result-object v16

    iget-object v4, v0, Lyads/eh1;->b:Lyads/xr0;

    iget-object v5, v0, Lyads/eh1;->d:Ljava/util/List;

    iget-object v6, v0, Lyads/eh1;->A:Ljava/util/List;

    iget-object v7, v0, Lyads/eh1;->q:Ljava/util/List;

    iget-object v8, v0, Lyads/eh1;->x:Ljava/util/List;

    iget-object v9, v0, Lyads/eh1;->w:Ljava/util/List;

    iget-object v10, v0, Lyads/eh1;->G:Ljava/util/List;

    iget-object v11, v0, Lyads/eh1;->F:Ljava/util/List;

    iget-object v12, v0, Lyads/eh1;->c:Lyads/k11;

    iget-object v13, v0, Lyads/eh1;->l:Lyads/as2;

    move-object/from16 v17, v15

    move-object v15, v2

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v13}, Lyads/pq;->a(Landroid/view/View;Lyads/tt;Lyads/xr0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/k11;Lyads/as2;)V

    iget-object v3, v0, Lyads/eh1;->i:Lyads/b31;

    if-eqz v14, :cond_0

    iget-object v4, v14, Lyads/eh1;->i:Lyads/b31;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v2, v3, v4, v15}, Lyads/tq;->a(Landroid/view/View;Lyads/b31;Lyads/b31;Lyads/fs2;)V

    iget-object v3, v0, Lyads/eh1;->K:Lyads/as2;

    new-instance v4, Lny2;

    const/4 v5, 0x6

    invoke-direct {v4, v2, v5}, Lny2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, v15, v4}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    iget-object v4, v2, Lyads/nh1;->m:Lyads/xh1;

    invoke-interface {v4, v3}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v3, v0, Lyads/eh1;->n:Lyads/as2;

    iget-object v4, v0, Lyads/eh1;->o:Lyads/as2;

    invoke-virtual {v1, v2, v15, v3, v4}, Lyads/hh1;->a(Lyads/nh1;Lyads/fs2;Lyads/as2;Lyads/as2;)V

    iget-object v7, v0, Lyads/eh1;->u:Lyads/as2;

    new-instance v0, Lgx9;

    move-object/from16 v5, p3

    move-object v4, v15

    move-object/from16 v6, v16

    move-object/from16 v3, v17

    invoke-direct/range {v0 .. v6}, Lgx9;-><init>(Lyads/hh1;Lyads/nh1;Lyads/vq0;Lyads/fs2;Lyads/eh1;Lyads/ao2;)V

    invoke-virtual {v7, v15, v0}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v0

    iget-object v1, v2, Lyads/nh1;->m:Lyads/xh1;

    invoke-interface {v1, v0}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public final a(Lyads/nh1;Lyads/vq0;Lyads/fs2;Lyads/eh1;Lyads/ao2;)V
    .locals 10

    .line 126
    iget-object v0, p4, Lyads/eh1;->u:Lyads/as2;

    invoke-virtual {v0, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 127
    iget-object v1, p1, Lyads/nh1;->n:Landroid/net/Uri;

    .line 128
    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Lyads/nh1;->o()V

    .line 130
    iget-object v1, p1, Lyads/iu3;->h:Lyads/du3;

    if-eqz v1, :cond_1

    .line 131
    invoke-interface {v1}, Lyads/du3;->cancel()V

    .line 132
    :cond_1
    iget-object v2, p0, Lyads/hh1;->c:Lyads/jv1;

    .line 133
    iget-object v1, p4, Lyads/eh1;->H:Lyads/as2;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 134
    :goto_1
    iget-object p4, p4, Lyads/eh1;->D:Lyads/as2;

    invoke-virtual {p4, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 135
    new-instance v8, Lt17;

    const/4 p3, 0x2

    invoke-direct {v8, p1, p3}, Lt17;-><init>(Ljava/lang/Object;I)V

    new-instance v9, Lj48;

    const/4 p3, 0x4

    invoke-direct {v9, p1, p3}, Lj48;-><init>(Ljava/lang/Object;I)V

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p5

    invoke-virtual/range {v2 .. v9}, Lyads/jv1;->a(Lyads/iu3;Lyads/ao2;Ljava/lang/String;IZLnl3;Lnl3;)V

    .line 136
    invoke-virtual {v3, v0}, Lyads/nh1;->setGifUrl$mobileads_externalRelease(Landroid/net/Uri;)V

    .line 137
    iget-object p1, p0, Lyads/hh1;->b:Lyads/oi1;

    .line 138
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    .line 139
    new-instance p4, Lyads/gh1;

    invoke-direct {p4, p2, p0, v3}, Lyads/gh1;-><init>(Lyads/vq0;Lyads/hh1;Lyads/nh1;)V

    .line 140
    invoke-interface {p1, p3, p4}, Lyads/oi1;->a(Ljava/lang/String;Lyads/ji1;)Lyads/du3;

    move-result-object p0

    .line 141
    invoke-virtual {p2, p0}, Lyads/vq0;->a(Lyads/du3;)V

    .line 142
    invoke-virtual {v3, p0}, Lyads/iu3;->setLoadReference$mobileads_externalRelease(Lyads/du3;)V

    return-void
.end method
