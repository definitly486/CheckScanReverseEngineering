.class public final Lyads/ph1;
.super Lyads/oh2;
.source "SourceFile"


# instance fields
.field public final b:Lyads/zt1;

.field public final c:Lws6;


# direct methods
.method public constructor <init>(Lyads/v41;Lyads/zt1;Lws6;Lws6;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/oh2;-><init>(Lyads/v41;)V

    iput-object p2, p0, Lyads/ph1;->b:Lyads/zt1;

    iput-object p3, p0, Lyads/ph1;->c:Lws6;

    return-void
.end method

.method public static final a(Lyads/ph1;Landroid/view/View;Lyads/fs2;Lyads/p41;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p3, p2}, Lyads/ph1;->a(Landroid/view/View;Lyads/p41;Lyads/fs2;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/uh1;J)Lj59;
    .locals 6

    const/16 v0, 0x1f

    shr-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    cmp-long p1, p1, v2

    if-lez p1, :cond_1

    const p1, 0x7fffffff

    goto :goto_1

    :cond_1
    const/high16 p1, -0x80000000

    goto :goto_1

    :cond_2
    :goto_0
    long-to-int p1, p1

    .line 174
    :goto_1
    invoke-virtual {p0, p1}, Lyads/b83;->setColumnCount(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/uh1;Lyads/as2;Lyads/fs2;Lyads/as2;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 150
    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/f11;

    invoke-virtual {p3, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/h11;

    invoke-static {p1, p2}, Lyads/jf2;->a(Lyads/f11;Lyads/h11;)I

    move-result p1

    invoke-virtual {p0, p1}, Lyads/yh2;->setGravity(I)V

    .line 151
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Landroid/view/View;Lyads/p41;Lyads/fs2;)V
    .locals 16

    move-object/from16 v0, p2

    invoke-interface/range {p1 .. p1}, Lyads/p41;->p()Lyads/as2;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Lyads/ro1;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lyads/ro1;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const/4 v3, 0x1

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    const-wide/16 v7, -0x1

    const/16 v9, 0x1f

    const-wide/16 v10, 0x0

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    shr-long v14, v12, v9

    cmp-long v1, v14, v10

    if-eqz v1, :cond_4

    cmp-long v1, v14, v7

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v1, v12, v10

    if-lez v1, :cond_3

    move v1, v6

    goto :goto_2

    :cond_3
    move v1, v5

    goto :goto_2

    :cond_4
    :goto_1
    long-to-int v1, v12

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    invoke-virtual {v2}, Lyads/ro1;->a()I

    move-result v12

    if-eq v12, v1, :cond_6

    invoke-virtual {v2, v1}, Lyads/ro1;->a(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    :cond_6
    :goto_3
    invoke-interface/range {p1 .. p1}, Lyads/p41;->x()Lyads/as2;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v12, v2, Lyads/ro1;

    if-eqz v12, :cond_7

    move-object v4, v2

    check-cast v4, Lyads/ro1;

    :cond_7
    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    shr-long v2, v0, v9

    cmp-long v9, v2, v10

    if-eqz v9, :cond_b

    cmp-long v2, v2, v7

    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    cmp-long v0, v0, v10

    if-lez v0, :cond_a

    move v3, v6

    goto :goto_5

    :cond_a
    move v3, v5

    goto :goto_5

    :cond_b
    :goto_4
    long-to-int v3, v0

    :cond_c
    :goto_5
    invoke-virtual {v4}, Lyads/ro1;->c()I

    move-result v0

    if-eq v0, v3, :cond_d

    invoke-virtual {v4, v3}, Lyads/ro1;->c(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    :cond_d
    :goto_6
    return-void
.end method

.method public static a(Lyads/uh1;Lyads/as2;Lyads/as2;Lyads/fs2;)V
    .locals 2

    .line 144
    invoke-virtual {p1, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/f11;

    invoke-virtual {p2, p3}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/h11;

    invoke-static {v0, v1}, Lyads/jf2;->a(Lyads/f11;Lyads/h11;)I

    move-result v0

    invoke-virtual {p0, v0}, Lyads/yh2;->setGravity(I)V

    .line 145
    new-instance v0, Lq5a;

    invoke-direct {v0, p0, p1, p2, p3}, Lq5a;-><init>(Lyads/uh1;Lyads/as2;Lyads/as2;Lyads/fs2;)V

    .line 146
    invoke-virtual {p1, p3, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    .line 147
    iget-object v1, p0, Lyads/uh1;->f:Lyads/xh1;

    invoke-interface {v1, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 148
    invoke-virtual {p2, p3, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    .line 149
    iget-object p0, p0, Lyads/uh1;->f:Lyads/xh1;

    invoke-interface {p0, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public static a(Lyads/uh1;Lyads/tt;Lyads/oh1;)V
    .locals 13

    .line 153
    iget-object v0, p1, Lyads/tt;->a:Lyads/vq0;

    .line 154
    invoke-virtual {v0}, Lyads/vq0;->u()Lyads/w55;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyads/uh1;->setReleaseViewVisitor$mobileads_externalRelease(Lyads/w55;)V

    .line 155
    iget-object v3, p2, Lyads/oh1;->b:Lyads/xr0;

    .line 156
    iget-object v4, p2, Lyads/oh1;->d:Ljava/util/List;

    .line 157
    iget-object v5, p2, Lyads/oh1;->A:Ljava/util/List;

    .line 158
    iget-object v6, p2, Lyads/oh1;->q:Ljava/util/List;

    .line 159
    iget-object v7, p2, Lyads/oh1;->w:Ljava/util/List;

    .line 160
    iget-object v8, p2, Lyads/oh1;->v:Ljava/util/List;

    .line 161
    iget-object v9, p2, Lyads/oh1;->E:Ljava/util/List;

    .line 162
    iget-object v10, p2, Lyads/oh1;->D:Ljava/util/List;

    .line 163
    iget-object v11, p2, Lyads/oh1;->c:Lyads/k11;

    .line 164
    iget-object v12, p2, Lyads/oh1;->k:Lyads/as2;

    move-object v1, p0

    move-object v2, p1

    .line 165
    invoke-static/range {v1 .. v12}, Lyads/pq;->a(Landroid/view/View;Lyads/tt;Lyads/xr0;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/k11;Lyads/as2;)V

    .line 166
    iget-object p0, p2, Lyads/oh1;->l:Lyads/as2;

    .line 167
    iget-object p1, v2, Lyads/tt;->b:Lyads/fs2;

    .line 168
    new-instance v0, Lgf6;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lgf6;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v0}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    .line 169
    iget-object p1, v1, Lyads/uh1;->f:Lyads/xh1;

    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    .line 170
    iget-object p0, p2, Lyads/oh1;->n:Lyads/as2;

    .line 171
    iget-object p1, p2, Lyads/oh1;->o:Lyads/as2;

    .line 172
    iget-object p2, v2, Lyads/tt;->b:Lyads/fs2;

    .line 173
    invoke-static {v1, p0, p1, p2}, Lyads/ph1;->a(Lyads/uh1;Lyads/as2;Lyads/as2;Lyads/fs2;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;)V
    .locals 0

    .line 143
    check-cast p1, Lyads/uh1;

    check-cast p3, Lyads/oh1;

    check-cast p4, Lyads/oh1;

    invoke-static {p1, p2, p3}, Lyads/ph1;->a(Lyads/uh1;Lyads/tt;Lyads/oh1;)V

    return-void
.end method

.method public final b(Landroid/view/View;Lyads/p41;Lyads/fs2;)V
    .locals 2

    invoke-static {p1, p2, p3}, Lyads/ph1;->a(Landroid/view/View;Lyads/p41;Lyads/fs2;)V

    instance-of v0, p1, Lyads/hs2;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lp5a;

    invoke-direct {v0, p0, p1, p3, p2}, Lp5a;-><init>(Lyads/ph1;Landroid/view/View;Lyads/fs2;Lyads/p41;)V

    check-cast p1, Lyads/hs2;

    invoke-interface {p2}, Lyads/p41;->p()Lyads/as2;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p3, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    invoke-interface {p1, p0}, Lyads/hs2;->a(Lyads/tp0;)V

    invoke-interface {p2}, Lyads/p41;->x()Lyads/as2;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p3, v0}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    :cond_2
    invoke-interface {p1, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method
