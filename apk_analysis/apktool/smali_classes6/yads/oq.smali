.class public abstract Lyads/oq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/qg6;

.field public final b:Lyads/gq;

.field public final c:Lyads/ld5;

.field public final d:Lyads/a93;

.field public final e:Lyads/pg6;

.field public f:Lyads/og6;

.field public final g:Landroidx/collection/ArrayMap;

.field public final h:Landroidx/collection/ArrayMap;

.field public final i:Ljava/lang/String;

.field public final j:Lyads/e62;

.field public final k:Lyads/eq;

.field public l:Z

.field public m:Lyads/lq;

.field public n:Z


# direct methods
.method public constructor <init>(Lyads/qg6;Lyads/m62;Lyads/nq;Lyads/a93;Lyads/pu5;Lyads/e62;Lyads/e62;Lyads/z52;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lyads/oq;->g:Landroidx/collection/ArrayMap;

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lyads/oq;->h:Landroidx/collection/ArrayMap;

    new-instance v0, Lyads/eq;

    move-object v1, p0

    check-cast v1, Lyads/a62;

    invoke-direct {v0, v1}, Lyads/eq;-><init>(Lyads/a62;)V

    iput-object v0, p0, Lyads/oq;->k:Lyads/eq;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/oq;->l:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lyads/oq;->m:Lyads/lq;

    iput-boolean v0, p0, Lyads/oq;->n:Z

    iput-object p1, p0, Lyads/oq;->a:Lyads/qg6;

    iput-object p4, p0, Lyads/oq;->d:Lyads/a93;

    iput-object p7, p0, Lyads/oq;->j:Lyads/e62;

    new-instance p4, Lyads/hq;

    invoke-direct {p4, v1}, Lyads/hq;-><init>(Lyads/a62;)V

    const-string p7, "DIV2.TAB_ITEM_VIEW"

    iput-object p7, p0, Lyads/oq;->i:Ljava/lang/String;

    iget p7, p3, Lyads/nq;->a:I

    invoke-virtual {p2, p7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "] doesn\'t exist"

    const-string v5, "View with id ["

    if-eqz v3, :cond_3

    check-cast v3, Lyads/gq;

    iput-object v3, p0, Lyads/oq;->b:Lyads/gq;

    invoke-interface {v3, p4}, Lyads/gq;->setHost(Lyads/fq;)V

    iget-object p4, p5, Lyads/pu5;->a:Lyads/cf2;

    invoke-interface {v3, p4}, Lyads/gq;->setTypefaceProvider(Lyads/cf2;)V

    const-string p4, "DIV2.TAB_HEADER_VIEW"

    invoke-interface {v3, p1, p4}, Lyads/gq;->setViewPool(Lyads/qg6;Ljava/lang/String;)V

    iget p1, p3, Lyads/nq;->b:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_2

    check-cast p4, Lyads/ld5;

    iput-object p4, p0, Lyads/oq;->c:Lyads/ld5;

    invoke-virtual {p4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    invoke-static {p4, p1}, Landroidx/core/view/ViewCompat;->setLayoutDirection(Landroid/view/View;I)V

    invoke-virtual {p4, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    invoke-virtual {p4}, Lyads/pb5;->clearOnPageChangeListeners()V

    new-instance p1, Lyads/mq;

    invoke-direct {p1, v1}, Lyads/mq;-><init>(Lyads/a62;)V

    invoke-virtual {p4, p1}, Lyads/pb5;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    check-cast v3, Lyads/uu5;

    iget-object p1, v3, Lyads/nr;->C:Lyads/lr;

    if-nez p1, :cond_0

    new-instance p1, Lyads/lr;

    invoke-direct {p1, v3}, Lyads/lr;-><init>(Lyads/nr;)V

    iput-object p1, v3, Lyads/nr;->C:Lyads/lr;

    :cond_0
    iput v0, p1, Lyads/lr;->c:I

    iput v0, p1, Lyads/lr;->b:I

    invoke-virtual {p4, p1}, Lyads/pb5;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p4, p6}, Lyads/pb5;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p4, p8}, Lyads/pb5;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const/4 p1, 0x1

    invoke-virtual {p4, p1}, Lyads/ld5;->setScrollEnabled(Z)V

    invoke-virtual {p4, v0}, Lyads/ld5;->setEdgeScrollEnabled(Z)V

    new-instance p1, Lyads/jq;

    invoke-direct {p1, v1}, Lyads/jq;-><init>(Lyads/a62;)V

    invoke-virtual {p4, v0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V

    iget p1, p3, Lyads/nq;->c:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_1

    check-cast p3, Lyads/pg6;

    iput-object p3, p0, Lyads/oq;->e:Lyads/pg6;

    invoke-virtual {p0}, Lyads/oq;->b()V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5, v4}, Lki0;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    throw v2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5, v4}, Lki0;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    throw v2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5, v4}, Lki0;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    throw v2
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 162
    iget-object p0, p0, Lyads/oq;->m:Lyads/lq;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 163
    :cond_0
    invoke-interface {p0}, Lyads/lq;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final a(Landroid/view/ViewGroup;III)I
    .locals 8

    iget-object p1, p0, Lyads/oq;->m:Lyads/lq;

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lyads/oq;->e:Lyads/pg6;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Lyads/pg6;->b:I

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-interface {p1}, Lyads/lq;->a()Ljava/util/List;

    move-result-object p1

    if-ltz p4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    :cond_2
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/kq;

    move-object v3, p1

    check-cast v3, Lyads/t02;

    iget-object v4, v3, Lyads/t02;->a:Lyads/t52;

    iget-object v4, v4, Lyads/t52;->a:Lyads/br0;

    invoke-virtual {v4}, Lyads/br0;->a()Lyads/p41;

    move-result-object v4

    invoke-interface {v4}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object v4

    instance-of v5, v4, Lyads/u02;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    iget-object v5, v3, Lyads/t02;->b:Landroid/util/DisplayMetrics;

    iget-object v7, v3, Lyads/t02;->c:Lyads/fs2;

    invoke-static {v4, v5, v7, v6}, Lyads/jf2;->a(Lyads/x02;Landroid/util/DisplayMetrics;Lyads/fs2;Landroid/view/ViewGroup$LayoutParams;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v6

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_2
    add-int/2addr p0, v1

    return p0

    :cond_4
    iget-object v4, p0, Lyads/oq;->h:Landroidx/collection/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/iq;

    if-nez v4, :cond_5

    iget-object v4, p0, Lyads/oq;->a:Lyads/qg6;

    iget-object v5, p0, Lyads/oq;->i:Ljava/lang/String;

    invoke-interface {v4, v5}, Lyads/qg6;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    new-instance v5, Lyads/iq;

    invoke-direct {v5, p0, v4, p1, p4}, Lyads/iq;-><init>(Lyads/oq;Landroid/view/ViewGroup;Lyads/kq;I)V

    iget-object p0, p0, Lyads/oq;->h:Landroidx/collection/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object p0, v4, Lyads/iq;->a:Landroid/view/ViewGroup;

    move-object v5, v4

    move-object v4, p0

    :goto_3
    invoke-virtual {v5}, Lyads/iq;->a()V

    invoke-virtual {v4}, Landroid/view/View;->forceLayout()V

    iget-object p0, v3, Lyads/t02;->a:Lyads/t52;

    iget-object p0, p0, Lyads/t52;->a:Lyads/br0;

    invoke-virtual {p0}, Lyads/br0;->a()Lyads/p41;

    move-result-object p0

    invoke-interface {p0}, Lyads/p41;->getHeight()Lyads/x02;

    move-result-object p0

    iget-object p1, v3, Lyads/t02;->b:Landroid/util/DisplayMetrics;

    iget-object p4, v3, Lyads/t02;->c:Lyads/fs2;

    invoke-static {p0, p1, p4, v6}, Lyads/jf2;->a(Lyads/x02;Landroid/util/DisplayMetrics;Lyads/fs2;Landroid/view/ViewGroup$LayoutParams;)I

    move-result p0

    if-ne p0, v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    :goto_4
    const/high16 p0, 0x40000000    # 2.0f

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {v4, p0, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    goto :goto_2
.end method

.method public final a(Lyads/lq;Lyads/fs2;Lyads/hs2;)V
    .locals 5

    .line 164
    iget-object v0, p0, Lyads/oq;->c:Lyads/ld5;

    invoke-virtual {v0}, Lyads/pb5;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez p1, :cond_0

    move v0, v2

    goto :goto_0

    .line 165
    :cond_0
    invoke-interface {p1}, Lyads/lq;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .line 166
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 167
    :goto_0
    iget-object v3, p0, Lyads/oq;->h:Landroidx/collection/ArrayMap;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 168
    iput-object p1, p0, Lyads/oq;->m:Lyads/lq;

    .line 169
    iget-object v3, p0, Lyads/oq;->c:Lyads/ld5;

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 170
    iput-boolean v1, p0, Lyads/oq;->n:Z

    const/4 v3, 0x0

    .line 171
    :try_start_0
    iget-object v4, p0, Lyads/oq;->k:Lyads/eq;

    invoke-virtual {v4}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iput-boolean v3, p0, Lyads/oq;->n:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    iput-boolean v3, p0, Lyads/oq;->n:Z

    .line 173
    throw p1

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 174
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    .line 175
    :cond_2
    invoke-interface {p1}, Lyads/lq;->a()Ljava/util/List;

    move-result-object p1

    .line 176
    :goto_2
    iget-object v3, p0, Lyads/oq;->b:Lyads/gq;

    invoke-interface {v3, p1, v0, p2, p3}, Lyads/gq;->setData(Ljava/util/List;ILyads/fs2;Lyads/hs2;)V

    .line 177
    iget-object p2, p0, Lyads/oq;->c:Lyads/ld5;

    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p2

    if-nez p2, :cond_3

    .line 178
    iget-object p1, p0, Lyads/oq;->c:Lyads/ld5;

    iget-object p2, p0, Lyads/oq;->k:Lyads/eq;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    goto :goto_3

    .line 179
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    if-eq v0, v2, :cond_6

    .line 180
    iget-object p1, p0, Lyads/oq;->c:Lyads/ld5;

    invoke-virtual {p1, v0}, Lyads/pb5;->setCurrentItem(I)V

    .line 181
    iget-object p1, p0, Lyads/oq;->b:Lyads/gq;

    check-cast p1, Lyads/uu5;

    .line 182
    iget-object p2, p1, Lyads/nr;->b:Lyads/kr;

    if-eqz p2, :cond_4

    .line 183
    iget v2, p2, Lyads/kr;->b:I

    :cond_4
    if-eq v2, v0, :cond_6

    .line 184
    iget-object p1, p1, Lyads/nr;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/kr;

    if-eqz p1, :cond_6

    .line 185
    iget-object p2, p1, Lyads/kr;->c:Lyads/nr;

    if-eqz p2, :cond_5

    .line 186
    invoke-virtual {p2, p1, v1}, Lyads/nr;->b(Lyads/kr;Z)V

    goto :goto_3

    .line 187
    :cond_5
    const-string p0, "Tab not attached to a TabLayout"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    .line 188
    :cond_6
    :goto_3
    sget p1, Lyads/rv3;->a:I

    .line 189
    sget-object p1, Lyads/vj5;->b:[Lyads/vj5;

    .line 190
    iget-object p1, p0, Lyads/oq;->f:Lyads/og6;

    if-eqz p1, :cond_7

    .line 191
    check-cast p1, Lyads/cq;

    .line 192
    iget-object p1, p1, Lyads/cq;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 193
    :cond_7
    iget-object p0, p0, Lyads/oq;->e:Lyads/pg6;

    if-eqz p0, :cond_8

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_8
    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lyads/oq;->e:Lyads/pg6;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lyads/oq;->a:Lyads/qg6;

    iget-object v1, p0, Lyads/oq;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lyads/qg6;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lyads/oq;->d:Lyads/a93;

    new-instance v2, Lwo0;

    invoke-direct {v2, p0}, Lwo0;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljv;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Ljv;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v0, v2, v3}, Lyads/a93;->a(Landroid/view/ViewGroup;Lyads/z83;Lyads/y83;)Lyads/og6;

    move-result-object v0

    iput-object v0, p0, Lyads/oq;->f:Lyads/og6;

    iget-object p0, p0, Lyads/oq;->e:Lyads/pg6;

    invoke-virtual {p0, v0}, Lyads/pg6;->setHeightCalculator(Lyads/og6;)V

    return-void
.end method
