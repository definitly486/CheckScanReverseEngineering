.class public final Lyads/cs1;
.super Lyads/oh2;
.source "SourceFile"


# instance fields
.field public final b:Lyads/v41;

.field public final c:Lyads/qh2;

.field public final d:Lws6;

.field public final e:Lyads/rt1;

.field public final f:Lyads/bt0;

.field public final g:Lyads/es4;

.field public final h:Lyads/s0;


# direct methods
.method public constructor <init>(Lyads/v41;Lyads/qh2;Lws6;Lyads/rt1;Lyads/bt0;Lyads/es4;Lyads/s0;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/oh2;-><init>(Lyads/v41;)V

    iput-object p1, p0, Lyads/cs1;->b:Lyads/v41;

    iput-object p2, p0, Lyads/cs1;->c:Lyads/qh2;

    iput-object p3, p0, Lyads/cs1;->d:Lws6;

    iput-object p4, p0, Lyads/cs1;->e:Lyads/rt1;

    iput-object p5, p0, Lyads/cs1;->f:Lyads/bt0;

    iput-object p6, p0, Lyads/cs1;->g:Lyads/es4;

    iput-object p7, p0, Lyads/cs1;->h:Lyads/s0;

    return-void
.end method

.method public static final a(Lyads/cs1;Lyads/et1;Lyads/ur1;Lyads/fs2;Landroid/util/SparseArray;Lyads/wr1;Ljava/lang/Object;)Lj59;
    .locals 20

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v2, p3

    .line 629
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    invoke-virtual {v1}, Lyads/ng6;->h()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v9

    if-nez v9, :cond_0

    goto/16 :goto_7

    .line 631
    :cond_0
    iget-object v0, v8, Lyads/ur1;->x:Lyads/as2;

    invoke-virtual {v0, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lyads/tr1;->e:Lyads/tr1;

    const/4 v10, 0x0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v10

    :goto_0
    xor-int/lit8 v0, v5, 0x1

    .line 632
    invoke-virtual {v1, v0}, Lyads/ng6;->setOrientation(I)V

    .line 633
    iget-object v0, v8, Lyads/ur1;->i:Lyads/as2;

    invoke-virtual {v0, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/rr1;

    move-object/from16 v11, p5

    .line 634
    iput-object v0, v11, Lyads/wr1;->q:Lyads/rr1;

    .line 635
    invoke-static {v1}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_7

    .line 636
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 637
    iget-object v0, v1, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v5, :cond_3

    .line 638
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    :goto_1
    move v12, v0

    goto :goto_2

    .line 639
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_1

    .line 640
    :goto_2
    iget-object v0, v8, Lyads/ur1;->s:Lyads/af1;

    invoke-static {v0, v3, v2}, Lyads/pq;->b(Lyads/af1;Landroid/util/DisplayMetrics;Lyads/fs2;)F

    move-result v13

    .line 641
    iget-object v0, v8, Lyads/ur1;->q:Lyads/as2;

    invoke-virtual {v0, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 642
    iget-object v0, v8, Lyads/ur1;->D:Lyads/as2;

    invoke-virtual {v0, v2}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lyads/rr1;

    .line 643
    new-instance v4, Lyads/ts1;

    .line 644
    iget-object v1, v8, Lyads/ur1;->y:Lyads/yc1;

    move-object v0, v4

    move-object/from16 v6, v18

    move-object v4, v3

    move-object/from16 v3, p1

    .line 645
    invoke-direct/range {v0 .. v6}, Lyads/ts1;-><init>(Lyads/yc1;Lyads/fs2;Lyads/et1;Landroid/util/DisplayMetrics;ZLyads/rr1;)V

    move-object v3, v4

    move v14, v5

    move-object v5, v6

    move-object v4, v0

    .line 646
    iget-object v0, v8, Lyads/ur1;->u:Lyads/ls1;

    .line 647
    instance-of v1, v0, Lyads/ks1;

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 648
    new-instance v0, Lyads/vt4;

    .line 649
    check-cast v1, Lyads/ks1;

    .line 650
    iget-object v1, v1, Lyads/ks1;->a:Lyads/qq1;

    move-object/from16 v2, p3

    move v3, v12

    .line 651
    invoke-direct/range {v0 .. v5}, Lyads/vt4;-><init>(Lyads/qq1;Lyads/fs2;ILyads/ts1;Lyads/rr1;)V

    move-object v15, v4

    move-object v12, v5

    move/from16 v19, v14

    move-object v14, v0

    move v4, v3

    goto :goto_4

    :cond_4
    move-object v1, v0

    move-object v15, v4

    move v4, v12

    .line 652
    instance-of v0, v1, Lyads/is1;

    if-eqz v0, :cond_5

    .line 653
    new-instance v0, Lyads/zm4;

    .line 654
    check-cast v1, Lyads/is1;

    .line 655
    iget-object v1, v1, Lyads/is1;->a:Lyads/vp1;

    move-object/from16 v2, p3

    move-object v7, v5

    move v5, v13

    move-object v6, v15

    .line 656
    invoke-direct/range {v0 .. v7}, Lyads/zm4;-><init>(Lyads/vp1;Lyads/fs2;Landroid/util/DisplayMetrics;IFLyads/ts1;Lyads/rr1;)V

    move-object v12, v7

    move/from16 v19, v14

    :goto_3
    move-object v14, v0

    goto :goto_4

    .line 657
    :cond_5
    instance-of v0, v1, Lyads/js1;

    if-eqz v0, :cond_8

    .line 658
    new-instance v0, Lyads/fl6;

    move v3, v4

    move-object v1, v9

    move v2, v14

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lyads/fl6;-><init>(Landroidx/recyclerview/widget/RecyclerView;ZILyads/ts1;Lyads/rr1;)V

    move/from16 v19, v2

    move-object v12, v5

    move v4, v3

    goto :goto_3

    .line 659
    :goto_4
    instance-of v0, v14, Lyads/sx2;

    if-eqz v0, :cond_6

    .line 660
    new-instance v0, Lyads/rx2;

    move v3, v4

    .line 661
    move-object v4, v14

    check-cast v4, Lyads/sx2;

    move-object/from16 v1, p1

    move v2, v3

    move-object v7, v11

    move v3, v13

    move-object v5, v15

    move/from16 v6, v16

    .line 662
    invoke-direct/range {v0 .. v7}, Lyads/rx2;-><init>(Lyads/et1;IFLyads/sx2;Lyads/ts1;ZLyads/wr1;)V

    move v6, v2

    .line 663
    new-instance v0, Lyads/px2;

    invoke-direct {v0, v15, v4}, Lyads/px2;-><init>(Lyads/ts1;Lyads/sx2;)V

    move-object v1, v0

    move-object/from16 v0, p1

    goto :goto_5

    :cond_6
    move v6, v4

    .line 664
    new-instance v0, Lyads/el6;

    move-object/from16 v1, p1

    move-object/from16 v5, p5

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    invoke-direct/range {v0 .. v5}, Lyads/el6;-><init>(Lyads/et1;FLyads/ys1;Lyads/ts1;Lyads/wr1;)V

    move-object v0, v1

    .line 665
    new-instance v1, Lyads/cl6;

    invoke-direct {v1, v6, v15, v12}, Lyads/cl6;-><init>(ILyads/ts1;Lyads/rr1;)V

    .line 666
    :goto_5
    iget-object v2, v0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 667
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getItemDecorationCount()I

    move-result v3

    :goto_6
    if-ge v10, v3, :cond_7

    .line 668
    invoke-virtual {v2, v10}, Landroidx/viewpager2/widget/ViewPager2;->removeItemDecorationAt(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 669
    :cond_7
    invoke-virtual {v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 670
    new-instance v11, Lyads/xs1;

    move-object/from16 v17, p5

    move-object/from16 v18, v12

    move v12, v6

    invoke-direct/range {v11 .. v18}, Lyads/xs1;-><init>(IFLyads/ys1;Lyads/ts1;ZLyads/wr1;Lyads/rr1;)V

    move v4, v12

    .line 671
    new-instance v0, Lyads/zs1;

    .line 672
    iget-object v5, v8, Lyads/ur1;->z:Lyads/xq1;

    move-object/from16 v8, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object v1, v9

    move-object v6, v11

    move/from16 v7, v19

    .line 673
    invoke-direct/range {v0 .. v7}, Lyads/zs1;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lyads/fs2;Landroid/util/SparseArray;ILyads/xq1;Lyads/xs1;Z)V

    invoke-virtual {v8, v0}, Lyads/ng6;->setPageTransformer$mobileads_externalRelease(Lyads/zs1;)V

    .line 674
    :goto_7
    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    .line 675
    :cond_8
    invoke-static {}, Lme0;->e()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static final a(Lyads/et1;Lr07;Lyads/cs1;Landroidx/recyclerview/widget/RecyclerView;Z)Lj59;
    .locals 3

    .line 554
    iget-object v0, p0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 555
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Lyads/wr1;

    if-eqz v1, :cond_0

    check-cast v0, Lyads/wr1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    .line 556
    :cond_1
    iget-boolean v1, v0, Lyads/wr1;->r:Z

    if-ne v1, p4, :cond_2

    goto :goto_2

    .line 557
    :cond_2
    iput-boolean p4, v0, Lyads/wr1;->r:Z

    .line 558
    iget-object v1, v0, Lyads/wr1;->o:Lyads/vr1;

    invoke-virtual {v1}, Lv;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 559
    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 560
    iget-object v0, v0, Lyads/wr1;->n:Lyads/et1;

    .line 561
    iget-object v1, v0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 562
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    if-eqz p4, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :cond_3
    const/4 v2, -0x2

    :goto_1
    add-int/2addr v1, v2

    .line 563
    invoke-virtual {v0, v1}, Lyads/et1;->setCurrentItem$mobileads_externalRelease(I)V

    :goto_2
    if-eqz p4, :cond_5

    .line 564
    iget-object p4, p1, Lr07;->b:Ljava/lang/Object;

    check-cast p4, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-nez p4, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 565
    new-instance p4, Lyads/zr1;

    invoke-direct {p4, p0}, Lyads/zr1;-><init>(Lyads/et1;)V

    .line 566
    iput-object p4, p1, Lr07;->b:Ljava/lang/Object;

    .line 567
    :cond_4
    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_3

    .line 568
    :cond_5
    iget-object p0, p1, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz p0, :cond_6

    invoke-virtual {p3, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 569
    :cond_6
    :goto_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/et1;Lyads/j71;Lyads/tt;Ljava/lang/Object;)Lj59;
    .locals 3

    .line 570
    iget-object p3, p0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 571
    invoke-virtual {p3}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    check-cast p3, Lyads/wr1;

    if-eqz p3, :cond_3

    .line 572
    iget-object p2, p2, Lyads/tt;->b:Lyads/fs2;

    .line 573
    invoke-static {p1, p2}, Lyads/f71;->a(Lyads/j71;Lyads/fs2;)Ljava/util/ArrayList;

    move-result-object p1

    .line 574
    iget-object p2, p3, Lyads/e71;->a:Ljava/util/List;

    .line 575
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    .line 576
    iput v0, p3, Lyads/wr1;->s:I

    .line 577
    iget-object v0, p3, Lyads/wr1;->n:Lyads/et1;

    .line 578
    iget-object v0, v0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 579
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    .line 580
    new-instance v1, Lyads/c71;

    .line 581
    iget-object v2, p3, Lyads/e71;->a:Ljava/util/List;

    .line 582
    invoke-direct {v1, v2, p1}, Lyads/c71;-><init>(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 583
    new-instance v2, Lyads/d71;

    invoke-direct {v2, p3, p1}, Lyads/d71;-><init>(Lyads/e71;Ljava/util/ArrayList;)V

    .line 584
    invoke-static {v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 585
    iget-object p1, p3, Lyads/e71;->a:Ljava/util/List;

    .line 586
    invoke-static {p1}, Lyads/du1;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p3, Lyads/e71;->h:Ljava/util/ArrayList;

    .line 587
    invoke-virtual {p3}, Lyads/e71;->e()V

    .line 588
    iget p1, p3, Lyads/wr1;->s:I

    if-ne p1, p2, :cond_0

    .line 589
    iget-object p1, p3, Lyads/wr1;->n:Lyads/et1;

    invoke-virtual {p1, v0}, Lyads/et1;->setCurrentItem$mobileads_externalRelease(I)V

    .line 590
    :cond_0
    iget-object p1, p0, Lyads/et1;->h:Lyads/ct1;

    if-eqz p1, :cond_1

    .line 591
    check-cast p1, Lid;

    invoke-virtual {p1}, Lid;->a()V

    .line 592
    :cond_1
    invoke-virtual {p0}, Lyads/ng6;->h()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 593
    iget-object p2, p0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 594
    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p2

    .line 595
    invoke-virtual {p3, p2}, Lyads/wr1;->e(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 596
    :cond_2
    iget-object p1, p0, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 597
    new-instance p2, Lyads/xr1;

    invoke-direct {p2, p0}, Lyads/xr1;-><init>(Lyads/et1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 598
    :cond_3
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/et1;Z)Lj59;
    .locals 0

    if-eqz p1, :cond_0

    .line 676
    sget-object p1, Lyads/ms4;->a:Lyads/ms4;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lyads/et1;->setOnInterceptTouchEventListener(Lyads/oq4;)V

    .line 677
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Lyads/et1;Lyads/tt;Lyads/ur1;)V
    .locals 2

    .line 678
    iget-object p2, p2, Lyads/ur1;->r:Lyads/j71;

    if-nez p2, :cond_0

    return-void

    .line 679
    :cond_0
    iget-object v0, p1, Lyads/tt;->b:Lyads/fs2;

    .line 680
    new-instance v1, Las9;

    invoke-direct {v1, p0, p2, p1}, Las9;-><init>(Lyads/et1;Lyads/j71;Lyads/tt;)V

    invoke-static {p2, v0, v1}, Lyads/pq;->a(Lyads/j71;Lyads/fs2;Lnl3;)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/et1;Lyads/tt;Lyads/ur1;Lyads/n32;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    invoke-virtual {v2}, Lyads/ng6;->h()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v10

    if-nez v10, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lyads/tt;->a()Lyads/vq0;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lyads/tt;->b()Lyads/fs2;

    move-result-object v12

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iget-object v3, v1, Lyads/cs1;->h:Lyads/s0;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lyads/s0;->a(Landroid/content/Context;)Z

    move-result v13

    new-instance v3, Lyads/x55;

    invoke-virtual {v11}, Lyads/vq0;->u()Lyads/w55;

    move-result-object v4

    invoke-direct {v3, v4}, Lyads/x55;-><init>(Lyads/w55;)V

    invoke-virtual {v2, v3}, Lyads/ng6;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    new-instance v6, Lyads/wr1;

    iget-object v3, v0, Lyads/ur1;->t:Ljava/util/List;

    iget-object v4, v0, Lyads/ur1;->r:Lyads/j71;

    invoke-static {v3, v4, v12}, Lyads/f71;->a(Ljava/util/List;Lyads/j71;Lyads/fs2;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Lyads/cs1;->d:Lws6;

    invoke-interface {v4}, Lws6;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/w41;

    iget-object v7, v1, Lyads/cs1;->c:Lyads/qh2;

    move-object/from16 v8, p4

    move-object v9, v2

    move-object v2, v6

    move-object v6, v5

    move-object v5, v4

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v9}, Lyads/wr1;-><init>(Ljava/util/List;Lyads/tt;Lyads/w41;Landroid/util/SparseArray;Lyads/qh2;Lyads/n32;Lyads/et1;)V

    move-object v5, v6

    move-object v6, v2

    move-object v2, v9

    invoke-virtual {v2}, Lyads/ng6;->j()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v1, v2, v0, v12}, Lyads/cs1;->a(Lyads/et1;Lyads/ur1;Lyads/fs2;)V

    iget-object v3, v2, Lyads/et1;->h:Lyads/ct1;

    if-eqz v3, :cond_1

    check-cast v3, Lid;

    invoke-virtual {v3}, Lid;->a()V

    :cond_1
    invoke-virtual {v11}, Lyads/vq0;->p()Lyads/mq0;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lyads/et1;->setClipToPage$mobileads_externalRelease(Z)V

    iget-object v4, v0, Lyads/ur1;->x:Lyads/as2;

    invoke-virtual {v4, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lyads/tr1;->e:Lyads/tr1;

    const/4 v8, 0x0

    if-ne v4, v7, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v8

    :goto_0
    xor-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lyads/ng6;->setOrientation(I)V

    iget-object v3, v0, Lyads/ur1;->i:Lyads/as2;

    invoke-virtual {v3, v12}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/rr1;

    iput-object v3, v6, Lyads/wr1;->q:Lyads/rr1;

    new-instance v0, Lzr9;

    move-object/from16 v3, p3

    move-object v4, v12

    invoke-direct/range {v0 .. v6}, Lzr9;-><init>(Lyads/cs1;Lyads/et1;Lyads/ur1;Lyads/fs2;Landroid/util/SparseArray;Lyads/wr1;)V

    move-object v7, v3

    move-object v3, v0

    move-object v0, v7

    move-object v7, v6

    move-object v6, v4

    invoke-virtual {v0}, Lyads/ur1;->y()Lyads/yc1;

    move-result-object v4

    const/4 v9, 0x0

    if-eqz v4, :cond_3

    iget-object v4, v4, Lyads/yc1;->c:Lyads/as2;

    if-eqz v4, :cond_3

    invoke-virtual {v4, v6, v3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v9

    :goto_1
    invoke-virtual {v2, v4}, Lyads/et1;->a(Lyads/tp0;)V

    invoke-virtual {v0}, Lyads/ur1;->y()Lyads/yc1;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v4, Lyads/yc1;->d:Lyads/as2;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v6, v3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v9

    :goto_2
    invoke-virtual {v2, v4}, Lyads/et1;->a(Lyads/tp0;)V

    invoke-virtual {v0}, Lyads/ur1;->y()Lyads/yc1;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v4, Lyads/yc1;->f:Lyads/as2;

    if-eqz v4, :cond_5

    invoke-virtual {v4, v6, v3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v4

    goto :goto_3

    :cond_5
    move-object v4, v9

    :goto_3
    invoke-virtual {v2, v4}, Lyads/et1;->a(Lyads/tp0;)V

    invoke-virtual {v0}, Lyads/ur1;->y()Lyads/yc1;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, v4, Lyads/yc1;->a:Lyads/as2;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v6, v3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v4

    goto :goto_4

    :cond_6
    move-object v4, v9

    :goto_4
    invoke-virtual {v2, v4}, Lyads/et1;->a(Lyads/tp0;)V

    iget-object v4, v0, Lyads/ur1;->s:Lyads/af1;

    iget-object v4, v4, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {v4, v6, v3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lyads/et1;->a(Lyads/tp0;)V

    iget-object v4, v0, Lyads/ur1;->s:Lyads/af1;

    iget-object v4, v4, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {v4, v6, v3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lyads/et1;->a(Lyads/tp0;)V

    iget-object v4, v0, Lyads/ur1;->D:Lyads/as2;

    invoke-virtual {v4, v6, v3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lyads/et1;->a(Lyads/tp0;)V

    iget-object v4, v0, Lyads/ur1;->i:Lyads/as2;

    invoke-virtual {v4, v6, v3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lyads/et1;->a(Lyads/tp0;)V

    iget-object v4, v0, Lyads/ur1;->x:Lyads/as2;

    invoke-virtual {v4, v6, v3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v4

    invoke-virtual {v2, v4}, Lyads/et1;->a(Lyads/tp0;)V

    invoke-virtual {v2}, Lyads/ng6;->j()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v4

    new-instance v5, Lyads/bs1;

    invoke-direct {v5, v4, v3, v0}, Lyads/bs1;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lnl3;Lyads/ur1;)V

    invoke-virtual {v2, v5}, Lyads/et1;->a(Lyads/tp0;)V

    iget-object v4, v0, Lyads/ur1;->u:Lyads/ls1;

    instance-of v5, v4, Lyads/is1;

    if-eqz v5, :cond_7

    check-cast v4, Lyads/is1;

    invoke-virtual {v4}, Lyads/is1;->b()Lyads/vp1;

    move-result-object v5

    iget-object v5, v5, Lyads/vp1;->a:Lyads/af1;

    iget-object v5, v5, Lyads/af1;->b:Lyads/as2;

    invoke-virtual {v5, v6, v3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v5

    invoke-virtual {v2, v5}, Lyads/et1;->a(Lyads/tp0;)V

    invoke-virtual {v4}, Lyads/is1;->b()Lyads/vp1;

    move-result-object v4

    iget-object v4, v4, Lyads/vp1;->a:Lyads/af1;

    iget-object v4, v4, Lyads/af1;->a:Lyads/as2;

    invoke-virtual {v4, v6, v3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lyads/et1;->a(Lyads/tp0;)V

    goto :goto_5

    :cond_7
    instance-of v5, v4, Lyads/ks1;

    if-eqz v5, :cond_8

    check-cast v4, Lyads/ks1;

    iget-object v4, v4, Lyads/ks1;->a:Lyads/qq1;

    iget-object v4, v4, Lyads/qq1;->a:Lyads/eu1;

    iget-object v4, v4, Lyads/eu1;->a:Lyads/as2;

    invoke-virtual {v4, v6, v3}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v3

    invoke-virtual {v2, v3}, Lyads/et1;->a(Lyads/tp0;)V

    :cond_8
    :goto_5
    new-instance v3, Lyads/is4;

    invoke-virtual {v7}, Lyads/wr1;->g()Lyads/vr1;

    move-result-object v4

    iget-object v1, v1, Lyads/cs1;->f:Lyads/bt0;

    invoke-direct {v3, v11, v4, v1}, Lyads/is4;-><init>(Lyads/vq0;Lyads/vr1;Lyads/bt0;)V

    invoke-virtual {v2, v3}, Lyads/et1;->setPagerSelectedActionsDispatcher$mobileads_externalRelease(Lyads/is4;)V

    invoke-virtual {v7}, Lyads/wr1;->g()Lyads/vr1;

    move-result-object v2

    new-instance v0, Lyads/vs1;

    move-object/from16 v5, p1

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lyads/vs1;-><init>(Lyads/ur1;Lyads/vr1;Lyads/tt;Landroidx/recyclerview/widget/RecyclerView;Lyads/et1;)V

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, v5

    invoke-virtual {v2, v1}, Lyads/et1;->setChangePageCallbackForLogger$mobileads_externalRelease(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-virtual {v11}, Lyads/vq0;->n()Lyads/bi2;

    move-result-object v1

    const/4 v3, 0x2

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lyads/ur1;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :cond_9
    invoke-virtual {v1, v4}, Lyads/bi2;->a(Ljava/lang/String;)Lyads/ai2;

    move-result-object v5

    instance-of v10, v5, Lyads/ks4;

    if-eqz v10, :cond_a

    check-cast v5, Lyads/ks4;

    goto :goto_6

    :cond_a
    move-object v5, v9

    :goto_6
    new-instance v10, Lyads/l46;

    invoke-direct {v10, v4, v1}, Lyads/l46;-><init>(Ljava/lang/String;Lyads/bi2;)V

    invoke-virtual {v2, v10}, Lyads/et1;->setChangePageCallbackForState$mobileads_externalRelease(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    if-eqz v5, :cond_d

    iget v1, v5, Lyads/ks4;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7}, Lyads/wr1;->g()Lyads/vr1;

    move-result-object v5

    invoke-virtual {v5}, Lv;->size()I

    move-result v5

    iget-boolean v10, v7, Lyads/wr1;->r:Z

    if-eqz v10, :cond_b

    move v10, v3

    goto :goto_7

    :cond_b
    move v10, v8

    :goto_7
    sub-int/2addr v5, v10

    if-ge v1, v5, :cond_c

    move-object v9, v4

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_a

    :cond_d
    iget-object v1, v0, Lyads/ur1;->j:Lyads/as2;

    invoke-virtual {v1, v6}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const/16 v1, 0x1f

    shr-long v9, v4, v1

    const-wide/16 v11, 0x0

    cmp-long v1, v9, v11

    if-eqz v1, :cond_10

    const-wide/16 v14, -0x1

    cmp-long v1, v9, v14

    if-nez v1, :cond_e

    goto :goto_8

    :cond_e
    cmp-long v1, v4, v11

    if-lez v1, :cond_f

    const v1, 0x7fffffff

    goto :goto_9

    :cond_f
    const/high16 v1, -0x80000000

    goto :goto_9

    :cond_10
    :goto_8
    long-to-int v1, v4

    :goto_9
    iget-boolean v4, v7, Lyads/wr1;->r:Z

    if-eqz v4, :cond_11

    move v8, v3

    :cond_11
    add-int/2addr v1, v8

    :goto_a
    invoke-virtual {v2, v1}, Lyads/et1;->setCurrentItem$mobileads_externalRelease(I)V

    :cond_12
    iget-object v1, v0, Lyads/ur1;->A:Lyads/as2;

    new-instance v4, Lj48;

    invoke-direct {v4, v2, v3}, Lj48;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v6, v4}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object v1

    invoke-virtual {v2, v1}, Lyads/et1;->a(Lyads/tp0;)V

    invoke-static/range {p1 .. p3}, Lyads/cs1;->a(Lyads/et1;Lyads/tt;Lyads/ur1;)V

    if-eqz v13, :cond_13

    iget-object v0, v2, Lyads/et1;->j:Lcl4;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/dt1;

    if-eqz v0, :cond_13

    invoke-virtual {v2}, Lyads/ng6;->h()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    :cond_13
    :goto_b
    return-void
.end method

.method public final a(Lyads/et1;Lyads/ur1;Lyads/fs2;)V
    .locals 7

    .line 625
    iget-object v0, p1, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    .line 626
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v0

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    .line 627
    new-instance v3, Lr07;

    invoke-direct {v3}, Lr07;-><init>()V

    .line 628
    iget-object p2, p2, Lyads/ur1;->q:Lyads/as2;

    new-instance v1, Lbs9;

    const/4 v6, 0x0

    move-object v4, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lbs9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p2, p3, v1}, Lyads/as2;->b(Lyads/fs2;Lnl3;)Lyads/tp0;

    return-void
.end method

.method public final a(Lyads/tt;Lyads/et1;Lyads/cq0;Lyads/n32;)V
    .locals 5

    .line 599
    iget-object v0, p0, Lyads/cs1;->g:Lyads/es4;

    .line 600
    iget-object v1, p3, Lyads/cq0;->a:Lyads/ur1;

    .line 601
    iget-object v0, v0, Lyads/es4;->a:Ljava/util/LinkedHashMap;

    .line 602
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object v0, p2, Lyads/et1;->b:Lyads/xh1;

    .line 604
    iget-object v0, v0, Lyads/xh1;->c:Lyads/br0;

    .line 605
    check-cast v0, Lyads/cq0;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_3

    .line 606
    iget-object p3, p2, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 607
    invoke-virtual {p3}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    instance-of v0, p4, Lyads/wr1;

    if-eqz v0, :cond_0

    move-object v1, p4

    check-cast v1, Lyads/wr1;

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 608
    :cond_1
    invoke-virtual {p2}, Lyads/ng6;->h()Landroidx/recyclerview/widget/RecyclerView;

    iget-object p4, p0, Lyads/cs1;->e:Lyads/rt1;

    .line 609
    iget-object v0, p1, Lyads/tt;->a:Lyads/vq0;

    .line 610
    iget-object v0, v0, Lyads/vq0;->O:Lyads/qb1;

    .line 611
    iget-object p4, p4, Lyads/rt1;->a:Landroidx/collection/ArrayMap;

    .line 612
    invoke-virtual {p4, v0}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_2

    .line 613
    iget-object p0, p0, Lyads/cs1;->d:Lws6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/w41;

    .line 614
    invoke-static {p0, p1, p2}, Lyads/tq;->a(Lyads/w41;Lyads/tt;Landroid/view/View;)V

    .line 615
    new-instance p0, Lyads/yr1;

    invoke-direct {p0, p3}, Lyads/yr1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p3, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    .line 616
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    if-eqz v0, :cond_5

    .line 617
    invoke-virtual {p2, v1}, Lyads/et1;->setChangePageCallbackForOffScreenPages$mobileads_externalRelease(Lyads/bt1;)V

    .line 618
    iget-object v2, p2, Lyads/ng6;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 619
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getItemDecorationCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    .line 620
    invoke-virtual {v2, v4}, Landroidx/viewpager2/widget/ViewPager2;->removeItemDecorationAt(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 621
    :cond_4
    invoke-virtual {p2, v1}, Lyads/ng6;->setPageTransformer$mobileads_externalRelease(Lyads/zs1;)V

    .line 622
    :cond_5
    iget-object v1, p0, Lyads/cs1;->b:Lyads/v41;

    invoke-virtual {v1, p1, p2, p3, v0}, Lyads/v41;->a(Lyads/tt;Landroid/view/View;Lyads/br0;Lyads/br0;)V

    .line 623
    iget-object p3, p3, Lyads/cq0;->a:Lyads/ur1;

    .line 624
    invoke-virtual {p0, p2, p1, p3, p4}, Lyads/cs1;->a(Lyads/et1;Lyads/tt;Lyads/ur1;Lyads/n32;)V

    return-void
.end method
