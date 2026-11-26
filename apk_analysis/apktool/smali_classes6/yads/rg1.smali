.class public final Lyads/rg1;
.super Lyads/oh2;
.source "SourceFile"


# instance fields
.field public final b:Lyads/v41;

.field public final c:Lyads/qh2;

.field public final d:Lws6;

.field public final e:Lyads/rt1;


# direct methods
.method public constructor <init>(Lyads/v41;Lyads/qh2;Lws6;Lyads/rt1;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/oh2;-><init>(Lyads/v41;)V

    iput-object p1, p0, Lyads/rg1;->b:Lyads/v41;

    iput-object p2, p0, Lyads/rg1;->c:Lyads/qh2;

    iput-object p3, p0, Lyads/rg1;->d:Lws6;

    iput-object p4, p0, Lyads/rg1;->e:Lyads/rt1;

    return-void
.end method

.method public static final a(Lyads/cy1;Lyads/j71;Lyads/tt;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 187
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lyads/pg1;

    if-eqz p0, :cond_0

    .line 188
    iget-object p2, p2, Lyads/tt;->b:Lyads/fs2;

    .line 189
    invoke-static {p1, p2}, Lyads/f71;->a(Lyads/j71;Lyads/fs2;)Ljava/util/ArrayList;

    move-result-object p1

    .line 190
    new-instance p2, Lyads/c71;

    .line 191
    iget-object p3, p0, Lyads/e71;->a:Ljava/util/List;

    .line 192
    invoke-direct {p2, p3, p1}, Lyads/c71;-><init>(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 193
    new-instance p3, Lyads/d71;

    invoke-direct {p3, p0, p1}, Lyads/d71;-><init>(Lyads/e71;Ljava/util/ArrayList;)V

    .line 194
    invoke-static {p2}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 195
    iget-object p1, p0, Lyads/e71;->a:Ljava/util/List;

    .line 196
    invoke-static {p1}, Lyads/du1;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lyads/e71;->h:Ljava/util/ArrayList;

    .line 197
    invoke-virtual {p0}, Lyads/e71;->e()V

    .line 198
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/rg1;Lyads/cy1;Lyads/tt;Lyads/og1;Ljava/lang/Object;)Lj59;
    .locals 0

    .line 183
    invoke-virtual {p0, p1, p2, p3}, Lyads/rg1;->b(Lyads/cy1;Lyads/tt;Lyads/og1;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Lyads/cy1;Lyads/tt;Lyads/og1;)V
    .locals 2

    .line 184
    iget-object p2, p2, Lyads/og1;->s:Lyads/j71;

    if-nez p2, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p1, Lyads/tt;->b:Lyads/fs2;

    .line 186
    new-instance v1, Lw7a;

    invoke-direct {v1, p0, p2, p1}, Lw7a;-><init>(Lyads/cy1;Lyads/j71;Lyads/tt;)V

    invoke-static {p2, v0, v1}, Lyads/pq;->a(Lyads/j71;Lyads/fs2;Lnl3;)V

    return-void
.end method


# virtual methods
.method public final a(Lyads/cy1;Lyads/tt;Lyads/og1;Lyads/n32;)V
    .locals 10

    iget-object v0, p2, Lyads/tt;->b:Lyads/fs2;

    new-instance v1, Lbs9;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lbs9;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object p0, v5

    iget-object p1, p0, Lyads/og1;->x:Lyads/as2;

    invoke-virtual {p1, v0, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    iget-object p2, v3, Lyads/cy1;->b:Lyads/xh1;

    invoke-interface {p2, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p1, p0, Lyads/og1;->D:Lyads/as2;

    invoke-virtual {p1, v0, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    iget-object p2, v3, Lyads/cy1;->b:Lyads/xh1;

    invoke-interface {p2, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p1, p0, Lyads/og1;->C:Lyads/as2;

    invoke-virtual {p1, v0, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    iget-object p2, v3, Lyads/cy1;->b:Lyads/xh1;

    invoke-interface {p2, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p1, p0, Lyads/og1;->t:Lyads/as2;

    invoke-virtual {p1, v0, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    iget-object p2, v3, Lyads/cy1;->b:Lyads/xh1;

    invoke-interface {p2, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p1, p0, Lyads/og1;->z:Lyads/as2;

    invoke-virtual {p1, v0, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    iget-object p2, v3, Lyads/cy1;->b:Lyads/xh1;

    invoke-interface {p2, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    iget-object p1, p0, Lyads/og1;->h:Lyads/as2;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v1}, Lyads/as2;->a(Lyads/fs2;Lnl3;)Lyads/tp0;

    move-result-object p1

    iget-object p2, v3, Lyads/cy1;->b:Lyads/xh1;

    invoke-interface {p2, p1}, Lyads/hs2;->a(Lyads/tp0;)V

    :cond_0
    new-instance p1, Lyads/x55;

    iget-object p2, v4, Lyads/tt;->a:Lyads/vq0;

    invoke-virtual {p2}, Lyads/vq0;->u()Lyads/w55;

    move-result-object p2

    invoke-direct {p1, p2}, Lyads/x55;-><init>(Lyads/w55;)V

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 p1, 0x2

    invoke-virtual {v3, p1}, Landroid/view/View;->setOverScrollMode(I)V

    move-object v6, v4

    new-instance v4, Lyads/pg1;

    iget-object p1, p0, Lyads/og1;->u:Ljava/util/List;

    iget-object p2, p0, Lyads/og1;->s:Lyads/j71;

    invoke-static {p1, p2, v0}, Lyads/f71;->a(Ljava/util/List;Lyads/j71;Lyads/fs2;)Ljava/util/List;

    move-result-object v5

    iget-object p1, v2, Lyads/rg1;->d:Lws6;

    invoke-interface {p1}, Lws6;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lyads/w41;

    iget-object v8, v2, Lyads/rg1;->c:Lyads/qh2;

    move-object v9, p4

    invoke-direct/range {v4 .. v9}, Lyads/pg1;-><init>(Ljava/util/List;Lyads/tt;Lyads/w41;Lyads/qh2;Lyads/n32;)V

    move-object p1, v4

    move-object v4, v6

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-static {v3, v4, p0}, Lyads/rg1;->a(Lyads/cy1;Lyads/tt;Lyads/og1;)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-static {v3}, Lyads/oh6;->a(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lyads/qg1;

    invoke-direct {p2, v3, p1}, Lyads/qg1;-><init>(Lyads/cy1;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {v3, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    :goto_0
    invoke-virtual {v2, v3, v4, p0}, Lyads/rg1;->b(Lyads/cy1;Lyads/tt;Lyads/og1;)V

    return-void
.end method

.method public final b(Lyads/cy1;Lyads/tt;Lyads/og1;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1}, Lyads/tt;->b()Lyads/fs2;

    move-result-object v4

    iget-object v5, v2, Lyads/og1;->x:Lyads/as2;

    invoke-virtual {v5, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyads/jg1;

    sget-object v6, Lyads/jg1;->e:Lyads/jg1;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    iget-object v6, v2, Lyads/og1;->D:Lyads/as2;

    invoke-virtual {v6, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    sget-object v9, Lyads/ng1;->f:Lyads/ng1;

    if-ne v6, v9, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v8

    :goto_1
    if-eqz v6, :cond_2

    if-ne v5, v7, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    move v9, v8

    :goto_2
    invoke-virtual {v0, v9}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    if-eqz v6, :cond_3

    if-nez v5, :cond_3

    move v6, v7

    goto :goto_3

    :cond_3
    move v6, v8

    :goto_3
    invoke-virtual {v0, v6}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    iget-object v6, v2, Lyads/og1;->h:Lyads/as2;

    const-wide/16 v9, 0x1

    if-eqz v6, :cond_4

    invoke-virtual {v6, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    goto :goto_4

    :cond_4
    move-wide v11, v9

    :goto_4
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    cmp-long v6, v11, v9

    iget-object v9, v2, Lyads/og1;->t:Lyads/as2;

    if-nez v6, :cond_5

    new-instance v10, Lyads/as4;

    invoke-virtual {v9, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-static {v9, v3}, Lyads/pq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v3

    const/16 v9, 0x3d

    invoke-direct {v10, v3, v8, v5, v9}, Lyads/as4;-><init>(IIII)V

    goto :goto_5

    :cond_5
    new-instance v10, Lyads/as4;

    invoke-virtual {v9, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-static {v9, v3}, Lyads/pq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v9

    iget-object v11, v2, Lyads/og1;->k:Lyads/as2;

    if-nez v11, :cond_6

    iget-object v11, v2, Lyads/og1;->t:Lyads/as2;

    :cond_6
    invoke-virtual {v11, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-static {v11, v3}, Lyads/pq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    move-result v3

    const/16 v11, 0x39

    invoke-direct {v10, v9, v3, v5, v11}, Lyads/as4;-><init>(IIII)V

    :goto_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v3

    sub-int/2addr v3, v7

    :goto_6
    const/4 v9, -0x1

    if-ge v9, v3, :cond_7

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v3, v2, Lyads/og1;->C:Lyads/as2;

    invoke-virtual {v3, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/lg1;

    invoke-virtual {v0, v3}, Lyads/cy1;->setScrollMode(Lyads/lg1;)V

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_9

    if-eq v9, v7, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Lyads/cy1;->h()Lyads/js4;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_8

    :cond_9
    iget-object v9, v2, Lyads/og1;->t:Lyads/as2;

    invoke-virtual {v9, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v9, v11}, Lyads/pq;->a(Ljava/lang/Long;Landroid/util/DisplayMetrics;)I

    invoke-virtual {v0}, Lyads/cy1;->h()Lyads/js4;

    move-result-object v9

    if-eqz v9, :cond_a

    goto :goto_7

    :cond_a
    new-instance v9, Lyads/js4;

    invoke-direct {v9}, Lyads/js4;-><init>()V

    invoke-virtual {v0, v9}, Lyads/cy1;->setPagerSnapStartHelper(Lyads/js4;)V

    :goto_7
    invoke-virtual {v9, v0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_b
    :goto_8
    if-nez v6, :cond_c

    new-instance v6, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;

    invoke-direct {v6, v1, v0, v2, v5}, Landroidx/recyclerview/widget/AdsDivLinearLayoutManager;-><init>(Lyads/tt;Lyads/cy1;Lyads/og1;I)V

    goto :goto_9

    :cond_c
    new-instance v6, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;

    invoke-direct {v6, v1, v0, v2, v5}, Lcom/monetization/ads/core/divkit/AdsDivGridLayoutManager;-><init>(Lyads/tt;Lyads/cy1;Lyads/og1;I)V

    :goto_9
    invoke-interface {v6}, Lyads/tg1;->f()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lyads/cy1;->setScrollInterceptionAngle(F)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->clearOnScrollListeners()V

    invoke-virtual {v1}, Lyads/tt;->a()Lyads/vq0;

    move-result-object v9

    invoke-virtual {v9}, Lyads/vq0;->n()Lyads/bi2;

    move-result-object v9

    if-eqz v9, :cond_1b

    invoke-virtual {v2}, Lyads/og1;->a()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    :cond_d
    invoke-virtual {v9, v11}, Lyads/bi2;->a(Ljava/lang/String;)Lyads/ai2;

    move-result-object v12

    instance-of v13, v12, Lyads/e23;

    if-eqz v13, :cond_e

    check-cast v12, Lyads/e23;

    goto :goto_a

    :cond_e
    move-object v12, v10

    :goto_a
    if-eqz v12, :cond_f

    iget v13, v12, Lyads/e23;->a:I

    goto :goto_c

    :cond_f
    iget-object v13, v2, Lyads/og1;->l:Lyads/as2;

    invoke-virtual {v13, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    const/16 v15, 0x1f

    shr-long v15, v13, v15

    const-wide/16 v17, 0x0

    cmp-long v19, v15, v17

    if-eqz v19, :cond_12

    const-wide/16 v19, -0x1

    cmp-long v15, v15, v19

    if-nez v15, :cond_10

    goto :goto_b

    :cond_10
    cmp-long v13, v13, v17

    if-lez v13, :cond_11

    const v13, 0x7fffffff

    goto :goto_c

    :cond_11
    const/high16 v13, -0x80000000

    goto :goto_c

    :cond_12
    :goto_b
    long-to-int v13, v13

    :goto_c
    if-eqz v12, :cond_13

    iget v8, v12, Lyads/e23;->b:I

    goto :goto_d

    :cond_13
    if-eqz v13, :cond_14

    goto :goto_d

    :cond_14
    if-nez v5, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v8

    goto :goto_d

    :cond_15
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    :goto_d
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_17

    if-ne v3, v7, :cond_16

    sget-object v3, Lyads/id5;->b:Lyads/id5;

    goto :goto_e

    :cond_16
    invoke-static {}, Lme0;->e()V

    return-void

    :cond_17
    sget-object v3, Lyads/id5;->c:Lyads/id5;

    :goto_e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    instance-of v7, v5, Lyads/tg1;

    if-eqz v7, :cond_18

    check-cast v5, Lyads/tg1;

    goto :goto_f

    :cond_18
    move-object v5, v10

    :goto_f
    if-nez v5, :cond_19

    goto :goto_10

    :cond_19
    if-nez v8, :cond_1a

    if-nez v13, :cond_1a

    invoke-interface {v5, v13, v3}, Lyads/tg1;->a(ILyads/id5;)V

    goto :goto_10

    :cond_1a
    invoke-interface {v5, v13, v8, v3}, Lyads/tg1;->a(IILyads/id5;)V

    :goto_10
    new-instance v3, Lyads/m46;

    invoke-direct {v3, v11, v9, v6}, Lyads/m46;-><init>(Ljava/lang/String;Lyads/bi2;Lyads/tg1;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_1b
    new-instance v3, Lyads/ah1;

    invoke-direct {v3, v1, v0, v6, v2}, Lyads/ah1;-><init>(Lyads/tt;Lyads/cy1;Lyads/tg1;Lyads/og1;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v1, v2, Lyads/og1;->z:Lyads/as2;

    invoke-virtual {v1, v4}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v10, Lyads/ms4;->a:Lyads/ms4;

    :cond_1c
    invoke-virtual {v0, v10}, Lyads/cy1;->setOnInterceptTouchEventListener(Lyads/oq4;)V

    return-void
.end method
