.class public final Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageView;"
    }
.end annotation


# static fields
.field public static final o:Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment$a;

.field public static final synthetic p:[Lze4;
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
.field public final f:I

.field public final g:Lol4;

.field public h:Lm86;

.field public i:Ldk8;

.field public j:Ljz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljz7<",
            "Le67;",
            "Lcom/warefly/checkscan/databinding/ItemShopsStatisticsBinding;",
            ">;"
        }
    .end annotation
.end field

.field public k:F

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldk8$a;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/warefly/checkscan/presentation/cheques/view/MoreTagsDialog;

.field public final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldk8$a;",
            ">;"
        }
    .end annotation
.end field

.field public presenter:Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->p:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->o:Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00d9

    iput v0, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->g:Lol4;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->n:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->p:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lm86;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;->categoriesLayout:Lcom/warefly/checkscan/databinding/CategoriesStatisticsLayoutBinding;

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/CategoriesStatisticsLayoutBinding;->categoriesExpensesPieChart:Lcom/hookedonplay/decoviewlib/DecoView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p1, p2}, Lm86;-><init>(Lcom/hookedonplay/decoviewlib/DecoView;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->h:Lm86;

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "SECTION_MONTH"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v2, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v5, "SECTION_FUTURE_MONTH"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v5, Lq78;

    invoke-static {v5, p0, v1, v1}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq78;

    invoke-direct {v2, v3, v4, v0, p0}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/presenter/StatisticsPagePresenter;-><init>(JLjava/lang/Boolean;Lq78;)V

    return-object v2

    :cond_2
    const-string p0, "PageId should be supplied of valid StatisticsSection id"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v1
.end method

.method public final showLoadingStatistics(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;->pbLoadingStatistics:Landroid/widget/ProgressBar;

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

.method public final showStatistics(Lk78;)V
    .locals 27

    move-object/from16 v0, p0

    const/16 v1, 0xa

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_12

    invoke-virtual/range {p1 .. p1}, Lk78;->a()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_12

    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_12

    new-instance v7, Ldk8;

    invoke-direct {v7}, Ldk8;-><init>()V

    iput-object v7, v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->i:Ldk8;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;->categoriesLayout:Lcom/warefly/checkscan/databinding/CategoriesStatisticsLayoutBinding;

    iget-object v7, v7, Lcom/warefly/checkscan/databinding/CategoriesStatisticsLayoutBinding;->rvCategories:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->i:Ldk8;

    const-string v9, "categoriesAdapter"

    if-eqz v8, :cond_11

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-static {v7, v4}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    new-instance v8, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->C(I)V

    invoke-virtual {v8, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->A(I)V

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v7, v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->i:Ldk8;

    if-eqz v7, :cond_10

    new-instance v8, Lvc1;

    const/4 v10, 0x3

    invoke-direct {v8, v0, v10}, Lvc1;-><init>(Ljava/lang/Object;I)V

    iput-object v8, v7, Ldk8;->t:Lvc1;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const-wide/16 v12, 0x0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc81;

    invoke-virtual {v8}, Lc81;->b()J

    move-result-wide v14

    add-long/2addr v12, v14

    invoke-virtual {v8}, Lc81;->b()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    new-instance v15, Lb36;

    invoke-direct {v15, v8, v14}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v6, Lw78;

    invoke-direct {v6, v0}, Lw78;-><init>(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;)V

    new-instance v8, Lx78;

    invoke-direct {v8, v0}, Lx78;-><init>(Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;)V

    new-instance v14, Lr07;

    invoke-direct {v14}, Lr07;-><init>()V

    new-instance v15, Lpn1;

    invoke-direct {v15, v7}, Lpn1;-><init>(Ljava/lang/Iterable;)V

    const-wide/16 v16, 0x0

    new-instance v10, Lt78;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    new-instance v11, Lip7;

    invoke-direct {v11, v15, v10}, Lip7;-><init>(Lpn1;Lt78;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x6

    if-le v7, v10, :cond_3

    const/4 v7, 0x5

    invoke-static {v11, v7}, Ljp7;->j(Lzo7;I)Lzo7;

    move-result-object v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v10}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v3

    move-object/from16 v3, v17

    check-cast v3, Lb36;

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v19

    iget-object v3, v3, Lb36;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v21

    add-long v21, v21, v19

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move/from16 v3, v18

    goto :goto_2

    :cond_2
    move/from16 v18, v3

    iput-object v15, v14, Lr07;->b:Ljava/lang/Object;

    invoke-static {v11, v7}, Ljp7;->p(Lzo7;I)Lzo7;

    move-result-object v3

    new-instance v7, Lb36;

    invoke-direct {v7, v3, v10}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    move/from16 v18, v3

    new-instance v7, Lb36;

    invoke-direct {v7, v11, v5}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    iget-object v3, v7, Lb36;->b:Ljava/lang/Object;

    check-cast v3, Lzo7;

    iget-object v7, v7, Lb36;->c:Ljava/lang/Object;

    check-cast v7, Lzo7;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Lzo7;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lb36;

    iget-object v10, v10, Lb36;->c:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    new-instance v15, Lv78;

    invoke-direct {v15, v6, v10, v11}, Lv78;-><init>(Lw78;J)V

    new-instance v6, Le29;

    invoke-direct {v6, v3, v15}, Le29;-><init>(Lzo7;Lbm3;)V

    iget-object v3, v14, Lr07;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v22

    new-instance v19, Ldk8$a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f1404b0

    invoke-virtual {v3, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f060036

    invoke-static {v3, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v24

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v10, 0x7f0604c2

    invoke-static {v3, v10}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v25

    const/16 v26, 0x1

    const/16 v20, -0x1

    invoke-direct/range {v19 .. v26}, Ldk8$a;-><init>(ILjava/lang/String;JIIZ)V

    move-object/from16 v3, v19

    new-instance v10, Lep7;

    invoke-direct {v10, v3}, Lep7;-><init>(Ldk8$a;)V

    const/4 v3, 0x2

    new-array v3, v3, [Lzo7;

    aput-object v6, v3, v4

    aput-object v10, v3, v18

    new-instance v6, Lxr;

    invoke-direct {v6, v3}, Lxr;-><init>([Ljava/lang/Object;)V

    invoke-static {v6}, Ldp7;->g(Lzo7;)Lnc3;

    move-result-object v6

    :cond_4
    invoke-static {v6}, Ljp7;->q(Lzo7;)Ljava/util/List;

    move-result-object v3

    iget-object v6, v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_5

    new-instance v10, Lu78;

    invoke-direct {v10, v8}, Lu78;-><init>(Lx78;)V

    new-instance v8, Le29;

    invoke-direct {v8, v7, v10}, Le29;-><init>(Lzo7;Lbm3;)V

    invoke-static {v3, v8}, Lnn1;->t(Ljava/util/Collection;Lzo7;)V

    :cond_5
    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;->categoriesLayout:Lcom/warefly/checkscan/databinding/CategoriesStatisticsLayoutBinding;

    iget-object v3, v3, Lcom/warefly/checkscan/databinding/CategoriesStatisticsLayoutBinding;->tvExpensesChart:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v7

    long-to-float v8, v12

    div-float/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const v10, 0x7f1404d8

    invoke-virtual {v7, v10, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->i:Ldk8;

    if-eqz v3, :cond_e

    iget-object v7, v3, Ldk8;->i:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object v3, v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->h:Lm86;

    if-eqz v3, :cond_d

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldk8$a;

    new-instance v9, Lm86$a;

    iget-wide v10, v8, Ldk8$a;->c:J

    long-to-float v10, v10

    iget v8, v8, Ldk8$a;->e:I

    invoke-direct {v9, v10, v8}, Lm86$a;-><init>(FI)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    iget-object v6, v3, Lm86;->a:Lcom/hookedonplay/decoviewlib/DecoView;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    move v10, v9

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lm86$a;

    iget v11, v11, Lm86$a;->a:F

    add-float/2addr v10, v11

    goto :goto_5

    :cond_7
    cmpg-float v8, v10, v9

    if-nez v8, :cond_8

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lm86$a;

    iput v2, v11, Lm86$a;->a:F

    add-float/2addr v10, v2

    goto :goto_6

    :cond_8
    iget-object v8, v3, Lm86;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_a

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v7, v8, v11}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lm86$a;

    new-instance v13, Lpq7$a;

    iget v14, v12, Lm86$a;->b:I

    invoke-direct {v13, v14}, Lpq7$a;-><init>(I)V

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14, v14}, Lpq7$a;->a(FF)V

    iput-boolean v4, v13, Lpq7$a;->g:Z

    const/high16 v14, 0x42180000    # 38.0f

    iput v14, v13, Lpq7$a;->c:F

    iput-boolean v4, v13, Lpq7$a;->f:Z

    new-instance v14, Lpq7;

    invoke-direct {v14, v13}, Lpq7;-><init>(Lpq7$a;)V

    invoke-virtual {v6, v14}, Lcom/hookedonplay/decoviewlib/DecoView;->b(Lpq7;)I

    move-result v13

    iput v13, v12, Lm86$a;->c:I

    goto :goto_7

    :cond_9
    iget-object v11, v3, Lm86;->b:Ljava/util/List;

    check-cast v11, Ljava/util/Collection;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v7, v8, v12}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8, v11}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v3, Lm86;->b:Ljava/util/List;

    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v11, v4

    move v12, v10

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-wide/16 v14, 0x3e8

    if-eqz v13, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v16, v11, 0x1

    if-ltz v11, :cond_b

    check-cast v13, Lm86$a;

    move/from16 v17, v2

    new-instance v2, Lid2$a;

    move-object/from16 v19, v5

    div-float v5, v12, v10

    invoke-direct {v2, v5}, Lid2$a;-><init>(F)V

    iget-object v5, v3, Lm86;->b:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm86$a;

    iget v5, v5, Lm86$a;->c:I

    iput v5, v2, Lid2$a;->c:I

    iput-wide v14, v2, Lid2$a;->b:J

    new-instance v5, Lid2;

    invoke-direct {v5, v2}, Lid2;-><init>(Lid2$a;)V

    invoke-virtual {v6, v5}, Lcom/hookedonplay/decoviewlib/DecoView;->a(Lid2;)V

    iget v2, v13, Lm86$a;->a:F

    sub-float/2addr v12, v2

    move/from16 v11, v16

    move/from16 v2, v17

    move-object/from16 v5, v19

    goto :goto_8

    :cond_b
    move-object/from16 v19, v5

    invoke-static {}, Lu96;->o()V

    throw v19

    :cond_c
    move/from16 v17, v2

    move-object/from16 v19, v5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v5, v3, Lm86;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_9
    if-ge v2, v5, :cond_13

    new-instance v7, Lid2$a;

    invoke-direct {v7, v9}, Lid2$a;-><init>(F)V

    iget-object v8, v3, Lm86;->b:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lm86$a;

    iget v8, v8, Lm86$a;->c:I

    iput v8, v7, Lid2$a;->c:I

    iput-wide v14, v7, Lid2$a;->b:J

    new-instance v8, Lid2;

    invoke-direct {v8, v7}, Lid2;-><init>(Lid2$a;)V

    invoke-virtual {v6, v8}, Lcom/hookedonplay/decoviewlib/DecoView;->a(Lid2;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_d
    move-object/from16 v19, v5

    const-string v0, "categoriesChartHelper"

    invoke-static {v0}, Laa4;->j(Ljava/lang/String;)V

    throw v19

    :cond_e
    move-object/from16 v19, v5

    invoke-static {v9}, Laa4;->j(Ljava/lang/String;)V

    throw v19

    :cond_f
    const-string v0, "Sequence is empty."

    invoke-static {v0}, Lag;->g(Ljava/lang/String;)V

    return-void

    :cond_10
    move-object/from16 v19, v5

    invoke-static {v9}, Laa4;->j(Ljava/lang/String;)V

    throw v19

    :cond_11
    move-object/from16 v19, v5

    invoke-static {v9}, Laa4;->j(Ljava/lang/String;)V

    throw v19

    :cond_12
    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v5

    :cond_13
    if-eqz p1, :cond_19

    invoke-virtual/range {p1 .. p1}, Lk78;->b()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_19

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_a

    :cond_14
    move-object/from16 v2, v19

    :goto_a
    if-eqz v2, :cond_19

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;->rvRetailers:Landroidx/recyclerview/widget/RecyclerView;

    move/from16 v5, v18

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v7, Ljz7;

    sget-object v11, Lgq0;->h:Lgq0;

    new-instance v12, Ls78;

    invoke-direct {v12, v3}, Ls78;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v13, 0x6

    const v8, 0x7f0d024e

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v13}, Ljz7;-><init>(ILjava/util/List;Lrb;Lnl3;Ldm3;I)V

    iput-object v7, v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->j:Ljz7;

    invoke-virtual {v3, v7}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ly78;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-static {v2, v3}, Lqn1;->n0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v5, v4, 0x1

    if-ltz v4, :cond_16

    check-cast v2, Le67;

    invoke-virtual {v2}, Le67;->b()J

    move-result-wide v6

    if-nez v4, :cond_15

    long-to-float v4, v6

    iput v4, v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->k:F

    :cond_15
    long-to-float v4, v6

    mul-float v4, v4, v17

    iget v6, v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->k:F

    div-float/2addr v4, v6

    div-float v4, v4, v17

    const/high16 v6, 0x434b0000    # 203.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v2, Le67;->c:I

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v5

    goto :goto_b

    :cond_16
    invoke-static {}, Lu96;->o()V

    throw v19

    :cond_17
    iget-object v1, v0, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->j:Ljz7;

    if-eqz v1, :cond_18

    invoke-virtual {v1, v3}, Ljz7;->b(Ljava/util/List;)V

    :cond_18
    sget-object v5, Lj59;->a:Lj59;

    goto :goto_c

    :cond_19
    move-object/from16 v5, v19

    :goto_c
    if-nez v5, :cond_1a

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/statistics/sectionStatistics/view/StatisticsPageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentPageStatisticsBinding;->tvShops:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1a
    return-void
.end method
