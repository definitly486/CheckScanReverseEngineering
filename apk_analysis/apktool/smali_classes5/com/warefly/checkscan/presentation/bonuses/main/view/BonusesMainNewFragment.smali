.class public final Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewView;"
    }
.end annotation


# static fields
.field public static final synthetic v:[Lze4;
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

.field public final h:Lfh8;

.field public final i:Lfh8;

.field public final j:Lfh8;

.field public final k:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$k;

.field public final l:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$a;

.field public final m:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$l;

.field public n:Lk07;

.field public o:Lk07;

.field public p:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

.field public q:Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;

.field public r:Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;

.field public s:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

.field public t:Li58;

.field public u:Lt58;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->v:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00ac

    iput v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->g:Lol4;

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$c;->f:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$c;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->h:Lfh8;

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$b;->f:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$b;

    invoke-static {v0}, Lnm4;->b(Lll3;)Lfh8;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->i:Lfh8;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$m;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$m;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->j:Lfh8;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$k;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$k;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->k:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$k;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->l:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$a;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$l;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$l;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->m:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$l;

    return-void
.end method


# virtual methods
.method public final changeSearchVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->n()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->j:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/transition/Slide;

    invoke-static {v0, v1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->n()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->includeSearch:Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final dismissLoadingDialog()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->s:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->v:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->presenter:Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onHiddenChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->onHiddenChanged(Z)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->n:Lk07;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lk07;->b(Z)V

    :cond_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o:Lk07;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lk07;->b(Z)V

    :cond_1
    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lfh5;->onResume()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->onResume()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 28

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->n()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->l:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$a;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    new-instance v3, Lzq0;

    invoke-direct {v3, v0}, Lzq0;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Lgw0;

    new-instance v3, Leu1;

    new-instance v7, Lov0;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v8

    invoke-direct {v7, v8}, Lov0;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    new-array v8, v5, [Lil2;

    aput-object v7, v8, v6

    invoke-direct {v3, v8}, Leu1;-><init>([Lil2;)V

    invoke-direct {v2, v3}, Lgw0;-><init>(Leu1;)V

    new-instance v3, Ly61;

    new-instance v7, Leu1;

    new-instance v8, Lb81;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v9

    invoke-direct {v8, v9}, Lb81;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    new-instance v9, Ldw0;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v10

    invoke-direct {v9, v10}, Ldw0;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    const/4 v10, 0x2

    new-array v11, v10, [Lil2;

    aput-object v8, v11, v6

    aput-object v9, v11, v5

    invoke-direct {v7, v11}, Leu1;-><init>([Lil2;)V

    invoke-direct {v3, v7}, Ly61;-><init>(Leu1;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v13

    new-instance v16, Lbk1;

    invoke-direct/range {v16 .. v16}, Lbk1;-><init>()V

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v17

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;->getCurrentSpecialPos()I

    move-result v18

    new-instance v12, Lt58;

    new-instance v7, Lxq0;

    invoke-direct {v7, v0, v6}, Lxq0;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;I)V

    iget-object v14, v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->k:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$k;

    iget-object v15, v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->m:Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$l;

    move-object/from16 v19, v7

    invoke-direct/range {v12 .. v19}, Lt58;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;Lbk1;Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;ILxq0;)V

    iput-object v12, v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->u:Lt58;

    sget-object v7, Lj59;->a:Lj59;

    new-instance v7, Lph1;

    sget-object v8, Lhk7;->c:Lhk7;

    invoke-direct {v7, v8, v5}, Lph1;-><init>(Ldm3;I)V

    new-instance v8, Lnv7;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v9

    invoke-direct {v8, v9}, Lnv7;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    new-instance v9, Lrv7;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v11

    invoke-direct {v9, v11}, Lrv7;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    new-instance v11, Lfw8;

    sget-object v13, Lew8;->c:Lew8;

    invoke-direct {v11, v13}, Lvd9;-><init>(Ldm3;)V

    new-instance v13, Lpw8;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v14

    invoke-direct {v13, v14}, Lpw8;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    new-instance v14, Les3;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v15

    invoke-direct {v14, v15}, Les3;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    new-instance v15, Lvw8;

    move/from16 p1, v4

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v4

    invoke-direct {v15, v4}, Lvw8;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    new-instance v4, Llw8;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v10

    invoke-direct {v4, v10}, Llw8;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    new-instance v10, Lpo0;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v5

    invoke-direct {v10, v5}, Lpo0;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    new-instance v5, Lb7;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v6

    invoke-direct {v5, v6}, Lb7;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    new-instance v6, Lr88;

    move-object/from16 v18, v2

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v2

    invoke-direct {v6, v2}, Lr88;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    new-instance v2, Lmr0;

    move-object/from16 v19, v3

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v3

    invoke-direct {v2, v3}, Lmr0;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    new-instance v3, Luu5;

    move-object/from16 v20, v2

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    move-result-object v2

    invoke-direct {v3, v2}, Luu5;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;)V

    new-instance v2, Liw0;

    move-object/from16 v21, v3

    sget-object v3, Lhw0;->c:Lhw0;

    move-object/from16 v22, v4

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Liw0;-><init>(Ldm3;I)V

    new-instance v3, Ly10;

    sget-object v4, Lh71;->c:Lh71;

    move-object/from16 v23, v2

    const/4 v2, 0x1

    invoke-direct {v3, v4, v2}, Ly10;-><init>(Ldm3;I)V

    new-instance v4, Lhs3;

    sget-object v2, Lgs3;->c:Lgs3;

    invoke-direct {v4, v2}, Lvd9;-><init>(Ldm3;)V

    new-instance v2, Lqk4;

    move-object/from16 v24, v3

    sget-object v3, Lvf6;->c:Lvf6;

    move-object/from16 v25, v4

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lqk4;-><init>(Ldm3;I)V

    new-instance v3, Ln58;

    move/from16 v16, v4

    sget-object v4, Lm58;->c:Lm58;

    invoke-direct {v3, v4}, Lvd9;-><init>(Ldm3;)V

    new-instance v4, Ls20;

    move-object/from16 v26, v2

    sget-object v2, Lsn5;->c:Lsn5;

    move-object/from16 v27, v3

    const/4 v3, 0x2

    invoke-direct {v4, v2, v3}, Ls20;-><init>(Ldm3;I)V

    const/16 v2, 0x16

    new-array v2, v2, [Lil2;

    const/16 v17, 0x0

    aput-object v18, v2, v17

    aput-object v19, v2, v16

    aput-object v12, v2, v3

    aput-object v7, v2, p1

    const/4 v3, 0x4

    aput-object v8, v2, v3

    const/4 v3, 0x5

    aput-object v9, v2, v3

    const/4 v3, 0x6

    aput-object v11, v2, v3

    const/4 v3, 0x7

    aput-object v13, v2, v3

    const/16 v3, 0x8

    aput-object v14, v2, v3

    const/16 v3, 0x9

    aput-object v15, v2, v3

    const/16 v3, 0xa

    aput-object v22, v2, v3

    const/16 v3, 0xb

    aput-object v10, v2, v3

    const/16 v3, 0xc

    aput-object v5, v2, v3

    const/16 v3, 0xd

    aput-object v6, v2, v3

    const/16 v3, 0xe

    aput-object v20, v2, v3

    const/16 v3, 0xf

    aput-object v21, v2, v3

    const/16 v3, 0x10

    aput-object v23, v2, v3

    const/16 v3, 0x11

    aput-object v24, v2, v3

    const/16 v3, 0x12

    aput-object v25, v2, v3

    const/16 v3, 0x13

    aput-object v26, v2, v3

    const/16 v3, 0x14

    aput-object v27, v2, v3

    const/16 v3, 0x15

    aput-object v4, v2, v3

    new-instance v3, Li58;

    invoke-direct {v3, v2}, Li58;-><init>([Lil2;)V

    new-instance v2, Lyq0;

    invoke-direct {v2, v0, v1}, Lyq0;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    iput-object v3, v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->t:Li58;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v1, Lk07;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->n()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$d;

    invoke-direct {v3, v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;)V

    new-instance v4, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$e;

    invoke-direct {v4, v0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$e;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;)V

    const v5, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v2, v3, v4, v5}, Lk07;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lnl3;Lnl3;F)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Lk07;->b(Z)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lk07;->a(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v1, v0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->n:Lk07;

    return-void
.end method

.method public final openCustomTab(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Li72;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final openDeeplink(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->openUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;
    .locals 14

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lwl0;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lwl0;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v0

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v3, Luf3;

    invoke-static {v3, v1, v0, v2}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lzl2;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lzl2;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Ljf6;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Li73;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Li73;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lmo7;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lmo7;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lpp5;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lpp5;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lic8;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lic8;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lkz;

    invoke-static {v1, v0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lkz;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v0, Lk6;

    invoke-static {v0, p0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lk6;

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;

    invoke-direct/range {v3 .. v13}, Lcom/warefly/checkscan/presentation/bonuses/main/presenter/BonusesMainNewPresenter;-><init>(Lwl0;Luf3;Lzl2;Ljf6;Li73;Lk6;Lmo7;Lpp5;Lic8;Lkz;)V

    return-object v3
.end method

.method public final scrollNextSpecials(I)V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->u:Lt58;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lt58;->i:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;->smoothScrollToPosition(I)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method

.method public final setAvatar(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->n()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->includeSearchWithBadges:Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->btnProfile:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->setProfilePic(Ljava/lang/Object;)V

    return-void
.end method

.method public final setBadgeType(Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->n()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->includeSearchWithBadges:Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->btnProfile:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->setBadgeType(Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;)V

    return-void
.end method

.method public final showContent(Ljava/util/List;)V
    .locals 9
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

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->t:Li58;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Li58;->submitList(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->n()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_1
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->h:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->i:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v7

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->t:Li58;

    const/high16 v2, -0x80000000

    if-eqz v0, :cond_2

    iget-object v0, v0, Li58;->i:Lm8;

    const-class v3, Lsv7$a;

    invoke-virtual {v0, v3}, Lm8;->d(Ljava/lang/Class;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->t:Li58;

    if-eqz p0, :cond_3

    iget-object p0, p0, Li58;->i:Lm8;

    const-class v2, Lsv7$b;

    invoke-virtual {p0, v2}, Lm8;->d(Ljava/lang/Class;)I

    move-result v2

    :cond_3
    filled-new-array {v0, v2}, [I

    move-result-object v8

    new-instance v3, Lzr3;

    invoke-direct/range {v3 .. v8}, Lzr3;-><init>(IIII[I)V

    invoke-virtual {p1, v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public final showLoadingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->s:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    invoke-static {v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->s:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    return-void
.end method

.method public final showOrdDialog(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->p:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->p:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showPromocodeErrorBottomSheet(Lm6;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->q:Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p1}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;-><init>(Landroid/content/Context;ZLm6;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->q:Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showPromocodeSuccessBottomSheet(Lq6;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->r:Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    new-instance v1, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p1}, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;-><init>(Landroid/content/Context;ZLq6;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->r:Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeSuccessBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showToolbar(Z)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->n()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->includeSearch:Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->n()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->includeSearchWithBadges:Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->btnSearch:Lcom/google/android/material/card/MaterialCardView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$h;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$h;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->btnProfile:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$i;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$i;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->btnNotifications:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$j;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$j;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->n()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->includeSearchWithBadges:Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->n()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->includeSearch:Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;->btnLocation:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$f;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$f;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$g;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment$g;-><init>(Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p1, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;->etSearch:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showUnreadNotificationsBadge(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->n()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->includeSearchWithBadges:Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->ivBellRedDot:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lpm;->c(Landroid/widget/ImageView;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/main/view/BonusesMainNewFragment;->n()Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->includeSearchWithBadges:Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->ivBellRedDot:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
