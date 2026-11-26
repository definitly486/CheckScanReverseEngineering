.class public final Lyads/rg2;
.super Lyads/oh2;
.source "SourceFile"


# instance fields
.field public final b:Lyads/g36;

.field public final c:Lyads/nh2;

.field public final d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lyads/v41;Lyads/g36;Lyads/nh2;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/oh2;-><init>(Lyads/v41;)V

    iput-object p2, p0, Lyads/rg2;->b:Lyads/g36;

    iput-object p3, p0, Lyads/rg2;->c:Lyads/nh2;

    iput-object p4, p0, Lyads/rg2;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static final a(Lyads/kv1;Z)Lj59;
    .locals 0

    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/mv1;Lyads/i05;Lyads/hd3;)Lj59;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 313
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 314
    instance-of v1, p2, Lyads/gd3;

    if-eqz v1, :cond_0

    check-cast p2, Lyads/gd3;

    .line 315
    iget-object p2, p2, Lyads/gd3;->a:Landroid/graphics/Bitmap;

    .line 316
    invoke-virtual {p1, p2}, Lyads/i05;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 317
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 318
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/mv1;Lyads/i05;Lyads/yg2;)Lj59;
    .locals 0

    .line 327
    invoke-virtual {p0, p2}, Lyads/mv1;->setScale(Lyads/yg2;)V

    .line 328
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 329
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_1

    const/4 p2, 0x2

    if-ne p0, p2, :cond_0

    .line 330
    sget-object p0, Lyads/i05;->b:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_0
    invoke-static {}, Lme0;->e()V

    const/4 p0, 0x0

    return-object p0

    .line 331
    :cond_1
    sget-object p0, Lyads/i05;->a:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 332
    :cond_2
    sget-object p0, Lyads/i05;->c:Landroid/widget/ImageView$ScaleType;

    .line 333
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 334
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Lyads/mh2;Lyads/ng2;Lyads/fs2;Lyads/kv1;)V
    .locals 2

    .line 319
    iget-object p1, p1, Lyads/ng2;->w:Lyads/as2;

    new-instance v0, Lrh0;

    const/4 v1, 0x7

    invoke-direct {v0, p3, v1}, Lrh0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2, v0}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    .line 320
    iget-object p0, p0, Lyads/mh2;->l:Lyads/xh1;

    .line 321
    invoke-interface {p0, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method

.method public static a(Lyads/mh2;Lyads/ng2;Lyads/fs2;Lyads/mv1;Lyads/i05;)V
    .locals 2

    .line 324
    iget-object p1, p1, Lyads/ng2;->G:Lyads/as2;

    new-instance v0, Lsh0;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p3, p4}, Lsh0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v0}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    .line 325
    iget-object p0, p0, Lyads/mh2;->l:Lyads/xh1;

    .line 326
    invoke-interface {p0, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/view/View;Lyads/tt;Lyads/p41;Lyads/p41;Lyads/n32;)V
    .locals 0

    .line 312
    check-cast p1, Lyads/mh2;

    check-cast p3, Lyads/ng2;

    check-cast p4, Lyads/ng2;

    invoke-virtual {p0, p1, p2, p3, p4}, Lyads/rg2;->a(Lyads/mh2;Lyads/tt;Lyads/ng2;Lyads/ng2;)V

    return-void
.end method

.method public final a(Lyads/mh2;Lyads/tt;Lyads/ng2;Lyads/ng2;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v2, Lyads/tt;->b:Lyads/fs2;

    iget-object v6, v3, Lyads/ng2;->Q:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lyads/ah2;

    iget-object v10, v8, Lyads/ah2;->d:Lyads/as2;

    invoke-virtual {v10, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    iget-object v11, v8, Lyads/ah2;->b:Lyads/as2;

    invoke-virtual {v11, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v12, v8, Lyads/ah2;->c:Lyads/zg2;

    if-eqz v12, :cond_0

    new-instance v13, Lyads/wg2;

    iget-object v14, v12, Lyads/zg2;->b:Lyads/as2;

    invoke-virtual {v14, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    long-to-int v14, v14

    iget-object v12, v12, Lyads/zg2;->a:Lyads/as2;

    invoke-virtual {v12, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    move-object/from16 v16, v10

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-direct {v13, v14, v9}, Lyads/wg2;-><init>(II)V

    goto :goto_1

    :cond_0
    move-object/from16 v16, v10

    const/4 v13, 0x0

    :goto_1
    iget-object v8, v8, Lyads/ah2;->a:Lyads/as2;

    if-eqz v8, :cond_1

    invoke-virtual {v8, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Long;

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    :goto_2
    new-instance v8, Lyads/bh2;

    move-object/from16 v10, v16

    invoke-direct {v8, v10, v11, v13, v9}, Lyads/bh2;-><init>(Landroid/net/Uri;Ljava/lang/String;Lyads/wg2;Ljava/lang/Long;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v6, v3, Lyads/ng2;->g:Lyads/as2;

    invoke-virtual {v6, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v3, Lyads/ng2;->w:Lyads/as2;

    invoke-virtual {v6, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v3, Lyads/ng2;->C:Lyads/as2;

    invoke-virtual {v6, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lyads/mh2;->j()Lyads/mv1;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    move v9, v8

    :goto_3
    if-ge v9, v7, :cond_4

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    instance-of v11, v10, Lyads/i05;

    if-eqz v11, :cond_3

    check-cast v10, Lyads/i05;

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_4
    if-nez v6, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v9, Lyads/lv1;

    invoke-direct {v9, v7}, Lyads/lv1;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x4

    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_5
    move-object v9, v6

    :goto_5
    if-nez v10, :cond_6

    new-instance v7, Lyads/i05;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v7, v11}, Lyads/i05;-><init>(Landroid/content/Context;)V

    goto :goto_6

    :cond_6
    move-object v7, v10

    :goto_6
    new-instance v11, Lat0;

    const/4 v12, 0x2

    invoke-direct {v11, v12, v9, v7}, Lat0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v12, v3, Lyads/ng2;->B:Lyads/as2;

    if-eqz v12, :cond_7

    invoke-virtual {v12, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    :goto_7
    if-nez v12, :cond_8

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lat0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_8
    const/4 v15, 0x0

    new-instance v13, Lyads/hi0;

    invoke-direct {v13, v12, v8, v11}, Lyads/hi0;-><init>(Ljava/lang/String;ZLnl3;)V

    iget-object v8, v0, Lyads/rg2;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v8, v13}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_8
    new-instance v8, Lyads/kv1;

    invoke-direct {v8}, Lyads/kv1;-><init>()V

    iget-object v11, v3, Lyads/ng2;->m:Ljava/lang/String;

    if-nez v11, :cond_9

    goto :goto_9

    :cond_9
    new-instance v12, Lyads/qg2;

    invoke-direct {v12, v8}, Lyads/qg2;-><init>(Lyads/kv1;)V

    iget-object v13, v0, Lyads/rg2;->b:Lyads/g36;

    invoke-virtual {v13, v2, v11, v12}, Lyads/j36;->a(Lyads/tt;Ljava/lang/String;Lyads/i36;)Lyads/tp0;

    move-result-object v2

    iget-object v11, v1, Lyads/mh2;->l:Lyads/xh1;

    invoke-interface {v11, v2}, Lyads/hs2;->a(Lyads/tp0;)V

    :goto_9
    invoke-static {v1, v3, v5, v8}, Lyads/rg2;->a(Lyads/mh2;Lyads/ng2;Lyads/fs2;Lyads/kv1;)V

    invoke-static {v1, v3, v5, v9, v7}, Lyads/rg2;->a(Lyads/mh2;Lyads/ng2;Lyads/fs2;Lyads/mv1;Lyads/i05;)V

    if-nez v10, :cond_a

    if-nez v6, :cond_a

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_a
    iget-object v0, v0, Lyads/rg2;->c:Lyads/nh2;

    iget-object v0, v0, Lyads/nh2;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v3, Lyads/ng2;->f:Lyads/b31;

    if-eqz v4, :cond_b

    iget-object v9, v4, Lyads/ng2;->f:Lyads/b31;

    goto :goto_a

    :cond_b
    move-object v9, v15

    :goto_a
    invoke-static {v1, v0, v9, v5}, Lyads/tq;->a(Landroid/view/View;Lyads/b31;Lyads/b31;Lyads/fs2;)V

    return-void
.end method
