.class public final Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/statistics/view/StatisticsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/statistics/view/StatisticsView;"
    }
.end annotation


# static fields
.field public static final synthetic q:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final j:I

.field public final k:Lol4;

.field public l:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public m:Led5;

.field public final n:F

.field public final o:I

.field public final p:I

.field public presenter:Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->q:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;-><init>()V

    const v0, 0x7f0d00bc

    iput v0, p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->j:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->k:Lol4;

    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->n:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->o:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->p:I

    return-void
.end method

.method public static q(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;Landroidx/recyclerview/widget/OrientationHelper;)I
    .locals 1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getEnd()I

    move-result p0

    div-int/lit8 p2, p0, 0x2

    :goto_0
    sub-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public final e(Landroid/view/View;)V
    .locals 1

    const/4 p0, 0x1

    const/16 v0, 0xf

    invoke-static {v0, p1, p0}, Loi9;->a(ILandroid/view/View;Z)V

    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->j:I

    return p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->s()Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;->btnBackStatistics:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment$a;-><init>(Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;->btnMonthPrevious:Landroid/widget/ImageView;

    new-instance v0, Lm78;

    invoke-direct {v0, p0}, Lm78;-><init>(Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;->btnMonthNext:Landroid/widget/ImageView;

    new-instance p2, Ln78;

    invoke-direct {p2, p0}, Ln78;-><init>(Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->l:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->s()Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;->rvMonths:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->l:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x0

    const-string v2, "productsLayoutManager"

    if-eqz p2, :cond_1

    new-instance v3, Lbw5;

    new-instance v4, Lp78;

    invoke-direct {v4, p0}, Lp78;-><init>(Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;)V

    invoke-direct {v3, p2, v4}, Lbw5;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lp78;)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->l:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_0

    new-instance v0, Led5;

    new-instance v2, Lzn2;

    invoke-direct {v2, p0, v1}, Lzn2;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v2, p2}, Led5;-><init>(Lzn2;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->m:Led5;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    :cond_0
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v2}, Laa4;->j(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->s()Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;->btnMonthNext:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->t()Led5;

    move-result-object p0

    iget v1, p0, Led5;->v:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Led5;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lld5;

    iget-boolean v2, p0, Lld5;->c:Z

    :goto_0
    if-eqz v2, :cond_1

    const/16 p0, 0x8

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Lq78;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq78;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->n()Lba8;

    move-result-object v2

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v4, Luf3;

    invoke-static {v4, p0, v2, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    invoke-direct {v0, v1, p0}, Lcom/warefly/checkscan/presentation/statistics/presenter/StatisticsPresenter;-><init>(Lq78;Luf3;)V

    return-object v0
.end method

.method public final r(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->s()Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;

    move-result-object v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->l:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_4

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;->rvMonths:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lo78;

    invoke-direct {v3, p0, v1, v2}, Lo78;-><init>(Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->t()Led5;

    move-result-object p0

    iget-object v1, p0, Led5;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lld5;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lld5;->b:Z

    iget v2, p0, Led5;->v:I

    const v3, 0x7f0a077c

    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lld5;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lld5;->b:Z

    invoke-virtual {p0, v2}, Led5;->f(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Led5;->f(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Led5;->v:I

    :cond_2
    invoke-virtual {p0, p1}, Led5;->f(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "#3085ff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iput p1, p0, Led5;->v:I

    :goto_0
    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;->vpStatistics:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void

    :cond_4
    const-string p0, "productsLayoutManager"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final s()Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->q:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->k:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;

    return-object p0
.end method

.method public final showLoadMonth(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->s()Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;->pbMonths:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showMonth(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lld5;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->t()Led5;

    move-result-object v0

    iget-object v1, v0, Led5;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->s()Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;->vpStatistics:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Landroidx/viewpager2/widget/ViewPager2;

    const-string v3, "mRecyclerView"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const-class v4, Landroidx/recyclerview/widget/RecyclerView;

    const-string v5, "mTouchSlop"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    new-instance v4, Lr78;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->t()Led5;

    move-result-object v5

    iget-object v5, v5, Led5;->u:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5}, Lr78;-><init>(Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;->vpStatistics:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lj44;

    add-int/lit8 v3, v2, 0x1

    if-ltz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lj44;-><init>(ILjava/lang/Object;)V

    check-cast v4, Lld5;

    iget-boolean v2, v4, Lld5;->b:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    invoke-static {}, Lu96;->o()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj44;

    iget v1, v1, Lj44;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentCostStatisticsBinding;->vpStatistics:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {p1}, Lqn1;->T(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    :cond_4
    return-void
.end method

.method public final t()Led5;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/statistics/view/StatisticsFragment;->m:Led5;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "monthAdapter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
