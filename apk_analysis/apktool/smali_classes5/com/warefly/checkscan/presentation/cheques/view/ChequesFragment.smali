.class public final Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentChequesBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/cheques/view/ChequesView;"
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
.field public final f:I

.field public final g:Lol4;

.field public h:Lth1;

.field public final i:Lcl4;

.field public j:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

.field public k:Ljz7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljz7<",
            "Lu48;",
            "Lcom/warefly/checkscan/databinding/ItemSortChequeBinding;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$b;

.field public m:Lcom/warefly/checkscan/presentation/cheques/exportCheques/dialog/view/LightDatePickerDialog;

.field public n:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;

.field public o:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;

.field public p:Leu1;

.field public presenter:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->q:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00b7

    iput v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->g:Lol4;

    sget-object v0, Lpo4;->SYNCHRONIZED:Lpo4;

    new-instance v1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$n;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$n;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->i:Lcl4;

    new-instance v0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$b;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->l:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$b;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->q:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->presenter:Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->h:Lth1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->k:Ljz7;

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->p:Leu1;

    invoke-super {p0}, Lfh5;->onDestroyView()V

    return-void
.end method

.method public final onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->o()Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->resetMiniBannerWasShown()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lfh5;->onResume()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->o()Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->resetMiniBannerWasShown()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->rvCheques2:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    new-instance v1, Lcw5;

    new-instance v4, Lwh1;

    invoke-direct {v4, p0}, Lwh1;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V

    invoke-direct {v1, v0, v4}, Lcw5;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lll3;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Leu1;

    new-instance v1, Lcb1;

    sget-object v4, Lqd7;->c:Lqd7;

    invoke-direct {v1, v4, v2}, Lcb1;-><init>(Ldm3;I)V

    new-instance v4, Lrd1;

    new-instance v5, Lxh1;

    invoke-direct {v5, p0, v3}, Lxh1;-><init>(Ljava/lang/Object;I)V

    new-instance v6, Lyh1;

    invoke-direct {v6, p0}, Lyh1;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V

    invoke-direct {v4, v5, v6}, Lrd1;-><init>(Lxh1;Lyh1;)V

    const/4 v5, 0x2

    new-array v5, v5, [Lil2;

    aput-object v1, v5, v3

    aput-object v4, v5, v2

    invoke-direct {v0, v5}, Leu1;-><init>([Lil2;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->p:Leu1;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Li16;

    const/16 v1, 0xa

    invoke-static {v1}, Lpl2;->o(I)I

    move-result v1

    invoke-direct {v0, v1}, Li16;-><init>(I)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->layoutYourStatistics:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Ly51;

    invoke-direct {v1, p0, v2}, Ly51;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->btnExportCheques:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lai1;

    invoke-direct {v1, p0, v3}, Lai1;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lth1;

    invoke-direct {p2, p1, p0}, Lth1;-><init>(Landroid/view/View;Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->h:Lth1;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->h:Lth1;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final openDeeplink(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;
    .locals 15

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v0

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Luf3;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lxd1;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lxd1;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lyg1;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lyg1;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lq78;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lq78;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Ld54;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ld54;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Luv2;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Luv2;

    sget-object v0, Lp72;->g:Lba8;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Lfu1;

    invoke-static {v2, v1, v0, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lfu1;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Ljf6;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lzl2;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lzl2;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v0, Lmo7;

    invoke-static {v0, p0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    move-object v14, p0

    check-cast v14, Lmo7;

    new-instance v4, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    invoke-direct/range {v4 .. v14}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;-><init>(Luf3;Lxd1;Lzl2;Lyg1;Lq78;Ld54;Luv2;Lfu1;Ljf6;Lmo7;)V

    return-object v4
.end method

.method public final refreshSorts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lu48;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->k:Ljz7;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljz7;->b(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->rvCheques2:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Lrt;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lrt;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v0, 0x190

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final showAlfaProgressCheques(Ljava/lang/String;Landroid/text/SpannableString;IZ)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->layoutAlfaProgress:Lcom/warefly/checkscan/databinding/ItemChequesProgressAlfaBinding;

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/ItemChequesProgressAlfaBinding;->tvReward:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/warefly/checkscan/databinding/ItemChequesProgressAlfaBinding;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/warefly/checkscan/databinding/ItemChequesProgressAlfaBinding;->pbProgress:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    if-eqz p4, :cond_0

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgress(I)V

    iget-object p1, p0, Lcom/warefly/checkscan/databinding/ItemChequesProgressAlfaBinding;->pbProgress:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const p2, 0x7f0604c0

    invoke-static {p0, p2}, Loz1;->a(Landroidx/viewbinding/ViewBinding;I)I

    move-result p2

    filled-new-array {p2}, [I

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndicatorColor([I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgress(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/ItemChequesProgressAlfaBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showBanner(Lxb0;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->viewPoll:Lcom/warefly/checkscan/databinding/ItemPollBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/databinding/ItemPollBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->viewBanner:Lcom/warefly/checkscan/databinding/BannerLayoutBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/BannerLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/BannerLayoutBinding;->tvDearUser:Landroid/widget/TextView;

    iget-object v2, p1, Lxb0;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/BannerLayoutBinding;->tvYouAdded:Landroid/widget/TextView;

    iget-object v2, p1, Lxb0;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/BannerLayoutBinding;->btnGoToFav:Landroid/widget/TextView;

    iget-object v2, p1, Lxb0;->a:Lxb0$a;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lxb0$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$d;

    invoke-direct {v3, p0, p1}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$d;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;Lxb0;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/BannerLayoutBinding;->btnCloseDear:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$c;

    invoke-direct {v3, p0, p1, v0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$c;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;Lxb0;Lcom/warefly/checkscan/databinding/BannerLayoutBinding;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showBannerIgnored()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->layoutAllBanners:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140110

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showCheques(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->p:Leu1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object p0

    iget-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->groupEmpty:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->layoutCheques:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showChequesDuringOnboarding(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->groupEmpty:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->layoutCheques:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->p:Leu1;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final showChequesLoading(Z)V
    .locals 0

    return-void
.end method

.method public final showCouldntDeleteCheque()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f14064d

    invoke-static {v0, p0}, Loz1;->g(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showCouldntLoadCheques(Z)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const p1, 0x7f14064e

    invoke-static {p1, p0}, Loz1;->g(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showDateRange(Ljava/util/Date;Ljava/util/Date;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x7f030000

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->tvSpentForMonth:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    aget-object p1, p1, p2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f140120

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showDateSortDialog()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->o:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;

    new-instance v2, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$e;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$e;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V

    invoke-direct {v1, v0, v2}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;-><init>(Landroid/content/Context;Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$e;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->o:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/DateSortDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showDeselectDateButton(Z)V
    .locals 0

    return-void
.end method

.method public final showError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f1400b6

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showExpenses(J)V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->tvStatisticsValue:Landroid/widget/TextView;

    const v1, 0x7f14010a

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/text/DecimalFormat;

    invoke-virtual {v1}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    new-instance v2, Ljava/text/DecimalFormat;

    const-string v3, "#,###,###,###.##"

    invoke-direct {v2, v3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    long-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showGoScanFirstReceipt(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->groupEmpty:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->layoutCheques:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showLoadingElectrocheques(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->layoutYourElectricChecks:Landroidx/constraintlayout/widget/ConstraintLayout;

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

.method public final showMiniBanner(Ljava/lang/String;Ljava/lang/String;Lb06;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->incldAdWideBannerWithOrd:Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v4, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$f;

    invoke-direct {v4, p0, p2}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$f;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object p2

    invoke-virtual {p2, p1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object p1

    iget-object p2, v0, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;->ivPicture:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lh37;->L(Landroid/widget/ImageView;)V

    if-eqz p3, :cond_1

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    iget-object p1, p1, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Lzd3;->h(Leightbitlab/com/blurview/BlurView;Landroid/view/ViewGroup;)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p2, p3, Lb06;->b:Z

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/LayoutAdWideBannerWithOrdBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    invoke-virtual {p1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object p1

    new-instance p2, Lsh1;

    invoke-direct {p2, v2, p0, p3}, Lsh1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final showNoChequesForSelectedFilter(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->showGoScanFirstReceipt(Z)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->p:Leu1;

    if-eqz p0, :cond_0

    sget-object p1, Lrd7;->a:Lrd7;

    invoke-static {p1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showOrdAdDialog(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->j:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->j:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showPoll(Lz96;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->viewBanner:Lcom/warefly/checkscan/databinding/BannerLayoutBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/databinding/BannerLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->viewPoll:Lcom/warefly/checkscan/databinding/ItemPollBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/ItemPollBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/ItemPollBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v3, p1, Lz96;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lr07;

    invoke-direct {v1}, Lr07;-><init>()V

    sget-object v3, Lkx2;->b:Lkx2;

    iput-object v3, v1, Lr07;->b:Ljava/lang/Object;

    iget-object v3, p1, Lz96;->d:Ljava/util/List;

    if-eqz v3, :cond_0

    iput-object v3, v1, Lr07;->b:Ljava/lang/Object;

    :cond_0
    iget-object v3, v0, Lcom/warefly/checkscan/databinding/ItemPollBinding;->rvVariants:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v2, v1, Lr07;->b:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Ljava/util/List;

    new-instance v4, Ljz7;

    new-instance v7, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$g;

    invoke-direct {v7, v1, v3, p0, p1}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$g;-><init>(Lr07;Landroidx/recyclerview/widget/RecyclerView;Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;Lz96;)V

    new-instance v9, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$i;

    invoke-direct {v9, p1, v0, p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$i;-><init>(Lz96;Lcom/warefly/checkscan/databinding/ItemPollBinding;Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V

    const v5, 0x7f0d016a

    sget-object v8, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$h;->f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$h;

    invoke-direct/range {v4 .. v9}, Ljz7;-><init>(ILjava/util/List;Lnl3;Lnl3;Ldm3;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v1, Li16;

    const/4 v2, 0x4

    invoke-static {v2}, Lpl2;->o(I)I

    move-result v2

    invoke-direct {v1, v2}, Li16;-><init>(I)V

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/ItemPollBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$j;

    invoke-direct {v3, p1, v0, p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$j;-><init>(Lz96;Lcom/warefly/checkscan/databinding/ItemPollBinding;Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final showSorts(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lu48;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->rvSorts:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v4, Ljz7;

    new-instance v7, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$k;

    invoke-direct {v7, p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$k;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V

    sget-object v8, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$l;->f:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$l;

    iget-object v9, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->l:Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$b;

    const v5, 0x7f0d024f

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Ljz7;-><init>(ILjava/util/List;Lnl3;Lnl3;Ldm3;)V

    iput-object v4, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->k:Ljz7;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final showSumSortDialog()V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;

    new-instance v2, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$m;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$m;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V

    invoke-direct {v1, v0, v2}, Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;-><init>(Landroid/content/Context;Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$m;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n:Lcom/warefly/checkscan/presentation/cheques/view/sortDialogs/view/SumSortDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showUnauthorized()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f1405eb

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final updateChequeQueueCount(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequesBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentChequesBinding;->layoutYouHaveMissed:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-lez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$o;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment$o;-><init>(Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;)V

    invoke-direct {p1, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
