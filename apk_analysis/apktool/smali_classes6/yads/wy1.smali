.class public final Lyads/wy1;
.super Lyads/oh2;
.source "SourceFile"


# instance fields
.field public final b:Lyads/ef2;

.field public final c:Lyads/h36;

.field public final d:Lyads/bo2;


# direct methods
.method public constructor <init>(Lyads/v41;Lyads/ef2;Lyads/h36;Lyads/bo2;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/oh2;-><init>(Lyads/v41;)V

    iput-object p2, p0, Lyads/wy1;->b:Lyads/ef2;

    iput-object p3, p0, Lyads/wy1;->c:Lyads/h36;

    iput-object p4, p0, Lyads/wy1;->d:Lyads/bo2;

    return-void
.end method

.method public static final a(Ljava/util/List;ILyads/gz1;Ljava/lang/String;)Lj59;
    .locals 0

    .line 323
    invoke-interface {p0, p1, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 324
    invoke-virtual {p2, p0}, Lyads/ni5;->setItems(Ljava/util/List;)V

    .line 325
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/gz1;I)Lj59;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 329
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/gz1;Ljava/lang/String;)Lj59;
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 327
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/gz1;Ljava/util/List;Lyads/uy1;Lyads/tt;I)Lj59;
    .locals 0

    .line 310
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object p0, p0, Lyads/gz1;->r:Lnl3;

    if-eqz p0, :cond_0

    .line 312
    iget-object p1, p2, Lyads/uy1;->A:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/ty1;

    iget-object p1, p1, Lyads/ty1;->b:Lyads/as2;

    .line 313
    iget-object p2, p3, Lyads/tt;->b:Lyads/fs2;

    .line 314
    invoke-virtual {p1, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Lyads/gz1;Lyads/uy1;Lyads/fs2;)Ljava/util/ArrayList;
    .locals 5

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    iget-object p1, p1, Lyads/uy1;->A:Ljava/util/List;

    .line 318
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v2, Lyads/ty1;

    .line 319
    iget-object v4, v2, Lyads/ty1;->a:Lyads/as2;

    if-nez v4, :cond_0

    iget-object v4, v2, Lyads/ty1;->b:Lyads/as2;

    .line 320
    :cond_0
    invoke-virtual {v4, p2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    new-instance v2, Laha;

    invoke-direct {v2, v0, v1, p0}, Laha;-><init>(Ljava/util/ArrayList;ILyads/gz1;)V

    invoke-virtual {v4, p2, v2}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move v1, v3

    goto :goto_0

    .line 322
    :cond_1
    invoke-static {}, Lu96;->o()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-object v0
.end method

.method public static a(Lyads/gz1;Lyads/uy1;Lyads/tt;)V
    .locals 7

    .line 302
    sget-object v0, Lyads/v56;->a:Lyads/k11;

    const/4 v1, 0x0

    .line 303
    invoke-static {p0, p2, v0, v1}, Lyads/tq;->a(Landroid/view/View;Lyads/tt;Lyads/k11;Lyads/dh1;)Lbm3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    new-instance v1, Lzga;

    invoke-direct {v1, v0}, Lzga;-><init>(Lbm3;)V

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 305
    iget-object v0, p2, Lyads/tt;->b:Lyads/fs2;

    .line 306
    invoke-static {p0, p1, v0}, Lyads/wy1;->a(Lyads/gz1;Lyads/uy1;Lyads/fs2;)Ljava/util/ArrayList;

    move-result-object v3

    .line 307
    invoke-virtual {p0, v3}, Lyads/ni5;->setItems(Ljava/util/List;)V

    .line 308
    new-instance v1, Lxs9;

    const/4 v6, 0x2

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lxs9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v1}, Lyads/ni5;->setOnItemSelectedListener(Lnl3;)V

    return-void
.end method

.method public static final a(Lbm3;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 309
    invoke-interface {p0, p1, p2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b(Lyads/gz1;Lyads/uy1;Lyads/fs2;)V
    .locals 2

    iget-object p1, p1, Lyads/uy1;->t:Lyads/as2;

    new-instance v0, Lfg1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lfg1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2, v0}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    iget-object p0, p0, Lyads/gz1;->q:Lyads/xh1;

    invoke-interface {p0, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public static c(Lyads/gz1;Lyads/uy1;Lyads/fs2;)V
    .locals 2

    iget-object p1, p1, Lyads/uy1;->u:Lyads/as2;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lsi2;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lsi2;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2, v0}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    iget-object p0, p0, Lyads/gz1;->q:Lyads/xh1;

    invoke-interface {p0, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;Lyads/n32;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    check-cast v2, Lyads/gz1;

    move-object/from16 v7, p3

    check-cast v7, Lyads/uy1;

    move-object/from16 v8, p4

    check-cast v8, Lyads/uy1;

    iget-object v3, v1, Lyads/tt;->a:Lyads/vq0;

    iget-object v5, v1, Lyads/tt;->b:Lyads/fs2;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v3, v3, Lyads/vq0;->K:Lyads/sg3;

    invoke-virtual {v2, v3}, Lyads/ni5;->setFocusTracker(Lyads/sg3;)V

    invoke-static {v2, v7, v1}, Lyads/wy1;->a(Lyads/gz1;Lyads/uy1;Lyads/tt;)V

    iget-object v3, v1, Lyads/tt;->b:Lyads/fs2;

    iget-object v4, v0, Lyads/wy1;->d:Lyads/bo2;

    iget-object v6, v1, Lyads/tt;->a:Lyads/vq0;

    iget-object v9, v6, Lyads/vq0;->O:Lyads/qb1;

    iget-object v6, v6, Lyads/vq0;->Q:Lyads/db1;

    invoke-virtual {v4, v6, v9}, Lyads/bo2;->a(Lyads/db1;Lyads/qb1;)Lyads/ao2;

    move-result-object v4

    iget-object v6, v0, Lyads/wy1;->c:Lyads/h36;

    iget-object v9, v7, Lyads/uy1;->M:Ljava/lang/String;

    new-instance v10, Lyads/vy1;

    invoke-direct {v10, v7, v2, v4, v3}, Lyads/vy1;-><init>(Lyads/uy1;Lyads/gz1;Lyads/ao2;Lyads/fs2;)V

    invoke-virtual {v6, v1, v9, v10}, Lyads/j36;->a(Lyads/tt;Ljava/lang/String;Lyads/i36;)Lyads/tp0;

    move-result-object v1

    iget-object v3, v2, Lyads/gz1;->q:Lyads/xh1;

    invoke-interface {v3, v1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object v1, v7, Lyads/uy1;->m:Lyads/as2;

    move-object v3, v2

    iget-object v2, v7, Lyads/uy1;->n:Lyads/as2;

    iget-object v9, v7, Lyads/uy1;->x:Lyads/as2;

    iget-object v10, v7, Lyads/uy1;->F:Lyads/as2;

    iget-object v11, v7, Lyads/uy1;->y:Lyads/as2;

    iget-object v12, v7, Lyads/uy1;->l:Lyads/as2;

    iget-object v13, v7, Lyads/uy1;->p:Lyads/as2;

    iget-object v14, v7, Lyads/uy1;->q:Lyads/as2;

    iget-object v15, v7, Lyads/uy1;->o:Lyads/as2;

    if-eqz v8, :cond_0

    iget-object v6, v8, Lyads/uy1;->m:Lyads/as2;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v8, :cond_1

    iget-object v4, v8, Lyads/uy1;->n:Lyads/as2;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v8, :cond_2

    move-object/from16 p2, v1

    iget-object v1, v8, Lyads/uy1;->x:Lyads/as2;

    move-object/from16 v16, v1

    goto :goto_2

    :cond_2
    move-object/from16 p2, v1

    const/16 v16, 0x0

    :goto_2
    if-eqz v8, :cond_3

    iget-object v1, v8, Lyads/uy1;->F:Lyads/as2;

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v8, :cond_4

    move-object/from16 p3, v1

    iget-object v1, v8, Lyads/uy1;->y:Lyads/as2;

    move-object/from16 v17, v1

    goto :goto_4

    :cond_4
    move-object/from16 p3, v1

    const/16 v17, 0x0

    :goto_4
    if-eqz v8, :cond_5

    iget-object v1, v8, Lyads/uy1;->l:Lyads/as2;

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    if-eqz v8, :cond_6

    move-object/from16 p4, v1

    iget-object v1, v8, Lyads/uy1;->p:Lyads/as2;

    goto :goto_6

    :cond_6
    move-object/from16 p4, v1

    const/4 v1, 0x0

    :goto_6
    if-eqz v8, :cond_7

    move-object/from16 p5, v1

    iget-object v1, v8, Lyads/uy1;->q:Lyads/as2;

    goto :goto_7

    :cond_7
    move-object/from16 p5, v1

    const/4 v1, 0x0

    :goto_7
    if-eqz v8, :cond_8

    move-object/from16 v18, v1

    iget-object v1, v8, Lyads/uy1;->o:Lyads/as2;

    goto :goto_8

    :cond_8
    move-object/from16 v18, v1

    const/4 v1, 0x0

    :goto_8
    iget-object v0, v0, Lyads/wy1;->b:Lyads/ef2;

    move-object/from16 v19, v0

    move-object v0, v3

    move-object v3, v6

    move-object v6, v0

    move-object/from16 v21, v1

    move-object/from16 v20, v7

    move-object/from16 p1, v8

    move-object/from16 v7, v18

    move-object/from16 v22, v19

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    move-object/from16 v18, v9

    move-object/from16 v19, v11

    move-object/from16 v9, p4

    move-object/from16 v11, p5

    invoke-static/range {v0 .. v6}, Lyads/kw5;->a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/fs2;Lyads/hs2;)V

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object v2, v1

    move-object v4, v3

    move-object/from16 v3, v16

    move-object/from16 v1, v18

    invoke-static/range {v0 .. v6}, Lyads/kw5;->b(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/fs2;Lyads/hs2;)V

    invoke-static {v0, v10, v8, v5}, Lyads/kw5;->a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/fs2;)V

    move-object/from16 v3, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move-object/from16 v4, v24

    invoke-static/range {v0 .. v6}, Lyads/kw5;->c(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/fs2;Lyads/hs2;)V

    if-eqz p1, :cond_a

    invoke-static {v12, v9}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v13, v11}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v14, v7}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lyads/kw5;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v1, v21

    invoke-static {v15, v1}, Lyads/ls2;->a(Lyads/as2;Lyads/as2;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    move-object/from16 v1, v20

    goto :goto_a

    :cond_a
    move-object/from16 p0, v0

    move-object/from16 p5, v5

    move-object/from16 p1, v12

    move-object/from16 p2, v13

    move-object/from16 p3, v14

    move-object/from16 p4, v22

    invoke-static/range {p0 .. p5}, Lyads/kw5;->a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/ef2;Lyads/fs2;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v4, v15

    invoke-static/range {v0 .. v6}, Lyads/kw5;->a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/ef2;Lyads/fs2;)V

    move-object v5, v6

    invoke-static {v0, v2, v3, v4, v5}, Lyads/kw5;->a(Landroid/widget/TextView;Lyads/as2;Lyads/as2;Lyads/as2;Lyads/fs2;)V

    goto :goto_9

    :goto_a
    invoke-static {v0, v1, v5}, Lyads/wy1;->c(Lyads/gz1;Lyads/uy1;Lyads/fs2;)V

    invoke-static {v0, v1, v5}, Lyads/wy1;->b(Lyads/gz1;Lyads/uy1;Lyads/fs2;)V

    return-void
.end method
