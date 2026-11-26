.class public final Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView;"
    }
.end annotation


# static fields
.field public static final synthetic k:[Lze4;
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

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->k:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00d5

    iput v0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lc63;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment$b;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->h:Landroidx/navigation/NavArgsLazy;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->k:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->presenter:Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;->toolbar:Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->ivBtnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;->rvAll:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Leu1;

    new-instance v0, Ldv7;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;

    move-result-object v1

    invoke-direct {v0, v1}, Ldv7;-><init>(Lbv7;)V

    new-instance v1, Ldw7;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;

    move-result-object v2

    invoke-direct {v1, v2}, Ldw7;-><init>(Lbv7;)V

    new-instance v2, Lna;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;

    move-result-object v3

    invoke-direct {v2, v3}, Lna;-><init>(Lbv7;)V

    new-instance v3, Lv10;

    sget-object v4, Lsu7;->c:Lsu7;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lv10;-><init>(Ldm3;I)V

    const/4 v4, 0x4

    new-array v4, v4, [Lil2;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-direct {p2, v4}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->j:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v0, Lb63;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;

    move-result-object v2

    const-string v5, "onScrollEnd()V"

    const/4 v1, 0x0

    const-class v3, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;

    const-string v4, "onScrollEnd"

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p0, Lew5;

    const/4 p2, 0x5

    invoke-direct {p0, p1, p2, v0}, Lew5;-><init>(Landroidx/recyclerview/widget/RecyclerView;ILll3;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;

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

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc63;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;-><init>(Luf3;Lbm0;Lc63;)V

    return-object v0
.end method

.method public final setToolbarTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;->toolbar:Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutToolbarSimpleTitleBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showData(Ljava/util/List;)V
    .locals 10
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

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->j:Leu1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;->rvAll:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_1
    new-instance v0, Lsw3;

    const/16 v2, 0x10

    invoke-static {v2}, Lpl2;->e(I)I

    move-result v2

    iget-object v3, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->j:Leu1;

    const-class v4, Lpa;

    const/high16 v5, -0x80000000

    if-eqz v3, :cond_2

    iget-object v3, v3, Leu1;->i:Lm8;

    invoke-virtual {v3, v4}, Lm8;->d(Ljava/lang/Class;)I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v6, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->j:Leu1;

    const-class v7, Ltu7;

    if-eqz v6, :cond_3

    iget-object v6, v6, Leu1;->i:Lm8;

    invoke-virtual {v6, v7}, Lm8;->d(Ljava/lang/Class;)I

    move-result v6

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v8, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->j:Leu1;

    if-eqz v8, :cond_4

    iget-object v8, v8, Leu1;->i:Lm8;

    const-class v9, Len1;

    invoke-virtual {v8, v9}, Lm8;->d(Ljava/lang/Class;)I

    move-result v8

    goto :goto_2

    :cond_4
    move v8, v5

    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v3, v6, v8}, [Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lsw3;-><init>(ILjava/util/List;)V

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_5
    new-instance v0, Lgy8;

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->j:Leu1;

    if-eqz v2, :cond_6

    iget-object v2, v2, Leu1;->i:Lm8;

    const-class v3, Len1$a;

    invoke-virtual {v2, v3}, Lm8;->d(Ljava/lang/Class;)I

    move-result v2

    goto :goto_3

    :cond_6
    move v2, v5

    :goto_3
    iget-object v3, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->j:Leu1;

    if-eqz v3, :cond_7

    iget-object v3, v3, Leu1;->i:Lm8;

    const-class v6, Len1$b;

    invoke-virtual {v3, v6}, Lm8;->d(Ljava/lang/Class;)I

    move-result v3

    goto :goto_4

    :cond_7
    move v3, v5

    :goto_4
    iget-object v6, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->j:Leu1;

    if-eqz v6, :cond_8

    iget-object v6, v6, Leu1;->i:Lm8;

    invoke-virtual {v6, v4}, Lm8;->d(Ljava/lang/Class;)I

    move-result v4

    goto :goto_5

    :cond_8
    move v4, v5

    :goto_5
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->j:Leu1;

    if-eqz p0, :cond_9

    iget-object p0, p0, Leu1;->i:Lm8;

    invoke-virtual {p0, v7}, Lm8;->d(Ljava/lang/Class;)I

    move-result v5

    :cond_9
    filled-new-array {v2, v3, v4, v5}, [I

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

.method public final showLoading(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;->rvAll:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentOnlineShopsNewBinding;->viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showOrdBottomSheet(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->i:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsFragment;->i:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    :cond_1
    return-void
.end method
