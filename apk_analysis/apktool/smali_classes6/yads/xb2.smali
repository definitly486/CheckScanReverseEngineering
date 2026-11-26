.class public final Lyads/xb2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/xc2;

.field public final b:Lyads/bj2;

.field public final c:Lyads/ew1;

.field public final d:Lyads/bo2;

.field public final e:Lyads/zc2;

.field public final f:Lyads/s0;

.field public final g:Ldm3;

.field public final h:Ljava/util/LinkedHashMap;

.field public final i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lyads/xc2;Lyads/bj2;Lyads/ew1;Lyads/zc2;Lyads/s0;Lyads/bo2;)V
    .locals 1

    new-instance v0, Lhha;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/xb2;->a:Lyads/xc2;

    iput-object p2, p0, Lyads/xb2;->b:Lyads/bj2;

    iput-object p3, p0, Lyads/xb2;->c:Lyads/ew1;

    iput-object p6, p0, Lyads/xb2;->d:Lyads/bo2;

    iput-object p4, p0, Lyads/xb2;->e:Lyads/zc2;

    iput-object p5, p0, Lyads/xb2;->f:Lyads/s0;

    iput-object v0, p0, Lyads/xb2;->g:Ldm3;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lyads/xb2;->h:Ljava/util/LinkedHashMap;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lyads/xb2;->i:Landroid/os/Handler;

    return-void
.end method

.method public static final a(Landroid/view/View;II)Lyads/gc5;
    .locals 1

    .line 594
    new-instance v0, Lyads/ad2;

    invoke-direct {v0, p0, p1, p2}, Lyads/ad2;-><init>(Landroid/view/View;II)V

    return-object v0
.end method

.method public static final a(Lyads/wz5;Landroid/view/View;Lyads/xb2;Lyads/vq0;Lyads/qb2;ZLyads/sb2;Lyads/gc5;Landroid/view/View;Lyads/fs2;Lyads/tt;Lyads/br0;Z)V
    .locals 16

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move-object/from16 v1, p3

    move-object/from16 v4, p4

    move-object/from16 v10, p6

    move-object/from16 v7, p7

    move-object/from16 v2, p8

    move-object/from16 v5, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    if-nez p12, :cond_3

    move-object/from16 v0, p0

    .line 663
    iget-boolean v0, v0, Lyads/wz5;->g:Z

    if-nez v0, :cond_3

    .line 664
    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 665
    iget-object v0, v6, Lyads/xb2;->a:Lyads/xc2;

    check-cast v0, Lmha;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v0, p5

    invoke-static {v1, v3, v4, v0}, Lyads/xc2;->b(Lyads/vq0;Landroid/view/View;Lyads/qb2;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 666
    invoke-static {v10}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_2

    .line 667
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 668
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 669
    invoke-static {v2, v3, v4, v5}, Lyads/yb2;->a(Landroid/view/View;Landroid/view/View;Lyads/qb2;Lyads/fs2;)Landroid/graphics/Point;

    move-result-object v11

    .line 670
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 671
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 672
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v13

    if-ge v12, v13, :cond_0

    .line 673
    iget-object v13, v6, Lyads/xb2;->d:Lyads/bo2;

    .line 674
    iget-object v14, v1, Lyads/vq0;->O:Lyads/qb1;

    .line 675
    iget-object v15, v1, Lyads/vq0;->Q:Lyads/db1;

    .line 676
    invoke-virtual {v13, v15, v14}, Lyads/bo2;->a(Lyads/db1;Lyads/qb1;)Lyads/ao2;

    move-result-object v13

    .line 677
    new-instance v14, Ljava/lang/Throwable;

    const-string v15, "Tooltip width > screen size, width was changed"

    invoke-direct {v14, v15}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 678
    iget-object v15, v13, Lyads/ao2;->d:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {v13}, Lyads/ao2;->a()V

    .line 680
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v13

    if-ge v0, v13, :cond_1

    .line 681
    iget-object v13, v6, Lyads/xb2;->d:Lyads/bo2;

    .line 682
    iget-object v14, v1, Lyads/vq0;->O:Lyads/qb1;

    .line 683
    iget-object v15, v1, Lyads/vq0;->Q:Lyads/db1;

    .line 684
    invoke-virtual {v13, v15, v14}, Lyads/bo2;->a(Lyads/db1;Lyads/qb1;)Lyads/ao2;

    move-result-object v13

    .line 685
    new-instance v14, Ljava/lang/Throwable;

    const-string v15, "Tooltip height > screen size, height was changed"

    invoke-direct {v14, v15}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 686
    iget-object v15, v13, Lyads/ao2;->d:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-virtual {v13}, Lyads/ao2;->a()V

    .line 688
    :cond_1
    iget v13, v11, Landroid/graphics/Point;->x:I

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v13, v11, v12, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 689
    iget-object v0, v6, Lyads/xb2;->b:Lyads/bj2;

    .line 690
    iget-object v11, v8, Lyads/tt;->a:Lyads/vq0;

    .line 691
    iget-object v12, v8, Lyads/tt;->b:Lyads/fs2;

    const/4 v13, 0x0

    .line 692
    invoke-static {v0, v11, v12, v13, v9}, Lyads/bj2;->a(Lyads/bj2;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;)V

    .line 693
    iget-object v0, v6, Lyads/xb2;->b:Lyads/bj2;

    .line 694
    iget-object v11, v8, Lyads/tt;->a:Lyads/vq0;

    .line 695
    iget-object v8, v8, Lyads/tt;->b:Lyads/fs2;

    .line 696
    invoke-static {v0, v11, v8, v10, v9}, Lyads/bj2;->a(Lyads/bj2;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;)V

    .line 697
    iget-object v0, v6, Lyads/xb2;->a:Lyads/xc2;

    .line 698
    invoke-interface {v0}, Lyads/xc2;->a()Lyads/wc2;

    goto :goto_0

    .line 699
    :cond_2
    new-instance v0, Lyads/vb2;

    invoke-direct/range {v0 .. v10}, Lyads/vb2;-><init>(Lyads/vq0;Landroid/view/View;Landroid/view/View;Lyads/qb2;Lyads/fs2;Lyads/xb2;Lyads/gc5;Lyads/tt;Lyads/br0;Lyads/sb2;)V

    invoke-virtual {v10, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    const/4 v0, 0x0

    .line 700
    invoke-virtual {v7, v3, v0, v0, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 701
    iget-object v0, v6, Lyads/xb2;->f:Lyads/s0;

    .line 702
    invoke-static {v2, v0}, Lyads/yb2;->a(Landroid/view/View;Lyads/s0;)V

    .line 703
    iget-object v0, v4, Lyads/qb2;->f:Lyads/as2;

    invoke-virtual {v0, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-eqz v0, :cond_3

    .line 704
    iget-object v0, v6, Lyads/xb2;->i:Landroid/os/Handler;

    iget-object v2, v4, Lyads/qb2;->f:Lyads/as2;

    invoke-virtual {v2, v5}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 705
    new-instance v5, Lyads/wb2;

    invoke-direct {v5, v6, v4, v1}, Lyads/wb2;-><init>(Lyads/xb2;Lyads/qb2;Lyads/vq0;)V

    .line 706
    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public static final a(Lyads/xb2;Lyads/qb2;Lyads/tt;Lyads/sb2;Lyads/vq0;Landroid/view/View;Lyads/gc5;Lyads/wz5;)V
    .locals 7

    .line 644
    iget-object p4, p0, Lyads/xb2;->h:Ljava/util/LinkedHashMap;

    iget-object p5, p1, Lyads/qb2;->g:Ljava/lang/String;

    invoke-interface {p4, p5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    iget-object p1, p1, Lyads/qb2;->e:Lyads/br0;

    .line 646
    iget-object p4, p0, Lyads/xb2;->b:Lyads/bj2;

    .line 647
    iget-object p5, p2, Lyads/tt;->a:Lyads/vq0;

    .line 648
    iget-object v0, p2, Lyads/tt;->b:Lyads/fs2;

    const/4 v1, 0x0

    .line 649
    invoke-static {p4, p5, v0, v1, p1}, Lyads/bj2;->a(Lyads/bj2;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;)V

    .line 650
    iget-object p1, p0, Lyads/xb2;->b:Lyads/bj2;

    invoke-virtual {p1}, Lyads/bj2;->a()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lyads/br0;

    if-eqz v4, :cond_1

    .line 651
    iget-object v0, p0, Lyads/xb2;->b:Lyads/bj2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 652
    invoke-virtual {v4}, Lyads/br0;->a()Lyads/p41;

    move-result-object p1

    invoke-interface {p1}, Lyads/p41;->b()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 653
    :cond_0
    iget-object v2, p2, Lyads/tt;->b:Lyads/fs2;

    .line 654
    iget-object v1, p2, Lyads/tt;->a:Lyads/vq0;

    .line 655
    sget-object v5, Lkx2;->b:Lkx2;

    .line 656
    invoke-static {p1, v2}, Lyads/bj2;->a(Ljava/util/List;Lyads/fs2;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v3, p3

    .line 657
    invoke-virtual/range {v0 .. v6}, Lyads/bj2;->a(Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;Ljava/util/List;Ljava/util/List;)V

    .line 658
    :cond_1
    :goto_0
    iget-object p1, p0, Lyads/xb2;->a:Lyads/xc2;

    invoke-interface {p1}, Lyads/xc2;->a()Lyads/wc2;

    .line 659
    iget-object p0, p0, Lyads/xb2;->f:Lyads/s0;

    .line 660
    invoke-virtual {p6}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p0}, Lyads/yb2;->a(Landroid/view/View;Lyads/s0;)V

    .line 661
    iget-object p0, p7, Lyads/wz5;->f:Lyads/tb2;

    if-nez p0, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 662
    invoke-virtual {p0, p1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 8

    .line 614
    sget v0, Lcom/yandex/mobile/ads/R$id;->monetization_ads_divkit_div_tooltips_tag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_6

    .line 615
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 616
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 617
    check-cast v3, Lyads/qb2;

    .line 618
    iget-object v4, p0, Lyads/xb2;->h:Ljava/util/LinkedHashMap;

    iget-object v3, v3, Lyads/qb2;->g:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/wz5;

    if-nez v3, :cond_2

    :goto_2
    move-object v3, v2

    goto :goto_4

    :cond_2
    const/4 v4, 0x1

    .line 619
    iput-boolean v4, v3, Lyads/wz5;->g:Z

    .line 620
    iget-object v4, v3, Lyads/wz5;->e:Lyads/dw1;

    if-eqz v4, :cond_3

    .line 621
    iget-object v4, v4, Lyads/dw1;->a:Ljava/util/ArrayList;

    .line 622
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/aw1;

    .line 623
    invoke-interface {v5}, Lyads/aw1;->cancel()V

    goto :goto_3

    .line 624
    :cond_3
    iget-object v4, v3, Lyads/wz5;->d:Lyads/gc5;

    .line 625
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 626
    iget-object v4, v3, Lyads/wz5;->d:Lyads/gc5;

    .line 627
    invoke-static {v4}, Lyads/rb2;->a(Lyads/gc5;)V

    .line 628
    iget-object v3, v3, Lyads/wz5;->d:Lyads/gc5;

    .line 629
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_2

    .line 630
    :cond_4
    iget-object v4, v3, Lyads/wz5;->b:Lyads/tt;

    .line 631
    iget-object v5, v3, Lyads/wz5;->c:Lyads/br0;

    .line 632
    iget-object v6, p0, Lyads/xb2;->b:Lyads/bj2;

    .line 633
    iget-object v7, v4, Lyads/tt;->a:Lyads/vq0;

    .line 634
    iget-object v4, v4, Lyads/tt;->b:Lyads/fs2;

    .line 635
    invoke-static {v6, v7, v4, v2, v5}, Lyads/bj2;->a(Lyads/bj2;Lyads/vq0;Lyads/fs2;Landroid/view/View;Lyads/br0;)V

    .line 636
    iget-object v3, v3, Lyads/wz5;->a:Ljava/lang/String;

    :goto_4
    if-eqz v3, :cond_1

    .line 637
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 638
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 639
    iget-object v2, p0, Lyads/xb2;->h:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 640
    :cond_6
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 641
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lzo7;

    move-result-object p1

    .line 642
    invoke-interface {p1}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 643
    invoke-virtual {p0, v0}, Lyads/xb2;->a(Landroid/view/View;)V

    goto :goto_6

    :cond_7
    return-void
.end method

.method public final a(Landroid/view/View;Lyads/qb2;Lyads/tt;Z)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v11, p3

    iget-object v0, v11, Lyads/tt;->a:Lyads/vq0;

    iget-object v3, v1, Lyads/xb2;->a:Lyads/xc2;

    check-cast v3, Lmha;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v10, p1

    move/from16 v12, p4

    invoke-static {v0, v10, v2, v12}, Lyads/xc2;->b(Lyads/vq0;Landroid/view/View;Lyads/qb2;Z)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v10, v11, Lyads/tt;->b:Lyads/fs2;

    iget-object v13, v2, Lyads/qb2;->e:Lyads/br0;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget-object v4, v2, Lyads/qb2;->e:Lyads/br0;

    invoke-virtual {v4}, Lyads/br0;->a()Lyads/p41;

    move-result-object v4

    invoke-interface {v4}, Lyads/p41;->getWidth()Lyads/x02;

    move-result-object v4

    const/4 v14, 0x0

    invoke-static {v4, v3, v10, v14}, Lyads/jf2;->a(Lyads/x02;Landroid/util/DisplayMetrics;Lyads/fs2;Landroid/view/ViewGroup$LayoutParams;)I

    move-result v4

    iget-object v5, v2, Lyads/qb2;->e:Lyads/br0;

    invoke-virtual {v5}, Lyads/br0;->a()Lyads/p41;

    move-result-object v5

    invoke-interface {v5}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object v5

    invoke-static {v5, v3, v10, v14}, Lyads/jf2;->a(Lyads/x02;Landroid/util/DisplayMetrics;Lyads/fs2;Landroid/view/ViewGroup$LayoutParams;)I

    move-result v3

    iget-object v5, v1, Lyads/xb2;->e:Lyads/zc2;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Lyads/br0;->a()Lyads/p41;

    move-result-object v6

    iget-object v5, v5, Lyads/zc2;->a:Lws6;

    invoke-interface {v5}, Lws6;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/lq0;

    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13}, Lyads/br0;->a()Lyads/p41;

    move-result-object v8

    instance-of v9, v8, Lyads/z22;

    if-eqz v9, :cond_1

    check-cast v8, Lyads/z22;

    iget-object v9, v8, Lyads/z22;->p:Ljava/lang/String;

    if-nez v9, :cond_2

    iget-object v9, v8, Lyads/z22;->x:Ljava/lang/String;

    if-nez v9, :cond_2

    const-string v9, ""

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Lyads/p41;->a()Ljava/lang/String;

    move-result-object v9

    :cond_2
    :goto_0
    const/4 v8, 0x0

    if-nez v9, :cond_3

    invoke-static {v8}, Lyads/bz;->a(I)V

    sget-object v9, Lyads/bz;->a:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :cond_3
    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    new-instance v15, Lyads/n32;

    sget-object v18, Lkx2;->b:Lkx2;

    const/16 v20, 0x8

    invoke-direct/range {v15 .. v20}, Lyads/n32;-><init>(JLjava/util/List;Ljava/util/List;I)V

    invoke-virtual {v5, v13, v11, v15}, Lyads/lq0;->a(Lyads/br0;Lyads/tt;Lyads/n32;)Landroid/view/View;

    move-result-object v7

    iget-object v5, v5, Lyads/lq0;->b:Lyads/w41;

    invoke-virtual {v5, v11, v7, v13, v15}, Lyads/w41;->a(Lyads/tt;Landroid/view/View;Lyads/br0;Lyads/n32;)V

    iget-object v5, v11, Lyads/tt;->b:Lyads/fs2;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {v6}, Lyads/p41;->getWidth()Lyads/x02;

    move-result-object v8

    invoke-static {v8, v9, v5, v14}, Lyads/jf2;->a(Lyads/x02;Landroid/util/DisplayMetrics;Lyads/fs2;Landroid/view/ViewGroup$LayoutParams;)I

    move-result v8

    invoke-interface {v6}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object v6

    invoke-static {v6, v9, v5, v14}, Lyads/jf2;->a(Lyads/x02;Landroid/util/DisplayMetrics;Lyads/fs2;Landroid/view/ViewGroup$LayoutParams;)I

    move-result v5

    invoke-direct {v15, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Landroid/view/View;->setFocusable(Z)V

    new-instance v5, Lyads/sb2;

    iget-object v6, v11, Lyads/tt;->a:Lyads/vq0;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-direct {v5, v6, v14, v8, v9}, Lyads/sb2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-nez v6, :cond_4

    move-object v6, v14

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object v7, v1, Lyads/xb2;->g:Ldm3;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v5, v4, v3}, Ldm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lyads/gc5;

    invoke-virtual {v7, v15}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v3, v2, Lyads/qb2;->d:Lyads/as2;

    invoke-virtual {v3, v10}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v7, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_6

    invoke-virtual {v7, v15}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v3, v2, Lyads/qb2;->h:Lyads/fc2;

    instance-of v3, v3, Lyads/dc2;

    invoke-virtual {v7, v3}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    goto :goto_2

    :cond_6
    iget-object v3, v2, Lyads/qb2;->h:Lyads/fc2;

    instance-of v3, v3, Lyads/dc2;

    invoke-virtual {v7, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    :goto_2
    new-instance v3, Lyads/mx4;

    iget-object v4, v2, Lyads/qb2;->h:Lyads/fc2;

    instance-of v4, v4, Lyads/dc2;

    move-object v8, v7

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isOutsideTouchable()Z

    move-result v7

    move-object/from16 v16, v5

    move-object v5, v6

    move v6, v4

    move-object v4, v8

    iget-object v8, v2, Lyads/qb2;->k:Ljava/util/List;

    move-object/from16 v21, v11

    move v11, v9

    move-object/from16 v9, v21

    invoke-direct/range {v3 .. v9}, Lyads/mx4;-><init>(Lyads/gc5;Landroid/view/View;ZZLjava/util/List;Lyads/tt;)V

    move-object v9, v5

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v3, v2, Lyads/qb2;->a:Lyads/k11;

    if-eqz v3, :cond_7

    iget-object v5, v2, Lyads/qb2;->j:Lyads/as2;

    invoke-virtual {v5, v10}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/pb2;

    invoke-static {v3, v5, v15, v10}, Lyads/rb2;->a(Lyads/k11;Lyads/pb2;ZLyads/fs2;)Landroid/transition/Transition;

    move-result-object v3

    goto :goto_3

    :cond_7
    new-instance v3, Landroid/transition/TransitionSet;

    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    new-instance v5, Landroid/transition/Fade;

    invoke-direct {v5}, Landroid/transition/Fade;-><init>()V

    invoke-virtual {v3, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v5, Lyads/w16;

    iget-object v6, v2, Lyads/qb2;->j:Lyads/as2;

    invoke-virtual {v6, v10}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/pb2;

    invoke-direct {v5, v6}, Lyads/w16;-><init>(Lyads/pb2;)V

    invoke-virtual {v3, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v5, Lyads/tp5;

    invoke-direct {v5}, Lyads/tp5;-><init>()V

    invoke-virtual {v3, v5}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object v3

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    iget-object v3, v2, Lyads/qb2;->b:Lyads/k11;

    if-eqz v3, :cond_8

    iget-object v5, v2, Lyads/qb2;->j:Lyads/as2;

    invoke-virtual {v5, v10}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/pb2;

    invoke-static {v3, v5, v11, v10}, Lyads/rb2;->a(Lyads/k11;Lyads/pb2;ZLyads/fs2;)Landroid/transition/Transition;

    move-result-object v3

    goto :goto_4

    :cond_8
    new-instance v3, Landroid/transition/TransitionSet;

    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    new-instance v5, Landroid/transition/Fade;

    invoke-direct {v5}, Landroid/transition/Fade;-><init>()V

    invoke-virtual {v3, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v5, Lyads/w16;

    iget-object v6, v2, Lyads/qb2;->j:Lyads/as2;

    invoke-virtual {v6, v10}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/pb2;

    invoke-direct {v5, v6}, Lyads/w16;-><init>(Lyads/pb2;)V

    invoke-virtual {v3, v5}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v3

    new-instance v5, Lyads/tp5;

    invoke-direct {v5}, Lyads/tp5;-><init>()V

    invoke-virtual {v3, v5}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    iget-object v3, v1, Lyads/xb2;->f:Lyads/s0;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lyads/s0;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v14, Lyads/tb2;

    invoke-direct {v14, v1, v2, v0}, Lyads/tb2;-><init>(Lyads/xb2;Lyads/qb2;Lyads/vq0;)V

    invoke-static {v0}, Landroidx/activity/ViewTreeOnBackPressedDispatcherOwner;->get(Landroid/view/View;)Landroidx/activity/OnBackPressedDispatcherOwner;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3, v14}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;)V

    goto :goto_5

    :cond_9
    new-instance v3, Ljava/lang/AssertionError;

    const-string v5, "Can\'t find onBackPressedDispatcher to set on back press listener on tooltip."

    invoke-direct {v3, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v3}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    sget-object v3, Lj59;->a:Lj59;

    :cond_a
    :goto_5
    move-object v8, v14

    new-instance v3, Lyads/wz5;

    move-object v7, v4

    iget-object v4, v2, Lyads/qb2;->g:Ljava/lang/String;

    move-object/from16 v5, p3

    move-object v6, v13

    invoke-direct/range {v3 .. v8}, Lyads/wz5;-><init>(Ljava/lang/String;Lyads/tt;Lyads/br0;Lyads/gc5;Lyads/tb2;)V

    move-object v5, v0

    move-object v12, v6

    move-object v4, v7

    new-instance v0, Liha;

    move-object/from16 v6, p1

    move-object v8, v3

    move-object/from16 v4, v16

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v8}, Liha;-><init>(Lyads/xb2;Lyads/qb2;Lyads/tt;Lyads/sb2;Lyads/vq0;Landroid/view/View;Lyads/gc5;Lyads/wz5;)V

    move-object v4, v7

    move-object v3, v8

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, v1, Lyads/xb2;->h:Ljava/util/LinkedHashMap;

    iget-object v6, v2, Lyads/qb2;->g:Ljava/lang/String;

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v1, Lyads/xb2;->c:Lyads/ew1;

    new-instance v0, Ljha;

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    move-object/from16 v11, p3

    move/from16 v6, p4

    move-object v8, v4

    move-object v4, v5

    move-object/from16 v7, v16

    move-object v5, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v12}, Ljha;-><init>(Lyads/wz5;Landroid/view/View;Lyads/xb2;Lyads/vq0;Lyads/qb2;ZLyads/sb2;Lyads/gc5;Landroid/view/View;Lyads/fs2;Lyads/tt;Lyads/br0;)V

    move-object v1, v3

    move-object v2, v5

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lyads/xv1;

    invoke-direct {v3, v0}, Lyads/xv1;-><init>(Lyads/sv1;)V

    new-instance v4, Lyads/bw1;

    invoke-direct {v4, v13, v3, v0, v10}, Lyads/bw1;-><init>(Lyads/ew1;Lyads/xv1;Lyads/sv1;Lyads/fs2;)V

    invoke-virtual {v4, v12, v10}, Lyads/dj2;->b(Lyads/br0;Lyads/fs2;)Ljava/lang/Object;

    iget-object v0, v4, Lyads/bw1;->b:Lyads/dw1;

    invoke-virtual {v3}, Lyads/xv1;->c()V

    iget-object v1, v1, Lyads/xb2;->h:Ljava/util/LinkedHashMap;

    iget-object v2, v2, Lyads/qb2;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/wz5;

    if-nez v1, :cond_b

    :goto_6
    return-void

    :cond_b
    iput-object v0, v1, Lyads/wz5;->e:Lyads/dw1;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 611
    iget-object p0, p0, Lyads/xb2;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/wz5;

    if-eqz p0, :cond_0

    .line 612
    iget-object p0, p0, Lyads/wz5;->d:Lyads/gc5;

    if-eqz p0, :cond_0

    .line 613
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lyads/tt;Z)V
    .locals 8

    .line 595
    invoke-virtual {p2}, Lyads/tt;->a()Lyads/vq0;

    move-result-object v0

    invoke-static {p1, v0}, Lyads/yb2;->a(Ljava/lang/String;Lyads/vq0;)Lb36;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 596
    iget-object v1, v0, Lb36;->b:Ljava/lang/Object;

    .line 597
    move-object v5, v1

    check-cast v5, Lyads/qb2;

    .line 598
    iget-object v0, v0, Lb36;->c:Ljava/lang/Object;

    .line 599
    move-object v4, v0

    check-cast v4, Landroid/view/View;

    .line 600
    iget-object v0, p0, Lyads/xb2;->h:Ljava/util/LinkedHashMap;

    iget-object v1, v5, Lyads/qb2;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v6, p2

    goto :goto_1

    .line 601
    :cond_0
    invoke-static {v4}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 602
    invoke-virtual {p0, v4, v5, p2, p3}, Lyads/xb2;->a(Landroid/view/View;Lyads/qb2;Lyads/tt;Z)V

    move-object v6, p2

    goto :goto_0

    .line 603
    :cond_1
    new-instance v2, Lyads/ub2;

    move-object v3, p0

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lyads/ub2;-><init>(Lyads/xb2;Landroid/view/View;Lyads/qb2;Lyads/tt;Z)V

    invoke-virtual {v4, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 604
    :goto_0
    invoke-static {v4}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result p0

    if-nez p0, :cond_2

    .line 605
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 606
    :cond_2
    :goto_1
    sget-object p0, Lj59;->a:Lj59;

    goto :goto_2

    :cond_3
    move-object v6, p2

    const/4 p0, 0x0

    :goto_2
    if-nez p0, :cond_4

    .line 607
    invoke-virtual {v6}, Lyads/tt;->a()Lyads/vq0;

    move-result-object p0

    new-instance p2, Ljava/lang/IllegalStateException;

    .line 608
    const-string p3, "Unable to find view for tooltip \'"

    const-string v0, "\'"

    .line 609
    invoke-static {p3, p1, v0}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 610
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lyads/o01;->a(Lyads/vq0;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method
