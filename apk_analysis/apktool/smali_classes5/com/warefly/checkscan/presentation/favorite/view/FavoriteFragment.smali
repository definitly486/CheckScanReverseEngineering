.class public final Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/favorite/presenter/FavoriteView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/favorite/presenter/FavoriteView;"
    }
.end annotation


# static fields
.field public static final synthetic l:[Lze4;
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

.field public final h:Landroidx/navigation/NavArgsLazy;

.field public i:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

.field public j:Leu1;

.field public k:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->l:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00c4

    iput v0, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lx53;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment$b;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment$b;-><init>(Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->h:Landroidx/navigation/NavArgsLazy;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->o()Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->l:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->presenter:Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onDestroyView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->k:Leu1;

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->j:Leu1;

    invoke-super {p0}, Lfh5;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->n()Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;->toolbar:Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx53;

    iget-boolean v0, v0, Lx53;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f140296

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const v0, 0x7f1402ef

    goto :goto_0

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->ivBtnBack:Landroid/widget/ImageView;

    new-instance p2, Lr53;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lr53;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->n()Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;->btnBackMain:Landroid/widget/TextView;

    new-instance p2, Ls53;

    invoke-direct {p2, p0}, Ls53;-><init>(Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->n()Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;->rvPromocodes:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p2, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lt53;

    invoke-direct {v1, p0}, Lt53;-><init>(Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Leu1;

    new-instance v1, Lbw8;

    invoke-direct {v1, v0}, Lbw8;-><init>(I)V

    new-instance v3, Ldq6;

    new-instance v4, Lu53;

    invoke-direct {v4, p0}, Lu53;-><init>(Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;)V

    new-instance v5, Lo42;

    invoke-direct {v5, p0, v2}, Lo42;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v3, v4, v5}, Ldq6;-><init>(Lbm3;Lnl3;)V

    new-instance v4, Lxv0;

    new-instance v5, Lv53;

    invoke-direct {v5, p0}, Lv53;-><init>(Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;)V

    invoke-direct {v4, v5}, Lxv0;-><init>(Lv53;)V

    const/4 v5, 0x3

    new-array v6, v5, [Lil2;

    aput-object v1, v6, v0

    const/4 v1, 0x1

    aput-object v3, v6, v1

    aput-object v4, v6, v2

    invoke-direct {p2, v6}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->k:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->n()Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;->rvShops:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Leu1;

    new-instance v3, Lbw8;

    invoke-direct {v3, v0}, Lbw8;-><init>(I)V

    new-instance v4, Ldv7;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->o()Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    move-result-object v6

    invoke-direct {v4, v6}, Ldv7;-><init>(Lbv7;)V

    new-instance v6, Ldw7;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->o()Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    move-result-object v7

    invoke-direct {v6, v7}, Ldw7;-><init>(Lbv7;)V

    new-instance v7, Lna;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->o()Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    move-result-object v8

    invoke-direct {v7, v8}, Lna;-><init>(Lbv7;)V

    new-instance v8, Lq86;

    invoke-direct {v8}, Lq86;-><init>()V

    const/4 v9, 0x5

    new-array v9, v9, [Lil2;

    aput-object v3, v9, v0

    aput-object v4, v9, v1

    aput-object v6, v9, v2

    aput-object v7, v9, v5

    const/4 v0, 0x4

    aput-object v8, v9, v0

    invoke-direct {p2, v9}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->j:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->n()Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;->scrollView:Lcom/warefly/checkscan/core/ui/SmartNestedScrollView;

    new-instance p2, Lfw5;

    new-instance v0, Lw53;

    invoke-direct {v0, p0}, Lw53;-><init>(Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;)V

    invoke-direct {p2, v0}, Lfw5;-><init>(Lw53;)V

    invoke-virtual {p1, p2}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment$a;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment$a;-><init>(Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;)V

    const-string p2, "FAVORITE_PROMOCODES_UPDATED"

    invoke-static {p0, p2, p1}, Landroidx/fragment/app/FragmentKt;->setFragmentResultListener(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lbm3;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Luf3;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Lbm0;

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbm0;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx53;

    iget-boolean p0, p0, Lx53;->a:Z

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;-><init>(Luf3;Lbm0;Z)V

    return-object v0
.end method

.method public final setShopsEmpty(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->o()Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->setShopsEmpty(Z)V

    return-void
.end method

.method public final showData(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->j:Leu1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->n()Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;->rvShops:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_1
    new-instance v0, Lgy8;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->j:Leu1;

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_2

    iget-object v2, v2, Leu1;->i:Lm8;

    const-class v4, Len1;

    invoke-virtual {v2, v4}, Lm8;->d(Ljava/lang/Class;)I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->j:Leu1;

    if-eqz p0, :cond_3

    iget-object p0, p0, Leu1;->i:Lm8;

    const-class v3, Lpa;

    invoke-virtual {p0, v3}, Lm8;->d(Ljava/lang/Class;)I

    move-result v3

    :cond_3
    filled-new-array {v2, v3}, [I

    move-result-object p0

    invoke-direct {v0, p0}, Lgy8;-><init>([I)V

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public final showFavouriteStatusChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/warefly/checkscan/presentation/bonuses/behaviors/AddedToFavesDialog;

    invoke-direct {p1, p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/behaviors/AddedToFavesDialog;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :cond_0
    new-instance p1, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;

    invoke-direct {p1, p0, v0}, Lcom/warefly/checkscan/presentation/bonuses/behaviors/RemovedFromFavesDialog;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showNoShops(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->n()Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;->tvNoShops:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx53;

    iget-boolean v1, v1, Lx53;->a:Z

    if-eqz v1, :cond_0

    const v1, 0x7f140295

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const v1, 0x7f1402ee

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->n()Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;->groupNoShops:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->o()Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->getArePromocodesEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_2

    :cond_1
    const/16 p0, 0x8

    :goto_2
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method

.method public final showOrdBottomSheet(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->i:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->i:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showPromocodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcs0;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->k:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showShopsTitle(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->n()Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentFavoriteBinding;->tvShopsTitle:Landroid/widget/TextView;

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
