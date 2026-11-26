.class public final Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;"
    }
.end annotation


# static fields
.field public static final q:Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$a;

.field public static final synthetic r:[Lze4;
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

.field public h:Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;

.field public i:Leu1;

.field public j:Leu1;

.field public k:Leu1;

.field public final l:Lzm5;

.field public m:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

.field public n:Lt44;

.field public final o:Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$f;

.field public final p:Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$g;

.field public presenter:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->r:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->q:Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00b5

    iput v0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->g:Lol4;

    new-instance v0, Lzm5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->l:Lzm5;

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$f;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$f;-><init>(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->o:Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$f;

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$g;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$g;-><init>(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->p:Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$g;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->o()Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->r:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->presenter:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->rvChequeItems:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Leu1;

    new-instance v0, Lj81;

    new-instance v3, Lne1;

    invoke-direct {v3, p0, v2}, Lne1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v3}, Lj81;-><init>(Lne1;)V

    new-instance v3, Lth6;

    new-instance v4, Lq61;

    invoke-direct {v4, p0, v1}, Lq61;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v3, v4}, Lth6;-><init>(Lq61;)V

    new-instance v4, Liw0;

    sget-object v5, Lpa4;->c:Lpa4;

    invoke-direct {v4, v5, v1}, Liw0;-><init>(Ldm3;I)V

    const/4 v5, 0x3

    new-array v5, v5, [Lil2;

    aput-object v0, v5, v2

    aput-object v3, v5, v1

    const/4 v0, 0x2

    aput-object v4, v5, v0

    invoke-direct {p2, v5}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->i:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->btnShare:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Llb7;

    new-instance v4, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$c;

    invoke-direct {v4, p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$c;-><init>(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;)V

    invoke-direct {v3, v4}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$d;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$d;-><init>(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;)V

    invoke-direct {p2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->rvOperations:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Lfy8;

    const/16 v3, 0x18

    invoke-direct {p2, v3, v2}, Lfy8;-><init>(IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance p2, Leu1;

    new-instance v4, Lme1;

    sget-object v5, Lle1;->c:Lle1;

    invoke-direct {v4, v5}, Lvd9;-><init>(Ldm3;)V

    new-instance v5, Lty5;

    const v6, 0x7f0d012c

    const v7, 0x7f0d012d

    invoke-direct {v5, v6, v7, v3}, Lty5;-><init>(III)V

    new-array v0, v0, [Lil2;

    aput-object v4, v0, v2

    aput-object v5, v0, v1

    invoke-direct {p2, v0}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->j:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->rvCoupons:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance p2, Leu1;

    new-instance v0, Lk42;

    new-instance v3, Loe1;

    invoke-direct {v3, p0}, Loe1;-><init>(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;)V

    invoke-direct {v0, v3}, Lk42;-><init>(Loe1;)V

    new-array v3, v1, [Lil2;

    aput-object v0, v3, v2

    invoke-direct {p2, v3}, Leu1;-><init>([Lil2;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->k:Leu1;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->rvBanners:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;

    new-instance p2, Lt44;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->o()Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    move-result-object v0

    invoke-direct {p2, v0}, Lt44;-><init>(Lt44$b;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n:Lt44;

    new-instance v0, Lrw3;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v1, v2}, Lrw3;-><init>(III)V

    invoke-virtual {p1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->o:Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$f;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->p:Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$g;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance p1, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$b;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$b;-><init>(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;)V

    const-string p2, "CHEQUE_INFO_SUCCESS"

    invoke-static {p0, p2, p1}, Landroidx/fragment/app/FragmentKt;->setFragmentResultListener(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lbm3;)V

    return-void
.end method

.method public final openChequeInfoFormDialog(ILjava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->h:Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;->d:Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;

    invoke-direct {v0}, Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lb36;

    const-string v2, "ID_KEY"

    invoke-direct {v1, v2, p1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lb36;

    const-string v2, "PHONE_KEY"

    invoke-direct {p1, v2, p2}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, p1}, [Lb36;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Lb36;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->h:Lcom/warefly/checkscan/presentation/chequePage/form/view/ChequeInfoFormDialog;

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;
    .locals 8

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

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

    const-class v3, Lxd1;

    invoke-static {v3, v2, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxd1;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v3

    const-class v5, Lkz5;

    invoke-static {v5, v3, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkz5;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "CHEQUE_ID_KEY"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "CHEQUE_JSON_KEY"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v7, Lbm0;

    invoke-static {v7, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbm0;

    move v4, v5

    move-object v5, v6

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;-><init>(Luf3;Lxd1;Lkz5;ILjava/lang/String;Lbm0;)V

    return-object v0
.end method

.method public final scrollNextSpecials(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->rvBanners:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;->smoothScrollToPosition(I)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public final showAdInfoDialog(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->m:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->m:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showBanners(Lxv7;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->rvBanners:Lcom/warefly/checkscan/core/ui/infinityScrolling/HorizontalCarouselRecyclerViewNew;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n:Lt44;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lxv7;->a:Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showCards(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x89

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showCoupons(Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method

.method public final showCategoryTutorial()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/view/TutorialAboutCategoriesDialog;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/view/TutorialAboutCategoriesDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public final showChequeAlert(Lkd1;)V
    .locals 0

    return-void
.end method

.method public final showChequeInfo(Lhd1;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->tvShopName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lhd1;->h()Llu7;

    move-result-object v2

    invoke-virtual {v2}, Llu7;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->tvToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lhd1;->f()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lpb2;->a:Lpb2;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    sget-object v3, Lpb2;->a:Lpb2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lpb2;->f(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lpb2;->i(Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    sget-object v3, Lpb2;->f:Lfh8;

    invoke-virtual {v3}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    const-string v3, ""

    :cond_2
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->tvSum:Landroid/widget/TextView;

    invoke-virtual {p1}, Lhd1;->i()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f1404d8

    invoke-virtual {p0, v3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lhd1;->g()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lhd1;->g()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->layoutQrInfo:Lcom/warefly/checkscan/databinding/LayoutQrInfoBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->ivQr:Landroid/widget/ImageView;

    const/16 v2, 0x12c

    invoke-static {v2, p0}, Lfv6;->a(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Lwu6;->a:Lwu6;

    invoke-static {v0, p0}, Lwu6;->b(Lwu6;Ljava/lang/String;)Lwu6$a;

    move-result-object p0

    iget-object v0, v1, Lcom/warefly/checkscan/databinding/LayoutQrInfoBinding;->tvFn:Landroid/widget/TextView;

    iget-object v2, p0, Lwu6$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/warefly/checkscan/databinding/LayoutQrInfoBinding;->tvFpd:Landroid/widget/TextView;

    iget-object v2, p0, Lwu6$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/warefly/checkscan/databinding/LayoutQrInfoBinding;->tvFd:Landroid/widget/TextView;

    iget-object p0, p0, Lwu6$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v1, Lcom/warefly/checkscan/databinding/LayoutQrInfoBinding;->layoutInn:Lcom/warefly/checkscan/databinding/LayoutQrInfoInternetBinding;

    invoke-virtual {p1}, Lhd1;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/warefly/checkscan/databinding/LayoutQrInfoInternetBinding;->tvINN:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p1}, Lhd1;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutQrInfoInternetBinding;->tvLegalFace:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public final showChequeOperations(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    if-ne p1, v1, :cond_1

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->rvOperations:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->j:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->rvOperations:Landroidx/recyclerview/widget/RecyclerView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showChequeProducts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lra4;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->i:Leu1;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final showCouldntGetCategoriesOfCheque()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f1400f5

    invoke-static {v0, p0}, Loz1;->g(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showCouldntLoadCheque(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->viewFailedLoading:Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->btnTryAgain:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$e;

    invoke-direct {v2, p0, v0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment$e;-><init>(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/LayoutTryAgainBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showCoupons(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    move-result-object v0

    if-eqz p1, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->layoutCoupons:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->rvCoupons:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v1

    float-to-int p2, p2

    invoke-static {p2}, Lpl2;->o(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->k:Leu1;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Leu1;->submitList(Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->layoutCoupons:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showEmptyCards(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->showCouldntLoadCheque(Z)V

    return-void
.end method

.method public final showEmptyCardsError(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->showCouldntLoadCheque(Z)V

    return-void
.end method

.method public final showEmptyCardsProgress(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->showLoadingCheque(Z)V

    return-void
.end method

.method public final showLoadingCheque(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->pbLoading:Landroid/widget/ProgressBar;

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

.method public final showLoadingContent(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

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

.method public final showLoadingProducts(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->pbItemsLoading:Landroid/widget/ProgressBar;

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

.method public final showNoProductsInCheque()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f1400ff

    invoke-static {v0, p0}, Loz1;->g(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showPageOfCardsProgress(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->showRefreshCardsProgress(Z)V

    return-void
.end method

.method public final showProductCategoryReported(Z)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const p1, 0x7f1400f4

    goto :goto_0

    :cond_0
    const p1, 0x7f1400f3

    :goto_0
    invoke-static {p1, p0}, Loz1;->g(ILandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final showReasonRejectCashback(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->layoutInfoRejectCashback:Lcom/warefly/checkscan/databinding/ItemInfoRejectCashbackBinding;

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/ItemInfoRejectCashbackBinding;->tvInfo:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/ItemInfoRejectCashbackBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showRefreshCardsProgress(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->showRefreshCardsProgress(Z)V

    return-void
.end method

.method public final showShareCheque(Lhd1;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/view/ShareChequeDialog;-><init>(Landroid/content/Context;Lhd1;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public final showUpdateToAccessMessage()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->l:Lzm5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lzm5;->b:Ljava/lang/Object;

    check-cast v1, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/warefly/checkscan/presentation/bonuses/behaviors/NewFeatureDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lzm5;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showWaitLayout(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChequePageBinding;->incldWaitScreen:Lcom/warefly/checkscan/databinding/WaitLayoutBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/WaitLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/WaitLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/WaitLayoutBinding;->ivWaitPlaceholder:Landroid/widget/ImageView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f08009a

    invoke-static {p1, v0, p0}, Lpm;->b(Landroid/content/Context;ILandroid/widget/ImageView;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/WaitLayoutBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
