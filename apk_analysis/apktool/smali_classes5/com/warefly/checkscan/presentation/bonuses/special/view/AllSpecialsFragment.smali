.class public final Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsView;"
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

.field public h:Lk07;

.field public i:Leu1;

.field public j:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

.field public presenter:Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->k:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00a6

    iput v0, p0, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->k:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->presenter:Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->h:Lk07;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk07;->b(Z)V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;->rvSpecials:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Leu1;

    new-instance v0, Lk58;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;

    move-result-object v3

    invoke-direct {v0, v3}, Lk58;-><init>(Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;)V

    new-array v1, v1, [Lil2;

    aput-object v0, v1, v2

    invoke-direct {p2, v1}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->i:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p2, Li16;

    const/4 v0, 0x6

    invoke-static {v0}, Lpl2;->e(I)I

    move-result v0

    invoke-direct {p2, v0}, Li16;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;->viewToolbar:Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->tvToolbarTitle:Landroid/widget/TextView;

    const v0, 0x7f1400e6

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutTextToolbarBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lk07;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;->rvSpecials:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;)V

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {p1, p2, v0, v1, v2}, Lk07;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lnl3;Lnl3;F)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p2

    invoke-virtual {p1, p2}, Lk07;->b(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lk07;->a(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->h:Lk07;

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;

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

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v3, Lmo7;

    invoke-static {v3, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmo7;

    invoke-direct {v0, v1, v2, p0}, Lcom/warefly/checkscan/presentation/bonuses/special/presenter/AllSpecialsPresenter;-><init>(Luf3;Lbm0;Lmo7;)V

    return-object v0
.end method

.method public final showAdInfoDialog(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->j:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->j:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showCouldntLoadPage(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;->viewTryAgain:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->tvMessage:Landroid/widget/TextView;

    const v1, 0x7f1404b6

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final showLoadingPage(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->n()Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;->viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentAllSpecialsBinding;->viewTryAgain:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showSpecials(Ljava/util/List;)V
    .locals 0
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

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/special/view/AllSpecialsFragment;->i:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
